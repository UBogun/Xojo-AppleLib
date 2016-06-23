#tag Class
Protected Class AppleClipView
Inherits AppleView
	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub autoscroll Lib appkitlibname Selector "autoscroll:" (id as ptr, anEvent as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E73747261696E732074686520626F756E6473206F662074686520636C69702076696577207768696C65207468652075736572206973206D61676E696679696E6720616E64207363726F6C6C696E672E
		Function ConstrainBounds(rect as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return constrainBoundsRect (id, rect)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constrainBoundsRect Lib appkitlibname Selector "constrainBoundsRect:" (id as ptr, Rect as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Frame as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initwithFrame(alloc(classptr), frame))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcopiesOnScroll Lib appkitlibname Selector "copiesOnScroll" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdocumentRect Lib appkitlibname Selector "documentRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdocumentVisibleRect Lib appkitlibname Selector "documentVisibleRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleClipView
		  return if (aptr = nil, nil, new AppleClipView(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865206F726967696E206F662074686520636C69702076696577E280997320626F756E64732072656374616E676C6520746F206E65774F726967696E2E
		Sub ScrollToPoint(Point as FoundationFrameWork.NSPoint)
		  #If TargetMacOS then
		    ScrollToPoint id, point
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub scrollToPoint Lib appkitlibname Selector "scrollToPoint:" (id as ptr, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcopiesOnScroll Lib appkitlibname Selector "setCopiesOnScroll:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		documentCursor
		dragging methods
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636C69702076696577206175746F6D61746963616C6C79206163636F756E747320666F72206F74686572207363726F6C6C20766965772073756276696577732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getautomaticallyAdjustsContentInsets(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setautomaticallyAdjustsContentInsets id, value
			  #endif
			End Set
		#tag EndSetter
		AutomaticallyAdjustsContentInsets As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520636C69702076696577E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setbackgroundColor id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSClipView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E636520746861742074686520636F6E74656E74207669657720697320696E7365742066726F6D2074686520656E636C6F73696E67207363726F6C6C20766965772E
		#tag Getter
			Get
			  return AppKitFramework.getcontentInsets(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setcontentInsets id, value
			  #endif
			End Set
		#tag EndSetter
		ContentInsets As AppkitFramework.NSEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 49662074686520636C6970207669657720636F706965732072656E646572656420696D61676573207768696C65207363726F6C6C696E672E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcopiesOnScroll (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcopiesOnScroll id, value
			  #endif
			End Set
		#tag EndSetter
		CopiesOnScroll As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656374616E676C6520646566696E696E672074686520646F63756D656E742076696577E2809973206672616D652C2061646A757374656420746F207468652073697A65206F662074686520636C697020766965772069662074686520646F63756D656E74207669657720697320736D616C6C65722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getdocumentRect(id)
			  #endif
			End Get
		#tag EndGetter
		DocumentRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656374616E676C6520646566696E696E672074686520646F63756D656E742076696577E2809973206672616D652C2061646A757374656420746F207468652073697A65206F662074686520636C697020766965772069662074686520646F63756D656E74207669657720697320736D616C6C65722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getdocumentVisibleRect(id)
			  #endif
			End Get
		#tag EndGetter
		DocumentVisibleRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636C6970207669657720647261777320697473206261636B67726F756E6420636F6C6F722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.GetdrawsBackground (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setdrawsBackground id, value
			  #endif
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyAdjustsContentInsets"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CopiesOnScroll"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawsBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusRingType"
			Group="Behavior"
			Type="Appkitframework.NSFocusRingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Exterior"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameCenterRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeightAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="IsDrawingFindIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInFullScreenMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInLiveResize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedOrScaledFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleAxesIndependently"
				"1 - ScaleProprtionallyToFit"
				"2 - ScaleProprtionallyToFill"
				"3 - Center"
				"4 - Top"
				"5 - TopRight"
				"6 - Right"
				"7 - BottomRight"
				"8 - Bottom"
				"9 - BottomLeft"
				"10 - Left"
				"11 - TopLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="NSViewLayerContentsRedrawPolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - OnSetNeedsDisplay"
				"2 - DuringResize"
				"3 - BeforeResize"
				"4 - Crossfade"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerUsesCoreImageFilters"
			Group="Behavior"
			Type="Boolean"
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
			Name="NeedsDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsBoundsChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsFrameChangedNotifications"
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
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolTip"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
