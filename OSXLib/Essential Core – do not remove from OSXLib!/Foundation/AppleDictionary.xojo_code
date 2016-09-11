#tag Class
Protected Class AppleDictionary
Inherits Appleobject
	#tag Method, Flags = &h0
		Function AllKeys(anObject as AppleGeneralObject) As AppleArray
		  return AppleArray.MakeFromPtr( allKeysForObject (id, anObject.GeneralID))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function allKeysForObject Lib foundationlibname Selector "allKeysForObject:" (id as ptr, anobject as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getobjectForKey Lib foundationlibname Selector "objectForKey:" (id as ptr, key as CFStringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getobjectForKey Lib foundationlibname Selector "objectForKey:" (id as ptr, key as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getTextForKey Lib foundationlibname Selector "objectForKey:" (id as ptr, key as CFStringref) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getTextForKey Lib foundationlibname Selector "objectForKey:" (id as ptr, key as Ptr) As CFStringRef
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleDictionary
		  return if (aptr <> NIL, new AppleDictionary (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectForKey(akey as cfstringref) As AppleObject
		  return AppleObject.MakeFromPtr (PtrForKey (akey))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectForKey(akey as ptr) As AppleObject
		  return AppleObject.MakeFromPtr (PtrForKey (akey))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PtrForKey(akey as cfstringref) As Ptr
		  return getobjectForKey (id, akey)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PtrForKey(akey as Ptr) As Ptr
		  return getobjectForKey (id, akey)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextForKey(akey as cfstringref) As Text
		  return getTextForKey (id, akey)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextForKey(akey as ptr) As Text
		  return getTextForKey (id, akey)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextkeyForObject(anObject as AppleGeneralObject) As Text
		  return allKeys(anobject).TextAtIndex(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueForKey(Key as CFstringRef) As appleobject
		  return appleobject.MakeFromPtr(FoundationFrameWork.getvalueForKey (id, key))
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function allKeys lib FoundationLibName  Selector "allKeys"(id as ptr) as ptr
			  dim myptr as ptr = allKeys (id)
			  return if (myptr <> NIL, new AppleArray (myptr), NIL)
			  
			End Get
		#tag EndGetter
		Allkeys As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function allValues lib FoundationLibName  Selector "allValues"(id as ptr) as ptr
			  dim myptr as ptr = allValues (id)
			  return if (myptr <> NIL, new AppleArray (myptr), NIL)
			  
			End Get
		#tag EndGetter
		AllValues As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSDictionary")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.getCount(id)
			End Get
		#tag EndGetter
		Count As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function descriptionInStringsFileFormat lib FoundationLibName  selector "descriptionInStringsFileFormat" (id as ptr) as CFStringRef
			  return descriptionInStringsFileFormat (id)
			End Get
		#tag EndGetter
		StringsFileFormat As Text
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
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
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringsFileFormat"
			Group="Behavior"
			Type="Text"
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
End Class
#tag EndClass
