#tag Class
Protected Class OSXLibEnhancedTextField
Inherits TextField
	#tag Event
		Sub Open()
		  #if targetmacos
		    dim mappleobject as AppleTextField = me.AppleObject
		    mappleobject.Bordered = MBordered
		    mappleobject.Bezeled = mbezeled
		    mappleobject.bezelstyle = mBezelStyle
		    mappleobject.DrawsBackground = mDrawsbackground
		    mappleobject.PreferredMaxLayoutWidth = mPreferredMaxLayoutWidth
		    mappleobject.MaximumNumberOfLines = mMaximumNumberOfLines
		    mappleobject.allowsDefaultTighteningForTruncation = mallowsDefaultTighteningForTruncation
		    mappleobject.ControlSize = mControlsize
		    mappleobject.SingleLineMode = mSingleLineMode
		  #endif
		  hasinited = true
		  RaiseEvent open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 526563616C63756C61746573207468652073697A65206F662074686520636F6E74726F6C20746F206669742069747320636F6E74656E742E
		Sub SizeToFit()
		  AppleObject.SizeToFit
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 416C6C6F6573206120436861726163746572205069636B657220546F756368626172206974656D2E20417661696C61626C652073696E6365206D61634F532031302E31322E312E
		#tag Getter
			Get
			  return AppleObject.AllowsCharacterPickerTouchBarItem
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.AllowsCharacterPickerTouchBarItem = value
			  else
			    mAllowsCharacterPickerTouchBarItem = value
			  end if
			End Set
		#tag EndSetter
		AllowCharacterPickerTouchbarItem As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 556E646F63756D656E746564207965742E20417661696C61626C652073696E6365206D61634F532031302E31312E
		#tag Getter
			Get
			  return AppleObject.allowsDefaultTighteningForTruncation
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.allowsDefaultTighteningForTruncation = value
			  else
			    mallowsDefaultTighteningForTruncation = value
			  end if
			End Set
		#tag EndSetter
		AllowTighteningForTruncation As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    return new AppleTextField(ptr(me.Handle))
			  #endif
			End Get
		#tag EndGetter
		AppleObject As AppleTextField
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 456E61626C6573206175746F6D61746963207465787420636F6D706C6574696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322E312E
		#tag Getter
			Get
			  return AppleObject.AutomaticTextCompletion
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.AutomaticTextCompletion = value
			  else
			    mAutomaticTextCompletion = value
			  end if
			End Set
		#tag EndSetter
		AutomaticTextCompletion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620747275652C2074686520746578746669656C6420647277617320612062657A656C65642073686170652061726F756E642069742E204578636C7573697665207769746820447261774261636B67726F756E64436F6C6F722E
		#tag Getter
			Get
			  return AppleObject.Bezeled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.Bezeled = value
			  else
			    mBezeled = value
			  end if
			End Set
		#tag EndSetter
		Bezeled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652062657A656C207374796C65206F662074686520746578746669656C64202869662042657A656C6564206973205472756529
		#tag Getter
			Get
			  return AppleObject.BezelStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.BezelStyle = value
			  else
			    mBezelstyle = value
			  end if
			End Set
		#tag EndSetter
		BezelStyle As AppleTextFieldCell.NSTextFieldBezelStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 51756974652073696D696C617220746F20426F726465722C206275742064726177732074686520626F7264657220612062697420746869636B65722E
		#tag Getter
			Get
			  return AppleObject.Bordered
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.Bordered = value
			  else
			    mBordered = value
			  end if
			End Set
		#tag EndSetter
		Bordered As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F66207468652063656C6C2E
		#tag Getter
			Get
			  return AppleObject.ControlSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.ControlSize = value
			  else
			    mControlSize = value
			  end if
			End Set
		#tag EndSetter
		ControlSize As AppleControl.NSControlSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 456E61626C65732064726177696E67206F6620746865206261636B67726F756E64636F6C6F722E204578636C757369766520776974682042657A656C65642E
		#tag Getter
			Get
			  return AppleObject.DrawsBackground
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.Drawsbackground = value
			  else
			    mDrawsbackground = value
			  end if
			End Set
		#tag EndSetter
		DrawBackgroundColor As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private hasInited As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mAllowsCharacterPickerTouchBarItem As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mallowsDefaultTighteningForTruncation As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mAutomaticTextCompletion As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F66206C696E65732074686520546578746669656C642063616E20646973706C61792E
		#tag Getter
			Get
			  return AppleObject.MaximumNumberOfLines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.MaximumNumberOfLines = value
			  else
			    mMaximumNumberOfLines = value
			  end if
			End Set
		#tag EndSetter
		MaxNumberOfLines As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mBezeled As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mBezelStyle As AppleTextFieldCell.NSTextFieldBezelStyle = AppleTextFieldCell.NSTextFieldBezelStyle.Square
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mBordered As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mControlSize As AppleControl.NSControlSize
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mDrawsbackground As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mMaximumNumberOfLines As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mPreferredMaxLayoutWidth As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mSingleLineMode As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 51756974652073696D696C617220746F20426F726465722C206275742064726177732074686520626F7264657220612062697420746869636B65722E
		#tag Getter
			Get
			  return AppleObject.PreferredMaxLayoutWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.PreferredMaxLayoutWidth = value
			  else
			    mPreferredMaxLayoutWidth = value
			  end if
			End Set
		#tag EndSetter
		PreferredMaxWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 51756974652073696D696C617220746F20426F726465722C206275742064726177732074686520626F7264657220612062697420746869636B65722E
		#tag Getter
			Get
			  return AppleObject.SingleLineMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.SingleLineMode = value
			  else
			    mSingleLineMode = value
			  end if
			End Set
		#tag EndSetter
		SingleLineMode As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alignment"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowCharacterPickerTouchbarItem"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTighteningForTruncation"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyCheckSpelling"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticTextCompletion"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bezeled"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BezelStyle"
			Visible=true
			Group="Appearance"
			Type="AppleTextFieldCell.NSTextFieldBezelStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Square"
				"1 - Rounded"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bordered"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="AppleControl.NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CueText"
			Visible=true
			Group="Initial State"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawBackgroundColor"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=true
			Group="Appearance"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="22"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LimitText"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mask"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxNumberOfLines"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredMaxWidth"
			Visible=true
			Group="Behavior"
			InitialValue="-1.0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleLineMode"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Initial State"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
