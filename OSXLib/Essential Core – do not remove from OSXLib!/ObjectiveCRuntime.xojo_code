#tag Module
Protected Module ObjectiveCRuntime
	#tag Method, Flags = &h0
		Function BuildTargetClass(superClassName as Text, newClassName as Text, methods() as TargetClassMethodHelper) As ptr
		  #If TargetMacOS
		    dim result as Ptr
		    dim superClassptr as ptr = FoundationFramework.NSClassFromString (superClassName)
		    dim classmethods() as TargetClassMethodHelper
		    result = objc_allocateClassPair(superClassptr, newClassName.ToCString(StandardTextEncoding), 0)
		    
		    for i as Integer = 0 to methods.Ubound
		      dim method as TargetClassMethodHelper = methods(i)
		      dim SEL as Ptr = FoundationFramework.NSSelectorFromString (method.selName)
		      if method.ReplaceMethod then
		        if method.ClassMethod then
		          classmethods.Append method
		        else
		          dim OriginalMethod as ptr = if (method.ClassMethod, ObjectiveCRuntime.class_getClassMethod (result, SEL), ObjectiveCRuntime.class_getInstanceMethod(result, SEL))
		          if OriginalMethod <> NIL then
		            dim oldImplementation as Ptr = ObjectiveCRuntime.method_setImplementation (OriginalMethod, method.impl)
		            if oldImplementation = NIL then
		              MakeException ("no old implementation for method while replacing "+Methods(i).selName)
		            end if
		          end if
		        end if
		        
		      else
		        if not class_addMethod(result,FoundationFramework.NSSelectorFromString(methods(i).selName), methods(i).impl, methods(i).charCode.ToCString(StandardTextEncoding)) then
		          // couldn't add, try to replace
		          if  class_replaceMethod(result,FoundationFramework.NSSelectorFromString(methods(i).selName), methods(i).impl, methods(i).charCode.ToCString(StandardTextEncoding)) = NIL then
		            MakeException ( "unable to add or replace custom class method: "+Methods(i).selName)
		          end if
		        end if
		      end if
		    next
		    objc_registerClassPair(result)
		    
		    dim mymetaclassptr as ptr = ObjectiveCRuntime.objc_getMetaClass (ObjectiveCRuntime.class_getName(result))
		    
		    //Now lets check the classmethods
		    if classmethods.Ubound > -1 then
		      for q as uinteger = 0 to classmethods.Ubound
		        dim method as TargetClassMethodHelper = classmethods (q)
		        dim SEL as Ptr = FoundationFramework.NSSelectorFromString (method.selName)
		        call ObjectiveCRuntime.class_addMethod (mymetaclassptr, SEL, method.impl, method.charCode.ToCString (StandardTextEncoding))
		        // dim OriginalMethod as ptr =  ObjectiveCRuntime.class_getInstanceMethod (mymetaclassptr, SEL)
		        // dim myclassmethod as ptr = ObjectiveCRuntime.class_getMethodImplementation (metaclassptr, sel)
		        
		        // if OriginalMethod <> NIL then
		        // dim oldImplementation as Ptr = ObjectiveCRuntime.method_setImplementation (OriginalMethod, method.impl)
		        // if oldImplementation = NIL then
		        // dim err as new ErrorException
		        // err.Reason = "no old implementation for method while replacing "+classmethods(q).selName
		        // raise err
		        // end if
		        //
		        // end if
		      next
		    end if
		    
		    Return result
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BuildTargetClass(superClassName as Text, newClassName as Text, methods() as TargetClassMethodHelper, Protocols() As Text) As ptr
		  #If TargetMacOS
		    dim result as Ptr = BuildTargetClass (superClassName, newClassName, Methods)
		    for q as uinteger= 0 to Protocols.Ubound
		      if not class_addProtocol (result, FoundationFramework.NSProtocolFromString (Protocols(q))) then
		        MakeException ( "Couldn't add protocol "+Protocols(q)+" to class "+newClassName)
		      end if
		    next
		    Return result
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_addIvar Lib obj_C (aClass as Ptr, name as CString, size as UInteger, Alignment as UInt8, Types as CString) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_addMethod Lib obj_C (aClass as Ptr, Selector as Ptr, Implementation as Ptr, types as cstring) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_addProtocol Lib obj_C (aClass as Ptr, Protocol as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_copyIvarList Lib obj_C (aClass as Ptr, byref OutCount as uint32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_copyMethodList Lib obj_C (aClass as Ptr, byref OutCount as UInt32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_copyPropertyList Lib obj_C (aClass as Ptr, byref OutCount as UInt32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_createInstance Lib obj_C (aClass as Ptr, extrabytes as uinteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getClassMethod Lib obj_C (aClass as Ptr, SEL as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getClassVariable Lib obj_C (aClass as Ptr, aVariable as CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getImageName Lib obj_C (aClass as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getInstanceMethod Lib obj_C (aClass as Ptr, SEL as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getInstanceSize Lib obj_C (aClass as Ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getInstanceVariable Lib obj_C (aClass as Ptr, aVariable as CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getMethodImplementation Lib obj_C (aClass as Ptr, Selector as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getMethodImplementation_stret Lib obj_C (aClass as Ptr, Selector as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getName Lib obj_C (aClass as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getSuperclass Lib obj_C (aClass as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getVersion Lib obj_C (aClass as Ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_isMetaClass Lib obj_C (aClass as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_replaceMethod Lib obj_C (aClass as Ptr, Selector as Ptr, Implementation as Ptr, types as cstring) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_respondsToSelector Lib obj_C (aClass as Ptr, Selector as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub class_setVersion Lib obj_C (aClass as Ptr, version as int32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function ivar_getName Lib obj_C (Ivar as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function ivar_getOffset Lib obj_C (Ivar as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function ivar_getTypeEncoding Lib obj_C (Ivar as Ptr) As CString
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function MakeSuper(extends instance as AppleObject) As ObjectiveCRuntime.objc_super
		  dim superStruct as ObjectiveCRuntime.objc_super
		  superStruct.Instance = instance.Id
		  superStruct.SuperClass = instance.SuperClass.ClassPtr
		  return superStruct
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_copyArgumentType Lib obj_C (aMethod as Ptr, index as uint32) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_copyReturnType Lib obj_C (aMethod as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub method_exchangeImplementations Lib obj_C (aMethod as Ptr, anotherMethod as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_getDescription Lib obj_C (aMethod as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_getImplementation Lib obj_C (aMethod as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_getName Lib obj_C (aMethod as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_getNumberOfArguments Lib obj_C (aMethod as Ptr) As uint32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_getTypeEncoding Lib obj_C (aMethod as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_invoke Lib obj_C (anInstance as Ptr, aMethod as Ptr, Argument as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function method_setImplementation Lib obj_C (aMethod as Ptr, Implementation as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function objc_allocateClassPair Lib obj_C (aClass as Ptr, ClassName as CString, extrabytes as UInteger = 0) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function objc_copyClassList Lib obj_C (byref OutCount as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function objc_copyImageNames Lib obj_C (byref OutCount as UInteger) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function objc_copyProtocolList Lib obj_C (byref OutCount as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub objc_disposeClassPair Lib obj_C (aClass as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function objc_getMetaClass Lib obj_C (ClassName as CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub objc_msgSendSuper Lib obj_C (SuperObject as ObjectiveCRuntime . objc_super, SEL as Ptr, arguments as ptr = nil)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub objc_registerClassPair Lib obj_C (aClass as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function object_copy Lib obj_C (anObject as Ptr, Size as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub object_dispose Lib obj_C (anobject as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function object_getClass Lib obj_C (anObject as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function object_getClassName Lib obj_C (anObject as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub object_setClass Lib obj_C (anObject as Ptr, NewClass as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function property_copyAttributeList Lib obj_C (aProperty as Ptr, byRef OutCount as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function property_copyAttributeValue Lib obj_C (aProperty as Ptr, Attribute as CString) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function property_getAttributes Lib obj_C (aProperty as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function property_getName Lib obj_C (aProperty as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function protocol_conformsToProtocol Lib obj_C (aProtocol as Ptr, anotherProtocol as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function protocol_copyMethodDescriptionList Lib obj_C (Protocol as Ptr, isRequiredMethod as Boolean, isInstanceMethod as Boolean, byref OutCount as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function protocol_copyPropertyList Lib obj_C (aProtocol as Ptr, byref OutCount as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function protocol_getMethodDescription Lib obj_C (Protocol as Ptr, Selector as Ptr, isRequired as Boolean, isInstanceMethod as Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function protocol_getName Lib obj_C (Protocol as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function protocol_getProperty Lib obj_C (aProtocol as Ptr, name as cstring, isRequiredProperty as Boolean, isInstanceProperty as Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function protocol_isEqual Lib obj_C (aProtoCol as Ptr, anotherProtocol as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sel_getName Lib obj_C (Selector as Ptr) As cstring
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sel_getUid Lib obj_C (aSelector as cString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sel_registerName Lib obj_C (Methodname as CString) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function SingleTypeEncoding(anEncoding as CFStringRef) As CFStringRef
		  #If TargetMacOS
		    dim t as text = TranslateTypeEncoding(anEncoding)
		    return t.ReplaceAll ("Object, ", "")
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TranslateTypeEncoding(anEncoding as CFStringRef) As CFStringRef
		  // Well yes, I could work with a dictionary and comparekeys mabe, bit I think it's too much work for a mathod that isn't time-critical.
		  
		  #If TargetMacOS
		    dim mytext as text = anEncoding
		    dim result as text
		    dim nocomma as boolean
		    for q as uinteger = 0 to mytext.Length - 1
		      dim char as text = mytext.Mid (q,1)
		      for each CodeP as uint32 in char.Codepoints
		        nocomma= false
		        if objcTypeDict.HasKey (CodeP) then
		          result = result + objcTypeDict.Value (CodeP)
		          select case CodeP
		          case 91
		            nocomma = true
		          case 93 // ]
		            if result.EndsWith (", ") then result = result.Left (result.Length -2)
		            result = result+ "]"
		          case 123 // {
		            nocomma = true
		            dim nextQuotePos as uinteger = mytext.IndexOf (q+1, "=")
		            if nextQuotePos > -1 then
		              result = result + mytext.mid (q+1, nextQuotePos -1 -q)+" = "
		              q=nextQuotePos
		            end if
		          case 125 // }
		            if result.EndsWith (", }") then
		              result = result.Left (result.Length -3)
		              result = result+ "}"
		            end if
		          case 40 // (
		            nocomma = true
		          case 41 // )
		            if result.EndsWith (", ") then result = result.Left (result.Length -2)
		            result = result+ ")"
		          case 98 // b
		            nocomma = true
		          case 94 // ^
		            nocomma = true
		          case 34 // "
		            dim nextQuotePos as uinteger = mytext.IndexOf (q+1, """")
		            if nextQuotePos > q+1 then
		              result = result + mytext.mid (q+1, nextQuotePos -1 -q)+": "
		              q=nextQuotePos
		              nocomma = true
		            end if
		          end select
		        else
		          // MsgBox codep.ToText
		          result = result + char
		          nocomma = true
		        end if
		        if result.EndsWith ("to") then
		          result = result +" "
		        else
		          if q < mytext.Length -1 and not nocomma then result = result +", "
		        end if
		      next
		    next
		    result = result.Trim
		    if result.EndsWith (",") or result.EndsWith(":") then result = result.Left(result.Length -1)
		    return result
		  #endif
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mObjcPropertyTypeDict As Xojo.core.dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mObjcTypeDict As Xojo.core.dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mObjcTypeDictInversed As Xojo.core.dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mObjcPropertyTypeDict = NIL then
			    mObjcPropertyTypeDict = new xojo.Core.Dictionary
			    mObjcPropertyTypeDict.value (67) = "copy" // C
			    mObjcPropertyTypeDict.value (68) = "@dynamic" // D
			    
			  end if
			  return mObjcPropertyTypeDict
			  
			  
			End Get
		#tag EndGetter
		Protected objcPropertyTypeDict As xojo.Core.Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mObjcTypeDict = NIL then
			    mObjcTypeDict = new xojo.Core.Dictionary
			    mObjcTypeDict.value (99) = "Char"
			    mObjcTypeDict.value (67) = "UChar"
			    mObjcTypeDict.value (105) = "Integer"
			    mObjcTypeDict.value (115) = "Int16"
			    mObjcTypeDict.value (108) = "Int32"
			    mObjcTypeDict.value (113) = "Int64"
			    mObjcTypeDict.value (73) = "UInteger"
			    mObjcTypeDict.value (83) = "UInt16"
			    mObjcTypeDict.value (76) = "UInt32"
			    mObjcTypeDict.value (81) = "UInt64"
			    mObjcTypeDict.value (102) = "Single"
			    mObjcTypeDict.value (100) = "Double"
			    mObjcTypeDict.value (66) = "CBoolean"
			    mObjcTypeDict.value (118) = "void"
			    mObjcTypeDict.value (42) = "CString"
			    mObjcTypeDict.value (64) = "Object"
			    mObjcTypeDict.value (35) = "Class"
			    mObjcTypeDict.value (58) = "SEL"
			    mObjcTypeDict.value (91) = "Array ["
			    mObjcTypeDict.value (93) = "]"
			    mObjcTypeDict.value (123) = "Struct {"
			    mObjcTypeDict.value (125) = "}"
			    mObjcTypeDict.value (40) = "Union ("
			    mObjcTypeDict.value (41) = ")"
			    mObjcTypeDict.value (98) = "Bitfield of"
			    mObjcTypeDict.value (94) = "PTR to"
			    mObjcTypeDict.value (63) = "Unknown (Function ptr)"
			    mObjcTypeDict.value (111) = "Out"
			    mObjcTypeDict.value (114) = "CONST"
			    mObjcTypeDict.value (110) = "In"
			    mObjcTypeDict.value (78) = "In/Out"
			    mObjcTypeDict.value (79) = "ByCopy"
			    mObjcTypeDict.value (82) = "ByRef"
			    mObjcTypeDict.value (86) = "OneWay"
			    mObjcTypeDict.value (34) = "" // Literal
			  end if
			  return mObjcTypeDict
			  
			  
			End Get
		#tag EndGetter
		Protected objcTypeDict As xojo.Core.Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mObjcTypeDictInversed = NIL then
			    mObjcTypeDictInversed = new xojo.Core.Dictionary
			    for each de as xojo.Core.DictionaryEntry in objcTypeDict
			      mObjcTypeDictInversed.Value (de.Value) = de.Key
			    next
			  end if
			  return mObjcTypeDictInversed
			  
			  
			End Get
		#tag EndGetter
		Protected objcTypeDictInversed As xojo.Core.Dictionary
	#tag EndComputedProperty


	#tag Constant, Name = Obj_C, Type = Text, Dynamic = False, Default = \"/usr/lib/libobjc.dylib", Scope = Public
	#tag EndConstant


	#tag Structure, Name = objc_method_description, Flags = &h0
		Selector as Ptr
		Types as Cstring
	#tag EndStructure

	#tag Structure, Name = objc_property_attribute_t, Flags = &h0
		Name as CString
		Value as CString
	#tag EndStructure

	#tag Structure, Name = objc_super, Flags = &h0
		Instance as Ptr
		SuperClass as Ptr
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
