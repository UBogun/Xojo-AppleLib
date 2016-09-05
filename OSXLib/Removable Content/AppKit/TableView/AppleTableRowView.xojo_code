#tag Class
Protected Class AppleTableRowView
Inherits AppleView
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(rect as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initwithframe(alloc(classptr),Rect))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getEmphasized Lib AppKitLibName Selector "isEmphasized" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getFloating Lib AppKitLibName Selector "isFloating" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getGroupRowStyle Lib AppKitLibName Selector "isGroupRowStyle" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getindentationForDropOperation Lib AppKitLibName Selector "indentationForDropOperation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getSelected Lib AppKitLibName Selector "isSelected" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTargetForDropOperation Lib AppKitLibName Selector "isTargetForDropOperation" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getViewAtColumn Lib AppKitLibName Selector "viewAtColumn:" (id as ptr, column as Integer) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleTableRowView
		  return if (aptr = nil, nil, new AppleTableRowView(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setEmphasized Lib AppKitLibName Selector "setEmphasized:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setFloating Lib AppKitLibName Selector "setFloating:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setGroupRowStyle Lib AppKitLibName Selector "setGroupRowStyle:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setindentationForDropOperation Lib AppKitLibName Selector "setIndentationForDropOperation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setinteriorBackgroundStyle Lib appkitlibname Selector "setInteriorBackgroundStyle:" (id as Ptr, value as applecell . NSBackgroundStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSelected Lib AppKitLibName Selector "setSelected:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTargetForDropOperation Lib AppKitLibName Selector "setTargetForDropOperation:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50726F76696465732061636365737320746F2074686520676976656E2076696577206174206120706172746963756C617220636F6C756D6E2E0A5468697320697320746865206F6E6C792077617920746F206163636573732063656C6C2076696577732061667465722074686520726F77207669657720686173206265656E2072656D6F7665642066726F6D20746865207461626C652E
		Function ViewAtColumn(Column As Integer) As AppleView
		  return AppleView.MakefromPtr(getViewAtColumn(id, column))
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		needs draw override for custom subclass
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F72206F662074686520726F772E
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
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSTableRowView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320746865206472616767696E672064657374696E6174696F6E20666565646261636B207374796C652E
		#tag Getter
			Get
			  return TableViewAdditionsForAppkit.getDraggingDestinationFeedbackStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  TableViewAdditionsForAppkit.setDraggingDestinationFeedbackStyle id,value
			End Set
		#tag EndSetter
		DraggingDestinationFeedbackStyle As AppleTableView.NSTableViewDraggingDestinationFeedbackStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 44657465726D696E657320776865746865722074686520726F772077696C6C206472617720776974682074686520616C7465726E617465206F72207365636F6E6461727920636F6C6F722028756E6C657373206F76657272696464656E292E
		#tag Getter
			Get
			  return getEmphasized (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setEmphasized id, value
			End Set
		#tag EndSetter
		Emphasized As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320776865746865722074686520726F7720697320647261776E207573696E672074686520666C6F6174696E67207374796C652E
		#tag Getter
			Get
			  return getFloating (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFloating id, value
			End Set
		#tag EndSetter
		Floating As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5370656369666965732077686574686572207468697320726F77207669657720697320612067726F757020726F772E
		#tag Getter
			Get
			  return getGroupRowStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setEmphasized id, value
			End Set
		#tag EndSetter
		GroupRowStyle As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 446566696E65732074686520616D6F756E742074686520647261672074617267657420666F72206120726F772073686F756C6420626520696E64656E7465642E
		#tag Getter
			Get
			  return getindentationForDropOperation (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setindentationForDropOperation id, value
			End Set
		#tag EndSetter
		IndentationForDropOperation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320686F77207468652073756276696577732073686F756C6420647261772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getinteriorBackgroundstyle (id)
			End Get
		#tag EndGetter
		InteriorBackgroundStyle As AppleCell.NSBackgroundStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620636F6C756D6E7320726570726573656E74656420627920766965777320696E20746865207461626C6520726F7720766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return TableViewAdditionsForAppkit.getnumberOfColumns (id)
			End Get
		#tag EndGetter
		NumberOfColumns As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 44657465726D696E657320776865746865722074686520726F772069732073656C65637465642E
		#tag Getter
			Get
			  return getSelected (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSelected id, value
			End Set
		#tag EndSetter
		Selected As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468652073656C656374696F6E20686967686C69676874207374796C652E
		#tag Getter
			Get
			  return TableViewAdditionsForAppkit.getselectionHighlightStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  TableViewAdditionsForAppkit.setselectionHighlightStyle id,value
			End Set
		#tag EndSetter
		SelectionHighlightStyle As AppleTableView.NSTableViewSelectionHighlightStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5370656369666965732077686574686572207468697320726F772077696C6C206472617720612064726F7020696E64696361746F72206261736564206F6E207468652063757272656E74206472616767696E6720666565646261636B207374796C652E
		#tag Getter
			Get
			  return getTargetForDropOperation (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTargetForDropOperation id, value
			End Set
		#tag EndSetter
		TargetForDropOperation As Boolean
	#tag EndComputedProperty


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
			Name="DraggingDestinationFeedbackStyle"
			Group="Behavior"
			Type="AppleTableView.NSTableViewDraggingDestinationFeedbackStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - None"
				"0 - Regular"
				"1 - SourceList"
				"2 - Gap"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Emphasized"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Floating"
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
			Name="GroupRowStyle"
			Group="Behavior"
			Type="Boolean"
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
			Name="IndentationForDropOperation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InteriorBackgroundStyle"
			Group="Behavior"
			Type="AppleCell.NSBackgroundStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Light"
				"1 - Dark"
				"2 - Raised"
				"3 - Lowered"
			#tag EndEnumValues
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
			Name="NumberOfColumns"
			Group="Behavior"
			Type="Integer"
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
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionHighlightStyle"
			Group="Behavior"
			Type="AppleTableView.NSTableViewSelectionHighlightStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - None"
				"0 - Regular"
				"1 - SourceList"
			#tag EndEnumValues
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
			Name="TargetForDropOperation"
			Group="Behavior"
			Type="Boolean"
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
