#tag Class
Protected Class AppleTextFieldCell
Inherits AppleActionCell
	#tag Method, Flags = &h0, Description = 437265617465732061204E53546578746669656C6443656C6C206F626A65637420696E697469616C697A65642077697468207468652073706563696669656420737472696E6720616E642073657420746F2068617665207468652063656C6CE28099732064656661756C74206D656E752E
		Sub Constructor()
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53546578746669656C6443656C6C206F626A65637420696E697469616C697A65642077697468207468652073706563696669656420737472696E6720616E642073657420746F2068617665207468652063656C6CE28099732064656661756C74206D656E752E
		Sub Constructor(Caption as cfstringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initTextCell(alloc(classptr), caption))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowedInputSourceLocales Lib appkitlibname Selector "allowedInputSourceLocales" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbezelStyle Lib appkitlibname Selector "bezelStyle" (id as ptr) As NSTextFieldBezelStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getplaceholderAttributedString Lib appkitlibname Selector "placeholderAttributedString" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getplaceholderString Lib appkitlibname Selector "placeholderString" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleTextFieldCell
		  return if (aptr = nil, nil, new AppleTextFieldCell(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowedInputSourceLocales Lib appkitlibname Selector "setAllowedInputSourceLocales:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbezelStyle Lib appkitlibname Selector "setBezelStyle:" (id as ptr, value as NSTextFieldBezelStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setplaceholderAttributedString Lib appkitlibname Selector "setPlaceholderAttributedString:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setplaceholderString Lib appkitlibname Selector "setPlaceholderString:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 44697265637473207468652063656C6CE2809973206173736F636961746564206669656C6420656469746F7220746F20706F73742074657874206368616E6765206E6F74696669636174696F6E732E
		Sub SetWantsNotificationForMarkedText(value as Boolean)
		  setWantsNotificationForMarkedText id, value
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setWantsNotificationForMarkedText Lib appkitlibname Selector "setWantsNotificationForMarkedText:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete but probably only for irrelevant event
		
		missing:
		
		setUpFieldEditorAttributes
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66206C6F63616C65206964656E7469666965727320726570726573656E74696E672074686520616C6C6F77656420696E70757420736F7572636573207768656E207468652074657874206669656C642068617320746865206B6579626F61726420666F6375732E
		#tag Getter
			Get
			  return applearray.MakeFromPtr(getallowedInputSourceLocales( id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setallowedInputSourceLocales id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AllowedInputSourceLocales As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F66207468652063656C6CE2809973206261636B67726F756E642E
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652062657A656C207374796C6520746F20757365207768656E2064726177696E67207468652074657874206669656C642E
		#tag Getter
			Get
			  return getbezelStyle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbezelStyle id, value
			End Set
		#tag EndSetter
		BezelStyle As NSTextFieldBezelStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSTextFieldCell")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20647261777320697473206261636B67726F756E6420636F6C6F722E
		#tag Getter
			Get
			  return AppKitFramework.GetdrawsBackground (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdrawsBackground id, value
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706C616365686F6C646572207465787420666F72207468652063656C6C2C2073706563696669656420617320616E206174747269627574656420737472696E672E
		#tag Getter
			Get
			  return AppleAttributedString.MakeFromPtr(getplaceholderAttributedString( id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setplaceholderattributedString id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		PlaceholderAttributedString As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706C616365686F6C646572207465787420666F72207468652063656C6C2C20737065636966696564206173206120706C61696E207465787420737472696E672E
		#tag Getter
			Get
			  return getplaceholderString( id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setplaceholderString id, value
			End Set
		#tag EndSetter
		PlaceholderString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207573656420746F2064726177207468652063656C6CE280997320746578742E
		#tag Getter
			Get
			  return AppleColor.MakefromPtr(AppKitFramework.gettextColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTextColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty


	#tag Enum, Name = NSTextFieldBezelStyle, Type = UInteger, Flags = &h0
		Square
		Rounded
	#tag EndEnum


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
			Name="BezelStyle"
			Group="Behavior"
			Type="NSTextFieldBezelStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Square"
				"1 - Rounded"
			#tag EndEnumValues
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
			Name="PlaceholderString"
			Group="Behavior"
			Type="Text"
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
