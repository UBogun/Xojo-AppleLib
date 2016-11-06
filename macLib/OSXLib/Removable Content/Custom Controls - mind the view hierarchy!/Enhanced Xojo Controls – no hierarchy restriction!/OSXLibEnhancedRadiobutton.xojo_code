#tag Class
Protected Class OSXLibEnhancedRadiobutton
Inherits Radiobutton
	#tag Event
		Sub Open()
		  dim mappleobject as AppleButton = me.AppleObject
		  mappleobject.AlternateTitle = mAlternateCaption
		  if mimage <> nil then mappleobject.Image = mimage.toappleimage
		  if malternateimage <> nil then mappleobject.AlternateImage = malternateImage.toappleimage
		  mappleobject.ImageScaling = mImageScaling
		  mappleobject.ImagePosition = mImagePosition
		  mappleobject.BezelStyle = mbezelstyle
		  mappleobject.ButtonType = mButtonType
		  if not mKeyEquivalent.empty then mappleobject.KeyEquivalent = mKeyEquivalent
		  if not msound.empty then mAppleObject.sound = AppleSound.SoundNamed (msound)
		  mappleobject.SpringLoaded = mSpringLoaded
		  mappleobject.Bordered = MBordered
		  mappleobject.Transparent = mTransparent
		  mappleobject.ShowsBorderOnlyWhileMouseInside = mshowsBorderOnlyWhileMouseInside
		  mappleobject.allowsMixedState = mallowsMixedState
		  if mbezelcolor <> &cffffffff then mappleobject.BezelColor = mbezelcolor.toapplecolor
		  mappleobject.MaxAcceleratorLevel = mMaxAcceleratorLevel
		  mappleobject.ImageHugsTitle = mImageHugsTitle
		  
		  mimage = nil
		  malternateimage = nil
		  hasinited = true
		  RaiseEvent open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Highlight(value as Boolean)
		  AppleObject.Highlight = Value
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.allowsMixedState
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.allowsMixedState = value
			  else
			    mallowsMixedState = value
			  end if
			End Set
		#tag EndSetter
		AllowsMixedState As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.AlternateTitle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.AlternateTitle = value
			  else
			    mAlternateCaption = value
			  end if
			End Set
		#tag EndSetter
		AlternateCaption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.AlternateImage.toPicture
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.AlternateImage = value.toAppleImage
			  else
			    mAlternateImage = value
			  end if
			End Set
		#tag EndSetter
		AlternateImage As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    return new AppleButton(ptr(me.Handle))
			  #endif
			End Get
		#tag EndGetter
		AppleObject As AppleButton
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.BezelColor.toColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.BezelColor = value.toapplecolor
			  else
			    mBezelcolor = value
			  end if
			End Set
		#tag EndSetter
		BezelColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
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
		BezelStyle As AppleButtonCell.NSBezelStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.ButtonType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.ButtonType = value
			  else
			    mButtonType = value
			  end if
			End Set
		#tag EndSetter
		ButtonType As AppleButton.NSButtonType
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private hasInited As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.Image.toPicture
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.Image = value.toAppleImage
			  else
			    mImage = value
			  end if
			End Set
		#tag EndSetter
		Image As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.ImageHugsTitle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.ImageHugsTitle = value
			  else
			    mImageHugsTitle = value
			  end if
			End Set
		#tag EndSetter
		ImageHugsTitle As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.ImagePosition
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.ImagePosition = value
			  else
			    mImagePosition = value
			  end if
			End Set
		#tag EndSetter
		ImagePosition As AppleCell.NSCellImagePosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.ImageScaling
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.ImageScaling = value
			  else
			    mImageScaling = value
			  end if
			End Set
		#tag EndSetter
		ImageScaling As Appkitframework.NSImageScaling
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.KeyEquivalent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.KeyEquivalent = value
			  else
			    mKeyEquivalent = value
			  end if
			End Set
		#tag EndSetter
		KeyEquivalent As Text
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mallowsMixedState As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mAlternateCaption As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mAlternateImage As Picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.MaxAcceleratorLevel
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.MaxAcceleratorLevel = value
			  else
			    mMaxAcceleratorLevel = value
			  end if
			End Set
		#tag EndSetter
		MaxAcceleratorLevel As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mBezelcolor As Color = &cffffffff
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mBezelStyle As AppleButtonCell.NSBezelStyle = AppleButtonCell.NSBezelStyle.Rounded
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mBordered As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mButtonType As AppleButton.NSButtonType = AppleButton.NSButtonType.MomentaryLight
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mImageHugsTitle As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mImagePosition As AppleCell.NSCellImagePosition = AppleCell.NSCellImagePosition.NoImage
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mImageScaling As appkitframework.nsimageScaling = AppKitFramework.NSImageScaling.ProportionallyUpOrDown
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mKeyEquivalent As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mMaxAcceleratorLevel As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mshowsBorderOnlyWhileMouseInside As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mSound As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mSpringLoaded As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mTransparent As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.showsBorderOnlyWhileMouseInside
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.showsBorderOnlyWhileMouseInside = value
			  else
			    mshowsBorderOnlyWhileMouseInside = value
			  end if
			End Set
		#tag EndSetter
		ShowsBorderOnlyWhileMouseInside As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if AppleObject.Sound <> nil then return AppleObject.Sound.Name
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.sound = AppleSound.SoundNamed (value)
			  else
			    msound = value
			  end if
			End Set
		#tag EndSetter
		Sound As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.SpringLoaded
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.SpringLoaded = value
			  else
			    mSpringLoaded = value
			  end if
			End Set
		#tag EndSetter
		SpringLoaded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.Transparent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if hasinited then
			    AppleObject.Transparent = value
			  else
			    mTransparent = value
			  end if
			End Set
		#tag EndSetter
		Transparent As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsMixedState"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateCaption"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateImage"
			Visible=true
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BezelColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cffffffff"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BezelStyle"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="AppleButtonCell.NSBezelStyle"
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
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bordered"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonType"
			Visible=true
			Group="Behavior"
			InitialValue="4"
			Type="AppleButton.NSButtonType"
			EditorType="Enum"
			#tag EnumValues
				"0 - MomentaryLight"
				"1 - PushOnPushOff"
				"2 - Toggle"
				"3 - Switch"
				"4 - Radio"
				"5 - MomentaryChange"
				"6 - OnOff"
				"7 - MomentaryPushIn"
				"8 - Accelerator"
				"9 - MultiLevelAccelerator"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Appearance"
			InitialValue="Untitled"
			Type="String"
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
			Name="Image"
			Visible=true
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageHugsTitle"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagePosition"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleCell.NSCellImagePosition"
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
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Appkitframework.NSImageScaling"
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
			Name="KeyEquivalent"
			Visible=true
			Group="Behavior"
			Type="Text"
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
			Name="MaxAcceleratorLevel"
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
			Name="ShowsBorderOnlyWhileMouseInside"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sound"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpringLoaded"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value"
			Visible=true
			Group="Initial State"
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
