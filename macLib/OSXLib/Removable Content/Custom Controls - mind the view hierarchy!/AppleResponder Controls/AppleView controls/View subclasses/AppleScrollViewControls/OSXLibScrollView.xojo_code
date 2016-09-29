#tag Class
Protected Class OSXLibScrollView
Inherits OSXLibView
	#tag Event
		Sub Close()
		  RaiseEvent Close
		  if AppleObject <> nil then
		    RemoveNotifications
		    RemoveHandlers AppleObject
		  end if
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C2073686F756C64206C6F73652074686520666F6375732E2052657475726E207472756520746F2064656E7920746869732E
		Function DontLoseFocus() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Function InitControl() As AppleView
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  
		  
		  dim obj as AppleScrollView = raiseevent InitControl // Let’s see if a subclass wants to establish itself instead
		  if obj = nil then // no!
		    if mTempObject <> nil then // TempObject became necessary to enable Inspector behavior. 
		      // This fires earlier than the open event of the canvas, so Inspector hits a nil object when it tries to set its properties.
		      // That’s why TempObject buffers the Scrollview until the control is really opened.
		      obj = mTempObject
		    else // No tempObject: Create a new one!
		      obj = CreateObject
		    end if
		    // and adapt it to the current bounds of the Xojo control.
		    obj.Frame = FoundationFrameWork.NSMakeRect (0,0,me.Width, me.Height)
		    obj.AutoResizingMask = AppleAutoresizingMask.FullResize // make it fully resizable
		  end if
		  mTempObject = nil // remove any unwanted retain cycles
		  return obj // So it will receive its super’s events
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365E2809973207363726F6C6C20776865656C2E
		Sub MouseWheel(anEvent As AppleNSEvent)
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AttachHandlers(obj as appleScrollview)
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
		  AddHandler obj.willRemoveSubview, Addressof informOnwillRemoveSubview
		  AddHandler obj.WillResize, Addressof informOnviewWillStartLiveResize
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C206D6574686F6420746F2061766F696420496E73706563746F722070726F706572746965732068697474696E672061204E696C20766965772E
		Private Function CreateObject() As AppleScrollView
		  dim obj as new AppleScrollView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		  
		  AttachHandlers(obj) // Reroute its events so this Xojo control gets them
		  
		  // Install notifications:
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (applescrollview.kNSScrollViewWillStartLiveMagnifyNotification, obj, AppleOperationQueue.MainQueue, new appleblock (Addressof startLiveMagnify)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (applescrollview.kNSScrollViewDidEndLiveMagnifyNotification, obj, AppleOperationQueue.MainQueue, new appleblock (Addressof endLiveMagnify)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (applescrollview.kNSScrollViewWillStartLiveScrollNotification, obj, AppleOperationQueue.MainQueue, new appleblock (Addressof startLiveScroll)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (applescrollview.kNSScrollViewDidLiveScrollNotification, obj, AppleOperationQueue.MainQueue, new appleblock (Addressof endLiveScroll)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (applescrollview.kNSScrollViewDidEndLiveScrollNotification, obj, AppleOperationQueue.MainQueue, new appleblock (Addressof finishLiveScroll)))
		  
		  return obj
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub endLiveMagnify(notification as ptr)
		  if me <> nil then raiseevent LiveMagnificationFinished
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub endLiveScroll(notification as ptr)
		  if me <> nil then raiseevent LiveScrolled
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub finishLiveScroll(notification as ptr)
		  if me <> nil then raiseevent LiveScrollFinished
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers(obj as appleScrollview)
		  // AddHandler obj.AcceptsFirstResponder, Addressof informOnAcceptsFirstResponder
		  // AddHandler obj.DontBecomeFirstResponder, Addressof informOnBecomeFirstResponder
		  // AddHandler obj.DontResignFirstResponder, Addressof informOnresignFirstResponder
		  
		  RemoveHandler obj.BeginGesture, Addressof informOnbeginGestureWithEvent
		  RemoveHandler obj.EndGesture, Addressof informOnEndGestureWithEvent
		  RemoveHandler obj.Rotate, Addressof informOnrotateWithEvent
		  // AddHandler obj.SmartMagnify, Addressof informOnsmartMagnifyWithEvent
		  RemoveHandler obj.Swipe, Addressof informOnswipeWithEvent
		  RemoveHandler obj.ForwardElasticScroll, Addressof informOnwantsForwardedScrollEventsForAxis
		  RemoveHandler obj.TrackSwipes, Addressof informOnwantsScrollEventsForSwipeTrackingOnAxis
		  
		  
		  
		  RemoveHandler obj.FlagsChanged, Addressof informOnFlagsChanged
		  RemoveHandler obj.KeyDown, Addressof informOnKeyDown
		  RemoveHandler obj.KeyUp, Addressof informOnKeyUp
		  
		  
		  RemoveHandler obj.AnimationDidStart, Addressof informOnanimationDidStart
		  RemoveHandler obj.AnimationDidStop, Addressof informOnanimationDidStop
		  RemoveHandler obj.AnimationFinished, Addressof InformOnNSAnimationFinished
		  
		  
		  RemoveHandler obj.MouseDown, Addressof informOnMouseDown
		  RemoveHandler obj.MouseEntered, Addressof informOnMouseentered
		  RemoveHandler obj.MouseDragged, Addressof informOnMouseDragged
		  RemoveHandler obj.MouseExited, Addressof informOnMouseExited
		  RemoveHandler obj.MouseMoved, Addressof informOnMouseMoved
		  RemoveHandler obj.MouseUp, Addressof informOnMouseUp
		  
		  RemoveHandler obj.RightMouseDown, Addressof informOnRightMouseDown
		  RemoveHandler obj.RightMouseDragged, Addressof informOnRightMouseDragged
		  RemoveHandler obj.RightMouseUp, Addressof informOnRightMouseUp
		  
		  RemoveHandler obj.OtherMouseDown, Addressof informOnOtherMouseDown
		  RemoveHandler obj.OtherMouseDragged, Addressof informOnOtherMouseDragged
		  
		  // AddHandler obj.ScrollWheel, Addressof informOnScrollWheel
		  
		  
		  RemoveHandler obj.TouchesBegan, Addressof informOntouchesBeganWithEvent
		  RemoveHandler obj.TouchesMoved, Addressof informOntouchesMovedWithEvent
		  RemoveHandler obj.TouchesCancelled, Addressof informOntouchesCancelledWithEvent
		  RemoveHandler obj.TouchesEnded, Addressof informOntouchesEndedWithEvent
		  
		  
		  RemoveHandler obj.PressureChange, Addressof informOnpressureChangeWithEvent
		  RemoveHandler obj.TabletPoint, Addressof informOntabletPoint
		  RemoveHandler obj.TabletProximity, Addressof informOntabletProximity
		  
		  RemoveHandler obj.WillPresentError, Addressof informOnwillPresentError
		  
		  
		  // NSView events:
		  RemoveHandler obj.ViewDidMoveToWindow, Addressof informOnviewDidMoveToWindow
		  
		  // AddHandler obj.AllowsVibrancy, Addressof informOnAllowsVibrancy
		  // AddHandler obj.opaque, Addressof informOnopaque
		  
		  // AddHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
		  // AddHandler obj.DidAddSubview, Addressof informOnDidAddSubview
		  RemoveHandler obj.DidResize, Addressof informOnViewDidEndLiveResize
		  RemoveHandler obj.MenuForEvent, Addressof informOnMenuForEvent
		  RemoveHandler obj.ViewDidHide, Addressof informOnViewDidHide
		  RemoveHandler obj.ViewDidUnHide, Addressof informOnViewDidUnHide
		  RemoveHandler obj.ViewWillMoveToSuperview, Addressof informOnViewWillMoveToSuperview
		  RemoveHandler obj.ViewWillMoveToWindow, Addressof informOnViewWillMoveToWindow
		  RemoveHandler obj.WillOpenMenuForEvent, Addressof informOnWillOpenMenu
		  RemoveHandler obj.willRemoveSubview, Addressof informOnwillRemoveSubview
		  RemoveHandler obj.WillResize, Addressof informOnviewWillStartLiveResize
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveNotifications()
		  for each o as AppleNotificationObject in NotificationObjects
		    AppleNotificationCenter.RemoveObserver o
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub startLiveMagnify(notification as ptr)
		  if me <> nil then raiseevent LiveMagnificationStart
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub startLiveScroll(notification as ptr)
		  if me <> nil then raiseevent LiveScrollStart
		  #pragma unused notification
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event InitControl() As AppleScrollview
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520656E64206F662061206D61676E69667920676573747572652E
		Event LiveMagnificationFinished()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F662061206D61676E69667920676573747572652E
		Event LiveMagnificationStart()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573206166746572206368616E67696E672074686520636C69707669657720626F756E6473206F726967696E2064756520746F206120757365722D696E69746961746564206576656E742E
		Event LiveScrolled()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520656E64206F66206C697665207363726F6C6C20747261636B696E672E
		Event LiveScrollFinished()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F6620757365722D696E69746961746564206C697665207363726F6C6C20747261636B696E67202867657374757265207363726F6C6C206F72207363726F6C6C657220747261636B696E672C20666F72206578616D706C652C207468756D62206472616767696E67292E
		Event LiveScrollStart()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 416C6C6F777320746865207573657220746F206D61676E69667920746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  return AppleObject.AllowsMagnification
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.AllowsMagnification = value
			End Set
		#tag EndSetter
		AllowMagnification As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865205363726F6C6C76696577206F626A65637420697473656C662E20526561642D6F6E6C792E
		#tag Getter
			Get
			  if mAppleObject <> nil then
			    return applescrollview(mAppleObject)
			  else
			    if mTempObject = nil then mTempObject = CreateObject
			    return mTempObject
			  end if
			  
			  
			End Get
		#tag EndGetter
		AppleObject As AppleScrollView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C6C6F777320746865207573657220746F206D61676E69667920746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  return AppleObject.BorderType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.BorderType = value
			End Set
		#tag EndSetter
		BorderType As AppleView.NSBordertype
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865205363726F6C6C766965772073686F7773206120686F72697A6F6E74616C207363726F6C6C65722E
		#tag Getter
			Get
			  return AppleObject.HasHorizontalScroller
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.HasHorizontalScroller = value
			End Set
		#tag EndSetter
		HorizontalScroller As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C206D61676E6966636174696F6E20666163746F72206F6620746865205363726F6C6C766965772E
		#tag Getter
			Get
			  return AppleObject.Magnification
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Magnification = value
			End Set
		#tag EndSetter
		Magnification As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mTempObject As AppleScrollView
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected NotificationObjects() As AppleNotificationObject
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865205363726F6C6C766965772073686F7773206120686F72697A6F6E74616C207363726F6C6C65722E
		#tag Getter
			Get
			  return AppleObject.HasVerticalScroller
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.HasVerticalScroller = value
			End Set
		#tag EndSetter
		VerticalScroller As Boolean
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
			Name="AllowMagnification"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowVibrancy"
			Group="Behavior"
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
			Name="BorderType"
			Visible=true
			Group="Behavior"
			InitialValue="None"
			Type="AppleView.NSBordertype"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Line"
				"2 - Bezel"
				"3 - Groove"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
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
			Name="HorizontalScroller"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			Name="Magnification"
			Visible=true
			Group="Behavior"
			InitialValue="1.0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
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
			Name="Transparent"
			Group="Behavior"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalScroller"
			Visible=true
			Group="Behavior"
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
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
