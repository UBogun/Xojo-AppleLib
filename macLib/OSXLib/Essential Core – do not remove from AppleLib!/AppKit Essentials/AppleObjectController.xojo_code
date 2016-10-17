#tag Class
Protected Class AppleObjectController
Inherits AppleController
	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E7320616E204E534F626A656374436F6E74726F6C6C6572206F626A65637420776974682074686520676976656E20636F6E74656E742E
		Sub Constructor(Content as AppleObject)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initWithContent(alloc(classptr), content.id), true)
		  registeridentity(self)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautomaticallyPreparesContent Lib AppkitLibName Selector "automaticallyPreparesContent" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontent Lib AppkitLibName Selector "content" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getentityName Lib AppkitLibName Selector "entityName" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getobjectClass Lib AppkitLibName Selector "objectClass" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectedObjects Lib AppkitLibName Selector "selectedObjects" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselection Lib AppkitLibName Selector "selection" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithContent Lib AppkitLibName Selector "initWithContent:" (id as ptr, content as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleObjectController
		  return if (aptr = nil, nil, new AppleObjectController(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautomaticallyPreparesContent Lib AppkitLibName Selector "setAutomaticallyPreparesContent:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontent Lib AppkitLibName Selector "setContent:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setentityName Lib AppkitLibName Selector "setEntityName:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setobjectClass Lib AppkitLibName Selector "setObjectClass:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		Preparescontent – event?
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207265636569766572206175746F6D61746963616C6C79206372656174657320616E6420696E7365727473206E657720636F6E74656E74206F626A65637473206175746F6D61746963616C6C79207768656E206C6F6164696E672066726F6D2061206E69622066696C652E
		#tag Getter
			Get
			  return getautomaticallyPreparesContent(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautomaticallyPreparesContent mid, value
			End Set
		#tag EndSetter
		AutomaticallyPreparesContent As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper ("objectDidBeginEditing:", Addressof impl_objectDidBeginEditing, "v@:@")
			    methods.Append new TargetClassMethodHelper ("objectDidEndEditing:", Addressof impl_objectDidEndEditing, "v@:@")
			    // methods.Append new TargetClassMethodHelper ("commitEditing", Addressof impl_commitEditing, "c@:")
			    
			    mClassPtr = BuildTargetClass ("NSObjectController", "OSXLibObjectController", methods)
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74726F6C6C6572E280997320636F6E74656E74206F626A6563742E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(getcontent(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontent mid, nilptr(value)
			End Set
		#tag EndSetter
		Content As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E74697479206E616D6520757365642062792074686520726563656976657220746F20637265617465206E6577206F626A656374732E
		#tag Getter
			Get
			  return getentityName (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setentityName mid, value
			End Set
		#tag EndSetter
		EntityName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A65637420636C61737320746F20757365207768656E206372656174696E67206E6577206F626A656374732E
		#tag Getter
			Get
			  dim mobjAclass as ptr = getobjectClass(mid)
			  dim c as CString = ObjectiveCRuntime.class_getName(mobjAclass)
			  return text.fromCString(c, xojo.core.TextEncoding.UTF8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setobjectClass mid, FoundationFrameWork.NSClassFromString(value)
			End Set
		#tag EndSetter
		ObjectClass As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620616C6C206F626A6563747320746F2062652061666665637465642062792065646974696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return Applearray.MakeFromPtr(getselectedObjects(mid))
			End Get
		#tag EndGetter
		SelectedObjects As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070726F7879206F626A65637420726570726573656E74696E6720746865207265636569766572E28099732073656C656374696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(getselection(mid))
			End Get
		#tag EndGetter
		Selection As AppleObject
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutomaticallyPreparesContent"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EntityName"
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
			Name="ObjectClass"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
