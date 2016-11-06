#tag Class
Protected Class AppleText
Inherits AppleView
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfieldEditor Lib AppKitLibname Selector "isFieldEditor" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimportsGraphics Lib AppKitLibname Selector "importsGraphics" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getRichText Lib AppKitLibname Selector "isRichText" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getString Lib AppKitLibname Selector "string" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesFontPanel Lib AppKitLibname Selector "usesFontPanel" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleText
		  Return if (aptr= nil, nil, new AppleText(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfieldEditor Lib AppKitLibname Selector "setFieldEditor:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimportsGraphics Lib AppKitLibname Selector "setImportsGraphics:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setRichText Lib AppKitLibname Selector "setRichText:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setString Lib AppKitLibname Selector "setString:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesFontPanel Lib AppKitLibname Selector "setUsesFontPanel:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F66207468652074657874206F626A656374E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSText")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A656374647261777320697473206261636B67726F756E642E
		#tag Getter
			Get
			  return AppKitFramework.getdrawsBackground(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdrawsBackground id, value
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A656374206973206564697461626C652E
		#tag Getter
			Get
			  return AppKitFramework.geteditable (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.seteditable mid, value
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420696E7465727072657473205461622C2053686966742D5461622C20616E642052657475726E2028456E74657229206173206375657320746F20656E642065646974696E6720616E6420706F737369626C7920746F206368616E67652074686520666972737420726573706F6E6465722E
		#tag Getter
			Get
			  return getfieldEditor (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfieldEditor mid, value
			End Set
		#tag EndSetter
		FieldEditor As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420616C6C6F777320746865207573657220746F20696D706F72742066696C6573206279206472616767696E672E
		#tag Getter
			Get
			  return getimportsGraphics (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimportsGraphics mid, value
			End Set
		#tag EndSetter
		ImportsGraphics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420616C6C6F777320746865207573657220746F206170706C79206174747269627574657320746F2073706563696669632072616E676573206F662074686520746578742E
		#tag Getter
			Get
			  return getRichText (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRichText mid, value
			End Set
		#tag EndSetter
		RichText As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A656374E280997320746578742063616E2062652073656C65637465642E
		#tag Getter
			Get
			  return AppKitFramework.getSelectable (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setSelectable mid, value
			End Set
		#tag EndSetter
		Selectable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063686172616374657273206F66207468652074657874206F626A656374E280997320746578742E
		#tag Getter
			Get
			  return getString(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setString mid, value
			End Set
		#tag EndSetter
		StringRepresentation As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420757365732074686520466F6E742070616E656C20616E6420466F6E74206D656E752E
		#tag Getter
			Get
			  return getusesFontPanel (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setusesFontPanel mid, value
			End Set
		#tag EndSetter
		UsesFontPanel As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = NSLineBreakMode, Type = uinteger, Flags = &h0
		WordWrap = 0
		  CharacterWrap
		  Clip
		  TruncateHead
		  TruncateTail
		TruncateMiddle
	#tag EndEnum

	#tag Enum, Name = NSTextAlignment, Flags = &h0
		Left =0
		  Center = 2
		  Right = 1
		  Justified = 3
		Natural = 4
	#tag EndEnum

	#tag Enum, Name = NSWritingDirection, Type = Integer, Flags = &h0
		Natural = 1
		  LeftToRight = 0
		RightToLeft = 1
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
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
			Name="Editable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldEditor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
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
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
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
			Name="ImportsGraphics"
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
			Name="LastBaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
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
			Name="NeedsLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsUpdateConstraints"
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
			Name="RichText"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selectable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringRepresentation"
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
			Name="UsesFontPanel"
			Group="Behavior"
			Type="Boolean"
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
