#tag Class
Protected Class AppleActionCell
Inherits AppleCell
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Image as AppleImage) -- From AppleCell
		  // Constructor(Caption as cfstringRef) -- From AppleCell
		  // Constructor() -- From AppleCell
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(ClassPtr)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleActionCell
		  return if (aptr = nil, nil, new AppleActionCell(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		OS X 10.11.5
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652073656C6563746F72207573656420666F7220616374696F6E206D657373616765732073656E7420627920746865207265636569766572277320636F6E74726F6C2E
		#tag Getter
			Get
			  return appkitframework.getaction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setAction id,  value
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSActionCell")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C756520617320612036342D62697420636F6D70617469626C6520696E74656765722061667465722076616C69646174696E6720616E792065646974696E67206F662063656C6C20636F6E74656E742E
		#tag Getter
			Get
			  return FoundationFrameWork.getintegerValue (id)
			  
			End Get
		#tag EndGetter
		IntegerValue As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE2809973207461672C20776869636820697320616E20696E7465676572207468617420796F752075736520746F206964656E746966792074686520766965772077697468696E20796F7572206170702E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.gettag(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.settag id, value
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E280997320746172676574206F626A6563742E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(appkitframework.getTarget (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTarget id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Target As AppleObject
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
			Name="AllowsMixedState"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsUndo"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundStyle"
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
			Name="Bezeled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bordered"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Group="Behavior"
			Type="AppleControl.NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlTint"
			Group="Behavior"
			Type="NSControlTint"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Blue"
				"6 - Graphite"
				"7 - Clear"
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
			Name="Editable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
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
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasValidObjectValue"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
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
			Name="KeyEquivalent"
			Group="Behavior"
			Type="Text"
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
			Name="NextState"
			Group="Behavior"
			Type="NSCellStateValue"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Mixed"
				"0 - Off"
				"1 - On"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
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
			Name="Scrollable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selectable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="NSCellStateValue"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Mixed"
				"0 - Off"
				"1 - On"
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
			Name="TextValue"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
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
			Name="TruncatesLastVisibleLine"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="NSCellType"
			EditorType="Enum"
			#tag EnumValues
				"0 - NullCell"
				"1 - TextCell"
				"2 - ImageCell"
			#tag EndEnumValues
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
			Name="Wraps"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
