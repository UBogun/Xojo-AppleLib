#tag Class
Protected Class AppleButtonCell
Inherits AppleActionCell
	#tag Method, Flags = &h0, Description = 437265617465732061206E657720496D61676543656C6C207769746820612073706563696669656420696D6167652E
		Sub Constructor(Image as AppleImage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleActionCell
		  // Constructor() -- From AppleCell
		  // Constructor(Image as AppleImage) -- From AppleCell
		  // Constructor(Caption as cfstringRef) -- From AppleCell
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initImageCell(alloc(Classptr), Image.id), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577207465787443656C6C2077697468206120737065636966696564207469746C652E
		Sub Constructor(Title as CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleActionCell
		  // Constructor() -- From AppleCell
		  // Constructor(Image as AppleImage) -- From AppleCell
		  // Constructor(Caption as cfstringRef) -- From AppleCell
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initTextCell(alloc(Classptr), Title), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520666F6E74207573656420746F20646973706C61792074686520627574746F6E2773207469746C6520616E6420616C7465726E617465207469746C652E
		Sub Font(Assigns value as AppleFont)
		  AppKitFramework.setFont mid, nilptr(value)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbezelStyle Lib Appkitlibname Selector "bezelStyle" (id as ptr) As NSBezelStyle
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520666F6E74207573656420746F20646973706C61792074686520627574746F6E2773207469746C6520616E6420616C7465726E617465207469746C652E
		Sub PerformClick(Sender as appleobject = nil)
		  if sender = nil then sender = self
		  performClick mid, sender.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub performClick Lib Appkitlibname Selector "performClick:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbezelStyle Lib Appkitlibname Selector "setBezelStyle:" (id as ptr, value as NSBezelStyle)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53657473206279206E616D6520616E642073697A65206F662074686520666F6E74207573656420746F206472617720746865206B6579206571756976616C656E742E
		Sub SetKeyEquivalentFontSize(font as applefont, size as double)
		  AppKitFramework.setkeyEquivalentFontSize mid, nilptr(font), size
		End Sub
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		draws and events not included, constructor with coder missing.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520696D6167652074686520627574746F6E20646973706C61797320696E2069747320616C7465726E6174652073746174652E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(AppKitFramework.getalternateImage (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setalternateImage mid, nilptr(value)
			End Set
		#tag EndSetter
		AlternateImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E6720646973706C617965642062792074686520627574746F6E207768656E206974E280997320696E2069747320616C7465726E6174652073746174652E
		#tag Getter
			Get
			  return AppKitFramework.getalternateTitle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setalternateTitle mid, value
			End Set
		#tag EndSetter
		AlternateTitle As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C6520646973706C617965642062792074686520627574746F6E207768656E206974E280997320696E2069747320616C7465726E6174652073746174652C20617320616E206174747269627574656420737472696E672E
		#tag Getter
			Get
			  return AppleAttributedString.MakeFromPtr(appkitframework.getattributedAlternateTitle (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setattributedAlternateTitle mid, nilptr(value)
			End Set
		#tag EndSetter
		AttributedAlternateTitle As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C6520646973706C617965642062792074686520627574746F6E207768656E206974E280997320696E20697473206E6F726D616C20737461746520617320616E206174747269627574656420737472696E672E
		#tag Getter
			Get
			  return AppleAttributedString.MakeFromPtr(appkitframework.getattributedTitle (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setattributedTitle mid, nilptr(value)
			End Set
		#tag EndSetter
		AttributedTitle As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F72206F662074686520627574746F6E2E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor mid, nilptr(value)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F662074686520627574746F6EE280997320626F726465722C20696620697420686173206F6E652E
		#tag Getter
			Get
			  return getbezelStyle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbezelStyle mid, value
			End Set
		#tag EndSetter
		BezelStyle As NSBezelStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F772074686520627574746F6E20686967686C6967687473207768696C65207072657373656420616E6420686F772069742073686F7773206974732073746174652E
		#tag Getter
			Get
			  return AppKitFramework.getButtonType (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setButtonType mid, value
			End Set
		#tag EndSetter
		ButtonType As AppleButton.NSButtonType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSButtonCell")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120736574206F6620666C616773207468617420696E64696361746520686F772074686520627574746F6E20686967686C6967687473207768656E2069742072656365697665732061206D6F7573652D646F776E206576656E742028746861742069732C207768656E2074686520627574746F6E2069732070726573736564292E
		#tag Getter
			Get
			  return new NSCellStyleMask(AppKitFramework.gethighlightsBy(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.sethighlightsBy mid, value.id
			End Set
		#tag EndSetter
		HightLightsBy As NSCellStyleMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520627574746F6EE280997320696D61676520616E6420746578742061707065617220E2809C64696DE2809D207768656E2074686520627574746F6E2069732064697361626C65642E
		#tag Getter
			Get
			  return AppKitFramework.getimageDimsWhenDisabled(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setimageDimsWhenDisabled mid, value
			End Set
		#tag EndSetter
		ImageDimsWhenDisabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F736974696F6E206F662074686520627574746F6EE280997320696D6167652072656C617469766520746F20697473207469746C652E
		#tag Getter
			Get
			  return getimagePosition(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimagePosition mid, value
			End Set
		#tag EndSetter
		ImagePosition As NSCellImagePosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C696E67206D6F6465206170706C69656420746F206D616B65207468652063656C6CE280997320696D6167652066697420746865206672616D65206F662074686520696D61676520766965772E
		#tag Getter
			Get
			  return AppKitFramework.getimageScaling (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setimageScaling mid, value
			End Set
		#tag EndSetter
		ImageScaling As appkitframework.NSImagescaling
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74207573656420746F20647261772074686520627574746F6EE2809973206B6579206571756976616C656E742E
		#tag Getter
			Get
			  return applefont.MakeFromPtr(AppKitFramework.getkeyEquivalentFont(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setkeyEquivalentFont mid, nilptr(value)
			End Set
		#tag EndSetter
		KeyEquivalentFont As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6573736167652064656C617920696E207365636F6E64732074686174206120636F6E74696E756F757320627574746F6E2077696C6C207061757365206265666F7265207374617274696E6720746F20706572696F646963616C6C792073656E6420616374696F6E206D6573736167657320746F2074686520746172676574206F626A6563742E20204D6178696D756D2036302C2064656661756C7420302E342E
		#tag Getter
			Get
			  dim d, i as single
			  AppKitFramework.getPeriodicDelayInterval(mid, d, i)
			  return d
			  #pragma unused i
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setPeriodicDelayInterval mid, value, PeriodicInterval
			End Set
		#tag EndSetter
		PeriodicDelay As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 2054686520616D6F756E74206F662074696D652028696E207365636F6E647329206120636F6E74696E756F757320627574746F6E2077696C6C207061757365206265747765656E2073656E64696E67206561636820616374696F6E206D6573736167652E204D6178696D756D2036302C2064656661756C7420302E3037352E
		#tag Getter
			Get
			  dim d, i as single
			  AppKitFramework.getPeriodicDelayInterval(mid, d, i)
			  return i
			  #pragma unused d
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setPeriodicDelayInterval mid,  PeriodicDelay, value
			End Set
		#tag EndSetter
		PeriodicInterval As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520627574746F6E20646973706C6179732069747320626F72646572206F6E6C79207768656E2074686520706F696E746572206973206F7665722069742E2044456661756C742046616C73652E
		#tag Getter
			Get
			  return AppKitFramework.getshowsBorderOnlyWhileMouseInside(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setshowsBorderOnlyWhileMouseInside mid, value
			End Set
		#tag EndSetter
		ShowsBorderOnlyWhileMouseInside As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666C616773207468617420696E64696361746520686F772074686520627574746F6E2063656C6C2073686F77732069747320616C7465726E6174652073746174652E
		#tag Getter
			Get
			  return new NSCellStyleMask(AppKitFramework.getshowsStateBy(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setshowsStateBy mid, value.id
			End Set
		#tag EndSetter
		ShowsStateBy As NSCellStyleMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736F756E64207468617420706C617973207768656E20746865207573657220636C69636B732074686520627574746F6E2E
		#tag Getter
			Get
			  return AppleSound.MakeFromPtr(AppKitFramework.getsound (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setsound mid, Nilptr(value)
			End Set
		#tag EndSetter
		Sound As AppleSound
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520627574746F6E206973207472616E73706172656E742E
		#tag Getter
			Get
			  return appkitframework.getTransparent (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTransparent mid,value
			End Set
		#tag EndSetter
		Transparent As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = NSBezelStyle, Type = UInteger, Flags = &h0
		Rounded = 1
		  Square = 2
		  Disclosure = 5
		  ShadowlessSquare = 6
		  Circular = 7
		  TexturedSquare = 8
		  HelpButton = 9
		  SmallSquare = 10
		  TextureRounded = 11
		  RoundRect = 12
		  Recessed = 13
		  RoundedDisclosure = 14
		Inline = 15
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
			Name="AlternateTitle"
			Group="Behavior"
			Type="Text"
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
			Type="NSBezelStyle"
			EditorType="Enum"
			#tag EnumValues
				"1 - Rounded"
				"2 - Square"
				"5 - Disclosure"
				"6 - ShadowlessSquare"
				"7 - Circular"
				"8 - TexturedSquare"
				"9 - HelpButton"
				"10 - SmallSquare"
				"11 - TextureRounded"
				"12 - RoundRect"
				"13 - Recessed"
				"14 - RoundedDisclosure"
				"15 - Inline"
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
			Name="ImageDimsWhenDisabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagePosition"
			Group="Behavior"
			Type="NSCellImagePosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - NoImage"
				"1 - ImageOnly"
				"2 - ImageLeft"
				"3 - ImageRight"
				"4 - ImageBelow"
				"5 - ImageAbove"
				"6 - ImageOverlaps"
				"7 - ImageLeading"
				"8 - ImageTrailing"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageScaling"
			Group="Behavior"
			Type="appkitframework.NSImagescaling"
			EditorType="Enum"
			#tag EnumValues
				"0 - ProportionallyDown"
				"1 - AxesIndependently"
				"2 - None"
				"3 - ProportionallyUpOrDown"
			#tag EndEnumValues
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
			Name="PeriodicDelay"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PeriodicInterval"
			Group="Behavior"
			Type="Single"
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
			Name="ShowsBorderOnlyWhileMouseInside"
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
			Name="Transparent"
			Group="Behavior"
			Type="Boolean"
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
