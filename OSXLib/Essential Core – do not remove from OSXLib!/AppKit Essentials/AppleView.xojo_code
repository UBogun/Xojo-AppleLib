#tag Class
Protected Class AppleView
Inherits AppleResponder
	#tag Method, Flags = &h0
		Sub Constructor(aControl as control)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(ptr(aControl.Handle))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromControl(c as Control) As AppleView
		  #if targetmacos
		    Return new appleview (ptr(c.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getLayer Lib appkitlibname Selector "layer" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getWantsLayer Lib appkitlibname Selector "wantsLayer" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setLayer Lib appkitlibname Selector "setLayer:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setWantsLayer Lib appkitlibname Selector "setWantsLayer:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  return AppleCALayer.MakefromPtr(getLayer (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setLayer id, value.id
			End Set
		#tag EndSetter
		Layer As AppleCALAyer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  return getWantsLayer (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setWantsLayer (id, value)
			End Set
		#tag EndSetter
		WantsLayer As Boolean
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
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
