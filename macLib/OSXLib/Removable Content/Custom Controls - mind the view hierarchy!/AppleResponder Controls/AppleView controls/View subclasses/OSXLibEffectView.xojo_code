#tag Class
Protected Class OSXLibEffectView
Inherits OSXLibView
	#tag Event , Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Function InitControl() As AppleView
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  
		  dim obj as AppleVisualEffectView = raiseevent InitControl // Let’s see if a subclass wants to establish itself instead
		  if obj = nil then // no!
		    if mTempObject <> nil then // TempObject became necessary to enable Inspector behavior. 
		      // This fires earlier than the open event of the canvas, so Inspector hits a nil object when it tries to set its properties.
		      // That’s why TempObject buffers the Scrollview until the control is really opened.
		      obj = mTempObject
		    else // No tempObject: Create a new one!
		      obj = CreateObject
		    end if
		    // and adapt it to the current bounds of the Xojo control.
		    obj.Frame = FoundationFrameWork.NSMakeRect (me.Left, window.height-  (me.top + me.Height), me.Width, me.Height)
		    obj.AutoResizingMask = AppleAutoresizingMask.FullResize // make it fully resizable
		  end if
		  // If there’s a Backdrop, make it the layer’s contents: 
		  CopyEmbeddedObjects
		  // mTempObject = nil // remove any unwanted retain cycles
		  DontDisableLayerDuringInit = false
		  return obj // So it will receive its super’s events
		  
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 436F7069657320656D6265646465642073756276696577732066726F6D20746865207772617070657220636F6E74726F6C20696620746865792065786973742E
		Protected Sub CopyEmbeddedObjects()
		  dim tempview as new appleview(me)
		  if tempview.Subviews <> nil then
		    dim count as integer = tempview.subviews.count -1
		    if count > -1 then
		      dim superview as appleview = tempview.SuperView
		      for q as integer = 0 to count
		        dim subview as appleview = appleview.MakefromPtr(tempview.Subviews.PtrAtIndex(0))
		        dim control as RectControl = me.Control(subview.id)
		        subview.AutoResizingMask = new AppleAutoresizingMask(control)
		        subview.FrameOrigin = superview.ConvertPointFromView(subview.FrameOrigin, tempview)
		        subview.TranslatesAutoresizingMaskIntoConstraints = true
		        superview.AddSubview subview
		      next
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C206D6574686F6420746F2061766F696420496E73706563746F722070726F706572746965732068697474696E672061204E696C20766965772E
		Private Function CreateObject() As AppleVisualEffectView
		  dim obj as new AppleVisualEffectView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		  
		  // AttachHandlers(obj) // Reroute its events so this Xojo control gets them
		  
		  return obj
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event InitControl() As AppleVisualEffectView
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mAppleObject <> nil then
			    return AppleVisualEffectView(mAppleObject)
			  else
			    if mTempObject = nil then mTempObject = CreateObject
			    return mTempObject
			  end if
			  
			  
			End Get
		#tag EndGetter
		AppleObject As AppleVisualEffectView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320686F77207468652076696577E280997320636F6E74656E74732061726520626C75727265642E2044456661756C7420697320426568696E6457696E646F772E
		#tag Getter
			Get
			  return AppleObject.BlendingMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value = AppleVisualEffectView.NSVisualEffectBlendingMode.WithinWindow then AppleObject.WantsLayer = true
			  AppleObject.BlendingMode = value
			End Set
		#tag EndSetter
		BlendingMode As AppleVisualEffectView.NSVisualEffectBlendingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4966207468652073656C656374696F6E2073686F756C64206472617720696E2022666972737420726573706F6E64657222207374617475732C206F72206E6F742E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  return AppleObject.Emphasized
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Emphasized = value
			End Set
		#tag EndSetter
		Emphasized As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if AppleObject.Maskimage <> nil then return AppleObject.MaskImage.toPicture
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.MaskImage = if (value = nil, nil, value.toAppleImage)
			End Set
		#tag EndSetter
		Maskimage As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.Material
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Material = value
			End Set
		#tag EndSetter
		Material As AppleVisualEffectView.NSVisualEffectMaterial
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mTempObject As AppleVisualEffectView
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F7720746865206D6174657269616C20617070656172616E63652073686F756C64207265666C6563742077696E646F772061637469766974792073746174652E
		#tag Getter
			Get
			  return AppleObject.state
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.state = value
			End Set
		#tag EndSetter
		State As AppleVisualEffectView.NSVisualEffectState
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTouchEvents"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowVibrancy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Group="Behavior"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlendingMode"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleVisualEffectView.NSVisualEffectBlendingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - BehindWindow"
				"1 - WithinWindow"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Emphasized"
			Visible=true
			Group="Behavior"
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
			Name="EraseBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FlippedCoordinates"
			Visible=true
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
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
			InitialValue="-2147483648"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Position"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Maskimage"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Material"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleVisualEffectView.NSVisualEffectMaterial"
			EditorType="Enum"
			#tag EnumValues
				"0 - AppearanceBased"
				"1 - Light"
				"2 - Dark"
				"3 - Titlebar"
				"4 - Selection"
				"5 - Menu"
				"6 - Popover"
				"7 - Sidebar"
				"8 - MediumLight"
				"9 - UltraDark"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Visible=true
			Group="Behavior"
			Type="AppleVisualEffectView.NSVisualEffectState"
			EditorType="Enum"
			#tag EnumValues
				"0 - FollowsWindowActiveState"
				"1 - Active"
				"2 - Inactive"
			#tag EndEnumValues
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
			Visible=true
			Group="Behavior"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TrackSwipes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Group="Behavior"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseCustomColor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Group="Appearance"
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
