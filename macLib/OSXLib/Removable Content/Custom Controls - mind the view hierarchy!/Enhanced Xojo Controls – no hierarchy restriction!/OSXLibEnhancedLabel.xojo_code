#tag Class
Protected Class OSXLibEnhancedLabel
Inherits Label
	#tag Event
		Sub Open()
		  #If TargetMacOS
		    Dim mappleobject As AppleTextField = Me.AppleObject
		    mappleobject.DrawsBackground = mDrawsBackground
		    mappleobject.BackgroundColor = mbackgroundcolor.toapplecolor
		    mappleobject.PlaceholderString = mCueText
		  #EndIf
		  RaiseEvent Open
		  
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If targetmacos
			    return new AppleTextField(ptr(me.Handle))
			  #endif
			End Get
		#tag EndGetter
		AppleObject As AppleTextField
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652054657874436F6C6F72204173204E53436F6C6F72
		#tag Getter
			Get
			  #If TargetMacOS
			    return AppleObject.BackgroundColor
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    AppleObject.BackgroundColor = value
			  #EndIf
			End Set
		#tag EndSetter
		BackgroundAppleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652054657874436F6C6F72204173204E53436F6C6F72
		#tag Getter
			Get
			  #If TargetMacOS
			    return AppleObject.BackgroundColor.toColor
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    if hasinited then
			      AppleObject.BackgroundColor = value.toapplecolor
			    Else
			      mbackgroundcolor = value
			    End If
			  #EndIf
			End Set
		#tag EndSetter
		BackgroundColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652054657874436F6C6F72204173204E53436F6C6F72
		#tag Getter
			Get
			  #If TargetMacOS
			    return AppleObject.PlaceholderString
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    if hasinited then
			      AppleObject.PlaceholderString = value
			    Else
			      mCueText = value
			    End If
			  #EndIf
			End Set
		#tag EndSetter
		CueText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652054657874436F6C6F72204173204E53436F6C6F72
		#tag Getter
			Get
			  #If TargetMacOS
			    return AppleObject.DrawsBackground
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    if hasinited then
			      AppleObject.DrawsBackground = value
			    Else
			      mDrawsBackground = value
			    End If
			  #EndIf
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private hasinited As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mbackgroundcolor As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCueText As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDrawsBackground As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652054657874436F6C6F72204173204E53436F6C6F72
		#tag Getter
			Get
			  #If TargetMacOS
			    return AppleObject.TextColor
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS
			    AppleObject.TextColor = value
			  #EndIf
			End Set
		#tag EndSetter
		TextAppleColor As AppleColor
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cffffff00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CueText"
			Visible=true
			Group="Appearance"
			Type="Text"
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
			Name="DrawsBackground"
			Visible=true
			Group="Appearance"
			InitialValue="False"
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="20"
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
			Name="InitialParent"
			Group="Position"
			Type="String"
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
			Name="Multiline"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selectable"
			Visible=true
			Group="Appearance"
			InitialValue="False"
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
			Name="Text"
			Visible=true
			Group="Appearance"
			InitialValue="Untitled"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlign"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"1 - Center"
				"2 - Right"
			#tag EndEnumValues
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
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
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
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
