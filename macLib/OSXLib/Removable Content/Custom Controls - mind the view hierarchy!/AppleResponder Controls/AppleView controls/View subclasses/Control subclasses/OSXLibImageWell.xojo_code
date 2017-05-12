#tag Class
Protected Class OSXLibImageWell
Inherits OSXLibControl
	#tag Event
		Function InitControl() As AppleControl
		  dim obj as AppleImageView = raiseevent InitControl // Let’s see if a subclass wants to establish itself instead
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
		    obj.AutoResizingMask = new AppleAutoresizingMask(self)
		  end if
		  mTempObject = nil // remove any unwanted retain cycles
		  return obj // So it will receive its super’s events
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AttachHandlers(obj as AppleImageView)
		  // AddHandler obj.AcceptsFirstResponder, Addressof informOnAcceptsFirstResponder
		  // AddHandler obj.DontBecomeFirstResponder, Addressof informOnBecomeFirstResponder
		  // AddHandler obj.DontResignFirstResponder, Addressof informOnresignFirstResponder
		  
		  AddHandler obj.BeginGesture, Addressof informOnbeginGestureWithEvent
		  AddHandler obj.EndGesture, Addressof informOnEndGestureWithEvent
		  AddHandler obj.Rotate, Addressof informOnrotateWithEvent
		  // AddHandler obj.SmartMagnify, Addressof informOnsmartMagnifyWithEvent
		  AddHandler obj.Swipe, Addressof informOnswipeWithEvent
		  AddHandler obj.ForwardElasticScroll, Addressof informOnwantsForwardedScrollEventsForAxis
		  AddHandler obj.TrackSwipes, Addressof informOnwantsScrollEventsForSwipeTrackingOnAxis
		  
		  
		  
		  AddHandler obj.FlagsChanged, Addressof informOnFlagsChanged
		  AddHandler obj.KeyDown, Addressof informOnKeyDown
		  AddHandler obj.KeyUp, Addressof informOnKeyUp
		  
		  
		  AddHandler obj.AnimationDidStart, Addressof informOnanimationDidStart
		  AddHandler obj.AnimationDidStop, Addressof informOnanimationDidStop
		  AddHandler obj.AnimationFinished, Addressof InformOnNSAnimationFinished
		  
		  
		  AddHandler obj.MouseDown, Addressof informOnMouseDown
		  AddHandler obj.MouseEntered, Addressof informOnMouseentered
		  AddHandler obj.MouseDragged, Addressof informOnMouseDragged
		  AddHandler obj.MouseExited, Addressof informOnMouseExited
		  AddHandler obj.MouseMoved, Addressof informOnMouseMoved
		  AddHandler obj.MouseUp, Addressof informOnMouseUp
		  
		  AddHandler obj.RightMouseDown, Addressof informOnRightMouseDown
		  AddHandler obj.RightMouseDragged, Addressof informOnRightMouseDragged
		  AddHandler obj.RightMouseUp, Addressof informOnRightMouseUp
		  
		  AddHandler obj.OtherMouseDown, Addressof informOnOtherMouseDown
		  AddHandler obj.OtherMouseDragged, Addressof informOnOtherMouseDragged
		  
		  // AddHandler obj.ScrollWheel, Addressof informOnScrollWheel
		  
		  
		  AddHandler obj.TouchesBegan, Addressof informOntouchesBeganWithEvent
		  AddHandler obj.TouchesMoved, Addressof informOntouchesMovedWithEvent
		  AddHandler obj.TouchesCancelled, Addressof informOntouchesCancelledWithEvent
		  AddHandler obj.TouchesEnded, Addressof informOntouchesEndedWithEvent
		  
		  
		  AddHandler obj.PressureChange, Addressof informOnpressureChangeWithEvent
		  AddHandler obj.TabletPoint, Addressof informOntabletPoint
		  AddHandler obj.TabletProximity, Addressof informOntabletProximity
		  
		  AddHandler obj.WillPresentError, Addressof informOnwillPresentError
		  
		  
		  // NSView events:
		  AddHandler obj.ViewDidMoveToWindow, Addressof informOnviewDidMoveToWindow
		  
		  // AddHandler obj.AllowsVibrancy, Addressof informOnAllowsVibrancy
		  // AddHandler obj.opaque, Addressof informOnopaque
		  
		  // AddHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
		  // AddHandler obj.DidAddSubview, Addressof informOnDidAddSubview
		  AddHandler obj.DidResize, Addressof informOnViewDidEndLiveResize
		  AddHandler obj.MenuForEvent, Addressof informOnMenuForEvent
		  AddHandler obj.ViewDidHide, Addressof informOnViewDidHide
		  AddHandler obj.ViewDidUnHide, Addressof informOnViewDidUnHide
		  AddHandler obj.ViewWillMoveToSuperview, Addressof informOnViewWillMoveToSuperview
		  AddHandler obj.ViewWillMoveToWindow, Addressof informOnViewWillMoveToWindow
		  AddHandler obj.WillOpenMenuForEvent, Addressof informOnWillOpenMenu
		  // AddHandler obj.willRemoveSubview, Addressof informOnwillRemoveSubview
		  AddHandler obj.WillResize, Addressof informOnviewWillStartLiveResize
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C206D6574686F6420746F2061766F696420496E73706563746F722070726F706572746965732068697474696E672061204E696C20766965772E
		Private Function CreateObject() As AppleImageView
		  dim obj as new AppleImageView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case an imageview.
		  
		  self.AttachHandlers(obj) // Reroute its events so this Xojo control gets them
		  
		  // Install notifications:
		  
		  return obj
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event InitControl() As AppleImageView
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520696D6167652076696577206C657473207468652075736572206375742C20636F70792C20616E642070617374652074686520696D61676520636F6E74656E74732E
		#tag Getter
			Get
			  return AppleObject.AllowsCutCopyPaste
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.AllowsCutCopyPaste = value
			End Set
		#tag EndSetter
		AllowsCutCopyPaste As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D6167652076696577206175746F6D61746963616C6C7920706C61797320616E696D6174656420696D616765732E
		#tag Getter
			Get
			  return AppleObject.Animates
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Animates = value
			End Set
		#tag EndSetter
		Animates As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865205363726F6C6C76696577206F626A65637420697473656C662E20526561642D6F6E6C792E
		#tag Getter
			Get
			  if mAppleObject <> nil then
			    return AppleImageView(mAppleObject)
			  else
			    if mTempObject = nil then mTempObject = CreateObject
			    return mTempObject
			  end if
			  
			  
			End Get
		#tag EndGetter
		AppleObject As Appleimageview
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D6167652076696577206175746F6D61746963616C6C7920706C61797320616E696D6174656420696D616765732E
		#tag Getter
			Get
			  return AppleObject.Editable
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Editable = value
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D61676520646973706C617965642062792074686520696D61676520766965772E
		#tag Getter
			Get
			  return AppleObject.Image.toPicture
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> Nil Then 
			    AppleObject.Image = New AppleImage(value)
			  Else
			    AppleObject.Image = nil
			  End If
			End Set
		#tag EndSetter
		Image As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616C69676E6D656E74206F66207468652063656C6CE280997320696D61676520696E736964652074686520696D61676520766965772E
		#tag Getter
			Get
			  return AppleObject.ImageAlignment
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ImageAlignment = value
			End Set
		#tag EndSetter
		ImageAlignment As appkitframework.NSImageAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C65206F66206672616D65207468617420617070656172732061726F756E642074686520696D6167652E
		#tag Getter
			Get
			  return AppleObject.ImageFrameStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ImageFrameStyle = value
			End Set
		#tag EndSetter
		ImageFrameStyle As appkitframework.NSImageFrameStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C696E67206D6F6465206170706C69656420746F206D616B65207468652063656C6CE280997320696D6167652066697420746865206672616D65206F662074686520696D61676520766965772E
		#tag Getter
			Get
			  return AppleObject.ImageScaling
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ImageScaling = value
			End Set
		#tag EndSetter
		ImageScaling As appkitframework.NSImagescaling
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mTempObject As AppleImageView
	#tag EndProperty


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
			Name="AllowsCutCopyPaste"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowVibrancy"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Animates"
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
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000FF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editable"
			Visible=true
			Group="Behavior"
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
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
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
			Visible=true
			Group="Behavior"
			InitialValue="Default"
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
			Name="Image"
			Visible=true
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageAlignment"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="appkitframework.NSImageAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - TopLeft"
				"3 - TopRight"
				"4 - Left"
				"5 - Bottom"
				"6 - BottomLeft"
				"7 - BottomRight"
				"8 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageFrameStyle"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="appkitframework.NSImageFrameStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Photo"
				"2 - GrayBezel"
				"3 - Groove"
				"4 - Button"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageScaling"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Position"
			Type="String"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
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
			Name="TextValue"
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
			Name="TrackSwipes"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
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
