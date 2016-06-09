#tag Class
Protected Class AppleCustomizableTableView
Inherits AppleTableView
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleTableViewobjectDataSource.MakefromPtr(getdataSource(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setdataSource id, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		DataSource As AppleTableViewObjectDataSource
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alignment"
			Group="Behavior"
			Type="AppleText.NSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"2 - Center"
				"1 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowExpansionTooltips"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsColumnReordering"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsColumnResizing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsColumnSelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEmptySelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsMultipleSelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsTypeSelect"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="AutosaveName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutosaveTableColumns"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaseWritingDirection"
			Group="Behavior"
			Type="AppleText.NSWritingDirection"
			EditorType="Enum"
			#tag EnumValues
				"1 - Natural"
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
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
			Name="ClickedColumn"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClickedRow"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnAutoresizingStyle"
			Group="Behavior"
			Type="NSTableViewColumnAutoresizingStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - NoColumnAutoresizing"
				"1 - UniformColumn"
				"2 - SequentialColumn"
				"3 - ReverseSequentialColumn"
				"4 - LastColumnOnly"
				"5 - FirstColumnOnly"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Group="Behavior"
			Type="NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DraggingDestinationFeedbackStyle"
			Group="Behavior"
			Type="NSTableViewDraggingDestinationFeedbackStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - None"
				"0 - Regular"
				"1 - SourceList"
				"2 - Gap"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditedColumn"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditedRow"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EffectiveRowSizeStyle"
			Group="Behavior"
			Type="NSTableViewRowSizeStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Default"
				"0 - Custom"
				"1 - Small"
				"2 - Medium"
				"3 - Large"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FloatsGroupRows"
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
			Name="Highlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresMultiClick"
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
			Name="Int32Value"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerValue"
			Group="Behavior"
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
			Name="LineBreakMode"
			Group="Behavior"
			Type="AppleText.NSLineBreakMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - WordWrap"
				"1 - CharacterWrap"
				"2 - Clip"
				"3 - TruncateHead"
				"4 - TruncateTail"
				"5 - TruncateMiddle"
			#tag EndEnumValues
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
			Name="NumberOfColumns"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfRows"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfSelectedColumns"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfSelectedRows"
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
			Name="RefusesFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowActionsVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowSizeStyle"
			Group="Behavior"
			Type="NSTableViewRowSizeStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Default"
				"0 - Custom"
				"1 - Small"
				"2 - Medium"
				"3 - Large"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedColumn"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedRow"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionHighlightStyle"
			Group="Behavior"
			Type="NSTableViewSelectionHighlightStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - None"
				"0 - Regular"
				"1 - SourceList"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
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
			Name="TextValue"
			Group="Behavior"
			Type="text"
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
			Name="UsesAlternatingRowBackgroundColors"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesStaticContents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalMotionCanBeginDrag"
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
