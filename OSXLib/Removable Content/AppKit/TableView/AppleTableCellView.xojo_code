#tag Class
Protected Class AppleTableCellView
Inherits AppleView
	#tag Method, Flags = &h21, Description = 437265617465732061206E6577207669657720696E2074686520737065636966696564206672616D652E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577207669657720696E2074686520737065636966696564206672616D652E
		Sub Constructor(Frame as FoundationFrameWork.nsrect)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initWithFrame(alloc(classptr), frame))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTableCellView
		  return if (aptr = nil, nil, new AppleTableCellView(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		draggingimagecomponents missing
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 412070726F7879206F626A65637420666F722074686520726563656976657220746861742063616E206265207573656420746F20696E69746961746520696D706C69656420616E696D6174696F6E20666F722070726F7065727479206368616E6765732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleTableCellView.MakeFromPtr(getanimator(id))
			  #endif
			End Get
		#tag EndGetter
		Animator As AppleTableCellView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F66207468652043656C6C566965772C20696E20616E204E53417070656172616E6365206F626A6563742E0A5468652064656661756C742076616C756520666F7220746869732070726F7065727479206973206E696C2C207768696368206D65616E7320746861742074686520726563656976657220757365732074686520617070656172616E636520697420696E6865726974732066726F6D20746865206E65617265737420616E636573746F722074686174206861732073657420616E20617070656172616E63652E205768656E20796F752073657420617070656172616E636520746F2061206E6F6E2D6E696C2076616C75652C2074686520726563656976657220616E642074686520766965777320697420636F6E7461696E7320757365207468652073706563696669656420617070656172616E63652E0A417661696C61626C652073696E6365204F53582031302E392E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleTableCellView.MakeFromPtr(AppKitFramework.getappearance (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setappearance id, value.id
			  #endif
			End Set
		#tag EndSetter
		Appearance As AppleTableCellView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546869732070726F7065727479206973206175746F6D61746963616C6C79207365742062792074686520656E636C6F73696E6720726F77207669657720746F206C657420746869732076696577206B6E6F77207768617420697473206261636B67726F756E64206C6F6F6B73206C696B652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getBackgroundstyle (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setBackgroundStyle id, value
			  #endif
			End Set
		#tag EndSetter
		BackgroundStyle As AppleCell.NSBackgroundStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSTableCellView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E636520746861742077696C6C2062652075736564207768656E2074686520726563656976657220697320647261776E206F6E73637265656E2C20696E20616E204E53417070656172616E6365206F626A6563742E2028726561642D6F6E6C79290A5468652064656661756C742076616C756520666F7220746869732070726F70657274792069732070726F766964656420627920746865206E65617265737420616E636573746F72206F66207468652072656365697665722074686174206861732073657420616E20617070656172616E63652E0A596F752063616E2075736520746869732070726F706572747920746F20656E73757265207468617420616E206F666673637265656E207669657720736574732074686520617070726F7072696174652063757272656E7420617070656172616E6365207768656E206974206472617773206F6E73637265656E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleTableCellView.MakeFromPtr(AppKitFramework.geteffectiveappearance (id))
			    
			  #endif
			End Get
		#tag EndGetter
		EffectiveAppearance As AppleTableCellView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A656374207468617420726570726573656E7473207468652063656C6C20646174612E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleImageView.MakeFromPtr(AppKitFramework.getimageView (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setimageView id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		ImageView As AppleImageView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A656374207468617420726570726573656E7473207468652063656C6C20646174612E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleObject.MakeFromPtr(AppKitFramework.getobjectValue (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setobjectValue id, if (value = nil, nil, value.GeneralID)
			  #endif
			End Set
		#tag EndSetter
		ObjectValue As AppleGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F772073697A65207374796C652E2028726561642D6F6E6C79290A557365204170706C655461626C65566965772E456666656374697665526F7753697A655374796C6520746F206368616E67652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return TableViewAdditionsForAppkit.getrowSizeStyle (id)
			  #endif
			End Get
		#tag EndGetter
		RowSizeStyle As AppleTableView.NSTableViewRowSizeStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5465787420646973706C61796564206279207468652063656C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleTextField.MakeFromPtr(AppKitFramework.gettextField (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.settextField id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		TextField As AppleTextField
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
			Name="RowSizeStyle"
			Group="Behavior"
			Type="AppleTableView.NSTableViewRowSizeStyle"
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
