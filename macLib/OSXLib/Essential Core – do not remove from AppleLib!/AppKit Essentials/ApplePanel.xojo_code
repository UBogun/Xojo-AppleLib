#tag Class
Protected Class ApplePanel
Inherits AppleWindow
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E20616C6C6F63617465642070616E656C207769746820746865207370656369666965642076616C7565732E
		Sub Constructor(rect as FoundationFrameWork.NSRect,  Style as AppleWindowStyleMask, type as NSBackingStoreType, DeferCreation as Boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor (initWithContentRect(alloc(classptr), rect, Style.ID, type, DeferCreation, nil), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbecomesKeyOnlyIfNeeded Lib appkitlibname Selector "becomesKeyOnlyIfNeeded" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getFloatingPanel Lib appkitlibname Selector "isFloatingPanel" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As ApplePanel
		  return if (aptr = nil, nil, new ApplePanel(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbecomesKeyOnlyIfNeeded Lib appkitlibname Selector "setBecomesKeyOnlyIfNeeded:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setFloatingPanel Lib appkitlibname Selector "setFloatingPanel:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207265636569766572206265636F6D657320746865206B65792077696E646F77206F6E6C79207768656E206E65656465642E
		#tag Getter
			Get
			  return getbecomesKeyOnlyIfNeeded (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbecomesKeyOnlyIfNeeded mid, value
			End Set
		#tag EndSetter
		BecomeKeyOnlyIfNeeded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mclassptr as ptr
			  if mclassptr = nil then mclassptr = FoundationFrameWork.NSClassFromString("NSPanel")
			  return mclassptr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652070616E656C206973206120666C6F6174696E672070616E656C2E
		#tag Getter
			Get
			  return getFloatingPanel (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFloatingPanel mid, value
			End Set
		#tag EndSetter
		FloatingPanel As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652070616E656C207265636569766573206B6579626F61726420616E64206D6F757365206576656E7473206576656E207768656E20736F6D65206F746865722077696E646F77206973206265696E672072756E206D6F64616C6C792E
		#tag Getter
			Get
			  return AppKitFramework.getworksWhenModal (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setworksWhenModal mid, value
			End Set
		#tag EndSetter
		WorksWhenModal As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BecomeKeyOnlyIfNeeded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanHide"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FloatingPanel"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasShadow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HidesOnDeactivate"
			Group="Behavior"
			Type="Boolean"
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
			Name="OnActiveSpace"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OneShot"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreventsApplicationTerminationWhenModal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReleasedWhenClosed"
			Group="Behavior"
			Type="Boolean"
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
			Name="Visible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowNumber"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WorksWhenModal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
