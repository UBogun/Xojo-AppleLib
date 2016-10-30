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

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleViewController
		  return if (aptr = nil, nil, new appleviewcontroller(aptr))
		End Function
	#tag EndMethod


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

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F6620746865206E69622066696C6520746F206265206C6F6164656420746F20696E7374616E746961746520746865207265636569766572E2809973207072696D61727920766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getnibName (mid)
			End Get
		#tag EndGetter
		NibName As Text
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
