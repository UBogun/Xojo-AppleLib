#tag Class
Protected Class AppleTextField
Inherits AppleControl
	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E6577204C6162656C2066726F6D206120537472696E67
		Shared Function CreateLabel(TextValue as CFStringRef) As AppleTextField
		  Dim result As New AppleTextField(labelWithString(classptr, TextValue))
		  Result.retainClassobject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E6577204C6162656C2066726F6D20616E204174747269627574656420537472696E67
		Shared Function CreateLabelWithAttributedString(AttributedString as AppleAttributedString) As AppleTextField
		  Dim result As New AppleTextField(labelWithAttributedString(classptr, AttributedString.id))
		  Result.retainClassobject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E657720546578744669656C642066726F6D206120537472696E67
		Shared Function CreateTextField(TextValue as CFStringRef) As AppleTextField
		  Dim result As New AppleTextField(textFieldWithString(classptr, TextValue))
		  Result.retainClassobject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E6577207772617070696E67204C6162656C2066726F6D206120537472696E67
		Shared Function CreateWrappingLabel(TextValue as CFStringRef) As AppleTextField
		  Dim result As New AppleTextField(wrappingLabelWithString(classptr, TextValue))
		  Result.retainClassobject
		  Return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function labelWithAttributedString Lib appkitlibname Selector "labelWithAttributedString:" (id as ptr, value as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function labelWithString Lib appkitlibname Selector "labelWithString:" (id as ptr, value as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTextField
		  return if (aptr = nil, nil, new AppleTextField(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E64732065646974696E6720616E642073656C656374732074686520656E7469726520636F6E74656E7473206F662074686520636F74726F6C206966206974E28099732073656C65637461626C652E
		Sub SelectText(sender as appleobject = nil)
		  AppKitFramework.selectText mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506F7374732061206E6F74696669636174696F6E20746861742074686520746578742069732061626F757420746F20626567696E2065646974696E6720746F207468652064656661756C74206E6F74696669636174696F6E2063656E7465722E
		Sub TextDidBeginEditing(Notification as AppleNotification)
		  textDidBeginEditing (mid, Notification.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub textDidBeginEditing Lib appkitlibname Selector "textDidBeginEditing:" (id as ptr, notification as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 506F7374732061206E6F74696669636174696F6E207468617420746865207465787420686173206368616E67656420616E6420666F7277617264732074686973206D65737361676520746F2074686520636F6E746F726CE28099732063656C6C20696620697420726573706F6E64732E
		Sub TextDidChange(Notification as AppleNotification)
		  textDidChange (mid, Notification.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub textDidChange Lib appkitlibname Selector "textDidChange:" (id as ptr, notification as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 48616E646C657320616E20656E64206F662065646974696E672E
		Sub TextDidEndEditing(Notification as AppleNotification)
		  textDidEndEditing (mid, Notification.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub textDidEndEditing Lib appkitlibname Selector "textDidEndEditing:" (id as ptr, notification as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textFieldWithString Lib appkitlibname Selector "textFieldWithString:" (id as ptr, value as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265717565737473207065726D697373696F6E20746F20626567696E2065646974696E6720612074657874206F626A6563742E
		Function TextShouldBeginEditing(TextObject as AppleText) As Boolean
		  return textShouldBeginEditing(mid, TextObject.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textShouldBeginEditing Lib appkitlibname Selector "textShouldBeginEditing:" (id as ptr, textObject as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 506572666F726D732076616C69646174696F6E206F6E2074686520636F6E74726F6CE2809973206E65772076616C75652E
		Function TextShouldEndEditing(TextObject as AppleText) As Boolean
		  return textShouldEndEditing(mid, TextObject.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textShouldEndEditing Lib appkitlibname Selector "textShouldEndEditing:" (id as ptr, textObject as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function wrappingLabelWithString Lib appkitlibname Selector "wrappingLabelWithString:" (id as ptr, value as CFStringRef) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		Accessibility and UserInterfaceValidations protocols missing.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207265636569766572206973206564697461626C652E2028726561642E6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getacceptsFirstResponder(mid)
			End Get
		#tag EndGetter
		AcceptsFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C20616C6C6F7773206120436861726163746572205069636B657220546F756368626172206974656D2E20417661696C61626C652073696E6365206D61634F532031302E31322E31
		#tag Getter
			Get
			  if RespondsToSelector("allowsCharacterPickerTouchBarItem", classptr) then
			    return AppKitFramework.getallowsCharacterPickerTouchBarItem(mid)
			  End If
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If RespondsToSelector("setAllowsCharacterPickerTouchBarItem:", classptr) Then
			    AppKitFramework.setallowsCharacterPickerTouchBarItem(Mid, value)
			  End If
			End Set
		#tag EndSetter
		AllowsCharacterPickerTouchBarItem As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 49662074686520636F6E74726F6C2073686F756C642074727920746F207469676874656E206974732074657874206265666F7265206974207472756E63617465732069742E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("allowsDefaultTighteningForTruncation", classptr) then
			    return AppKitFramework.getallowsDefaultTighteningForTruncation(mid)
			  End If
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If RespondsToSelector("setAllowsDefaultTighteningForTruncation:", classptr) Then
			    AppKitFramework.setallowsDefaultTighteningForTruncation(Mid, value)
			  End If
			End Set
		#tag EndSetter
		AllowsDefaultTighteningForTruncation As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070726F7879206F626A65637420666F722074686520726563656976657220746861742063616E206265207573656420746F20696E69746961746520696D706C69656420616E696D6174696F6E20666F722070726F7065727479206368616E6765732E
		#tag Getter
			Get
			  return AppleTextField.MakeFromPtr(getanimator(id))
			End Get
		#tag EndGetter
		Animator As AppleTextField
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C2075736573206175746F6D61746963207465787420636F6D706C6574696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322E31
		#tag Getter
			Get
			  if RespondsToSelector("isAutomaticTextCompletionEnabled", classptr) then
			    return AppKitFramework.getAutomaticTextCompletionEnabled(mid)
			  End If
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If RespondsToSelector("setAutomaticTextCompletionEnabled:", classptr) Then
			    AppKitFramework.setAutomaticTextCompletionEnabled(Mid, value)
			  End If
			End Set
		#tag EndSetter
		AutomaticTextCompletion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F6620746865206261636B67726F756E6420746861742074686520636F6E74726F6CE28099732063656C6C20647261777320626568696E642074686520746578742E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor mid, nilptr (value)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C2068617320612062657A656C656420626F726465722E0A546869732070726F7065727479206973206D757475616C6C79206578636C757369766520776974682074686520626F7264657265642070726F7065727479E28094746861742069732C20612063656C6CE280997320626F726465722063616E20626520706C61696E206F722062657A656C656420627574206E6F7420626F74682E
		#tag Getter
			Get
			  return appkitframework.getBezeled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setBezeled mid,value
			End Set
		#tag EndSetter
		Bezeled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652062657A656C207374796C6520746F20757365207768656E2064726177696E67207468652074657874206669656C642E
		#tag Getter
			Get
			  return AppKitFramework.getbezelStyle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbezelStyle mid, value
			End Set
		#tag EndSetter
		BezelStyle As AppleTextfield.NSTextFieldBezelStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C20647261777320697473656C66206F75746C696E65642077697468206120706C61696E20626F726465722E0A546869732070726F7065727479206973206D757475616C6C79206578636C75736976652077697468207468652062657A656C65642070726F7065727479E28094746861742069732C20612063656C6CE280997320626F726465722063616E20626520706C61696E206F722062657A656C656420627574206E6F7420626F74682E
		#tag Getter
			Get
			  return appkitframework.getBordered (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setBordered mid,value
			End Set
		#tag EndSetter
		Bordered As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Static mClassPtr As Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSTextField")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F662074686520636F6E74726F6C2E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(FoundationFramework.GetDelegate(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFramework.setDelegate(mid, nilptr (value))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C20647261777320697473206261636B67726F756E6420636F6C6F722E
		#tag Getter
			Get
			  return AppKitFramework.GetdrawsBackground (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdrawsBackground mid, value
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F662074657874206C696E657320616C6C6F77656420666F722074686520636F6E74726F6C2E20417661696C61626C652073696E6365206D61634F532031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("maximumNumberOfLines", classptr) then
			    return AppKitFramework.getmaximumNumberOfLines(mid)
			  End If
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If RespondsToSelector("setMaximumNumberOfLines:", classptr) Then
			    AppKitFramework.setmaximumNumberOfLines(Mid, value)
			  End If
			End Set
		#tag EndSetter
		MaximumNumberOfLines As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652043756554657874206F662074686520636F6E74726F6C206173204174747269627574656420537472696E672E20417661696C61626C652073696E6365206D61634F532031302E31302E
		#tag Getter
			Get
			  if RespondsToSelector("placeholderAttributedString", classptr) then
			    return AppleAttributedString.MakeFromPtr(AppKitFramework.getplaceholderAttributedString(mid))
			  End If
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If RespondsToSelector("setPlaceholderAttributedString:", classptr) Then
			    AppKitFramework.setplaceholderAttributedString(Mid, nilptr(value))
			  End If
			End Set
		#tag EndSetter
		PlaceholderAttributedString As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063756554657874206F662074686520436F6E74726F6C2E20
		#tag Getter
			Get
			  return AppKitFramework.getplaceholderString(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setplaceholderString(Mid, value)
			  
			End Set
		#tag EndSetter
		PlaceholderString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520707265666572726564206D6178696D756D206C61796F75742077696474682E
		#tag Getter
			Get
			  return AppKitFramework.getpreferredMaxLayoutWidth(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setpreferredMaxLayoutWidth mid, value
			End Set
		#tag EndSetter
		PreferredMaxLayoutWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207573656420746F20647261772074686520746578742E
		#tag Getter
			Get
			  return AppleColor.MakefromPtr(AppKitFramework.gettextColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTextColor mid, nilptr (value)
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty


	#tag Enum, Name = NSTextFieldBezelStyle, Flags = &h0
		Square
		Rounded
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="AllowsCharacterPickerTouchBarItem"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsDefaultTighteningForTruncation"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticTextCompletion"
			Group="Behavior"
			Type="Boolean"
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
			Type="AppleTextfield.NSTextFieldBezelStyle"
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
			Name="CanDrawinBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
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
			Name="DrawsBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
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
			Name="MaximumNumberOfLines"
			Group="Behavior"
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
			Name="PlaceholderString"
			Group="Behavior"
			Type="Text"
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
			Name="PreferredMaxLayoutWidth"
			Group="Behavior"
			Type="Double"
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
			Name="SingleLineMode"
			Group="Behavior"
			Type="Boolean"
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
