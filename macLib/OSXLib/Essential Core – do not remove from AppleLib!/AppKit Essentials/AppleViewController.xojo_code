#tag Class
Protected Class AppleViewController
Inherits AppleResponder
	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E5356696577436F6E74726F6C6C6572206F626A65637420696E697469616C697A656420746F20746865206E69622066696C6520696E20746865207370656369666965642062756E646C652E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E5356696577436F6E74726F6C6C6572206F626A65637420696E697469616C697A656420746F20746865206E69622066696C6520696E20746865207370656369666965642062756E646C652E
		Sub Constructor(NibName as cfstringref, bundle as cfstringref = "")
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(AppKitFramework.initwithnibnamebundle(alloc(classptr), NibName, bundle), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getchildViewControllers Lib AppKitLibname Selector "childViewControllers" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparentViewController Lib AppKitLibname Selector "parentViewController" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpresentedViewControllers Lib AppKitLibname Selector "presentedViewControllers" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpresentingViewController Lib AppKitLibname Selector "presentingViewController" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrepresentedObject Lib AppKitLibname Selector "representedObject" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleViewController
		  return if (aptr = nil, nil, new appleviewcontroller(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setchildViewControllers Lib AppKitLibname Selector "setChildViewControllers:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrepresentedObject Lib AppKitLibname Selector "setRepresentedObject:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66207669657720636F6E74726F6C6C6572732074686174206172652068696572617263686963616C206368696C6472656E206F6620746865207669657720636F6E74726F6C6C65722E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getchildViewControllers (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setchildViewControllers mid, nilptr(value)
			End Set
		#tag EndSetter
		ChildViewControllers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mclassptr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSViewController")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E69622062756E646C6520746F206265206C6F6164656420746F20696E7374616E746961746520746865207265636569766572E2809973207072696D61727920766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleBundle.MakefromPtr(AppKitFramework.getnibBundle (mid))
			End Get
		#tag EndGetter
		NibBundle As AppleBundle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F6620746865206E69622066696C6520746F206265206C6F6164656420746F20696E7374616E746961746520746865207265636569766572E2809973207072696D61727920766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getnibName (mid)
			End Get
		#tag EndGetter
		NibName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D6D65646961746520616E636573746F72207669657720636F6E74726F6C6C6572206F6620746865207669657720636F6E74726F6C6C65722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleViewController.MakeFromPtr(getparentViewController (mid))
			End Get
		#tag EndGetter
		ParentViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720636F6E74726F6C6C6572732C20696620616E792C2074686174206172652063757272656E746C792070726573656E74656420627920746865207669657720636F6E74726F6C6C65722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getpresentedViewControllers (mid))
			End Get
		#tag EndGetter
		PresentedViewControllers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720636F6E74726F6C6C657220746861742070726573656E74656420746865207669657720636F6E74726F6C6C6572206F7220746861742070726573656E7465642069747320666172746865737420616E636573746F72207669657720636F6E74726F6C6C65722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleViewController.MakeFromPtr(getpresentingViewController (mid))
			End Get
		#tag EndGetter
		PresentingViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A6563742077686F73652076616C75652069732070726573656E74656420696E20746865207265636569766572E2809973207072696D61727920766965772E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(getrepresentedObject (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setrepresentedObject mid, nilptr(value)
			End Set
		#tag EndSetter
		RepresentedObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564207469746C65206F662074686520636F6E74726F6C6C6572E2809973207072696D61727920766965772E
		#tag Getter
			Get
			  return AppKitFramework.getTitle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTitle id, value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720636F6E74726F6C6C6572E2809973207072696D61727920766965772E
		#tag Getter
			Get
			  return appleview.MakeFromPtr(AppKitFramework.getview (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setview mid, nilptr (value)
			End Set
		#tag EndSetter
		View As AppleView
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="NibName"
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
