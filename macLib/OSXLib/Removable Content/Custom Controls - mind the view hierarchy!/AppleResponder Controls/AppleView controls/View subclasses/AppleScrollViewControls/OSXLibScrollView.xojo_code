#tag Class
Protected Class OSXLibScrollView
Inherits OSXLibView
	#tag Event
		Function CloseControl() As Boolean
		  if mAppleObject <> nil then
		    RemoveNotifications
		    if UsedAddhandler then RemoveHandlers AppleObject
		    mAppleObject = nil
		  end if
		  return true
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
		    obj = if (mAppleObject = nil, CreateObject, AppleObject)
		    UsedAddhandler = true
		  end if
		  return obj // So it will receive its super’s events
		  
		End Function
	#tag EndEvent

	#tag Event
		Function Open() As Boolean
		  if not raiseevent open then
		    AppleObject.Frame = FoundationFrameWork.NSMakeRect (me.Left, window.height-  (me.top + me.Height), me.Width, me.Height)
		    AppleObject.AutoResizingMask = new AppleAutoresizingMask(self)
		    AppleObject.TranslatesAutoresizingMaskIntoConstraints = true
		    EmbedAppleObject
		  end if
		  return true
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 41646473206120666C6F6174696E67207375627669657720746F2074686520646F63756D656E7420766965772077697468206120737065636966696564206672616D652C206C6F636B696E6720697420746F2061206765737475726541786973206F7074696F6E616C6C79
		Sub AddFloatingSubview(SubView as AppleView, Left as Double, Bottom as Double, Width as Double, Height as Double, GestureAxis As AppleNSEvent.NSEventGestureAxis = AppleNSEvent.NSEventGestureAxis.None)
		  AppleObject.addFloatingSubview SubView, GestureAxis
		  SubView.Frame = FoundationFrameWork.NSMakeRect( Left, Bottom, Width, Height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473206120666C6F6174696E67207375627669657720746F2074686520646F63756D656E7420766965772077697468206120737065636966696564206672616D652C206C6F636B696E6720697420746F2061206765737475726541786973206F7074696F6E616C6C79
		Sub AddFloatingSubview(SubView as Containercontrol, Left as Double, Bottom as Double, Width as Double, Height as Double, GestureAxis As AppleNSEvent.NSEventGestureAxis = AppleNSEvent.NSEventGestureAxis.None)
		  dim v as new AppleView(ptr(SubView.Handle))
		  v.AutoResizingMask = AppleAutoresizingMask.NoLock
		  addFloatingSubview v,  Left, Bottom, Width, Height, GestureAxis
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473206120666C6F6174696E67207375627669657720746F2074686520646F63756D656E7420766965772077697468206120737065636966696564206672616D652C206C6F636B696E6720697420746F2061206765737475726541786973206F7074696F6E616C6C79
		Sub AddFloatingSubview(SubView as Rectcontrol, Left as Double, Bottom as Double, Width as Double, Height as Double, GestureAxis As AppleNSEvent.NSEventGestureAxis = AppleNSEvent.NSEventGestureAxis.None)
		  dim v as new AppleView(SubView)
		  v.AutoResizingMask = AppleAutoresizingMask.NoLock
		  addFloatingSubview v,  Left, Bottom, Width, Height, GestureAxis
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AttachHandlers(obj as appleScrollview)
		  AddHandler obj.AcceptsFirstResponder, Addressof informOnAcceptsFirstResponder
		  AddHandler obj.DontBecomeFirstResponder, Addressof informOnBecomeFirstResponder
		  AddHandler obj.DontResignFirstResponder, Addressof informOnresignFirstResponder
		  
		  AddHandler obj.BeginGesture, Addressof informOnbeginGestureWithEvent
		  AddHandler obj.EndGesture, Addressof informOnEndGestureWithEvent
		  AddHandler obj.Rotate, Addressof informOnrotateWithEvent
		  AddHandler obj.SmartMagnify, Addressof informOnsmartMagnifyWithEvent
		  AddHandler obj.Magnify, Addressof informOnMagnifyWithEvent
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
		  
		  AddHandler obj.ScrollWheel, Addressof informOnScrollWheel
		  
		  
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
		  
		  AddHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
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

	#tag Method, Flags = &h1, Description = 496E7465726E616C206D6574686F6420746F2061766F696420496E73706563746F722070726F706572746965732068697474696E672061204E696C20766965772E
		Protected Function CreateObject() As AppleScrollView
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

	#tag Method, Flags = &h1
		Protected Sub endLiveMagnify(notification as ptr)
		  if me <> nil then raiseevent LiveMagnificationFinished
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub endLiveScroll(notification as ptr)
		  if me <> nil then raiseevent LiveScrolled
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub finishLiveScroll(notification as ptr)
		  if me <> nil then raiseevent LiveScrollFinished
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466C61736820746865206F7665726C6179207363726F6C6C20626172732E
		Sub FlashScrollers()
		  AppleObject.flashScrollers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D61676E69666965732074686520636F6E74656E7420766965772070726F706F7274696F6E616C6C79207375636820746861742074686520676976656E2072656374616E676C6520666974732063656E746572656420696E20746865207363726F6C6C20766965772E0A54686520726573756C74696E67206D61676E696669636174696F6E2076616C756520697320636C697070656420746F20746865206D696E4D61676E696669636174696F6E20616E64206D61784D61676E696669636174696F6E2076616C7565732E20546F20616E696D61746520746865206D61676E696669636174696F6E2C2075736520746865207363726F6C6C76696577E280997320616E696D61746F722E
		Sub Magnify(x as double, y as double, width as double, height as double)
		  AppleObject.Magnify FoundationFrameWork.NSMakeRect (x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers(obj as appleScrollview)
		  RemoveHandler obj.AcceptsFirstResponder, Addressof informOnAcceptsFirstResponder
		  RemoveHandler obj.DontBecomeFirstResponder, Addressof informOnBecomeFirstResponder
		  RemoveHandler obj.DontResignFirstResponder, Addressof informOnresignFirstResponder
		  
		  RemoveHandler obj.BeginGesture, Addressof informOnbeginGestureWithEvent
		  RemoveHandler obj.EndGesture, Addressof informOnEndGestureWithEvent
		  RemoveHandler obj.Rotate, Addressof informOnrotateWithEvent
		  RemoveHandler obj.SmartMagnify, Addressof informOnsmartMagnifyWithEvent
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
		  
		  RemoveHandler obj.ScrollWheel, Addressof informOnScrollWheel
		  
		  
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
		  
		  RemoveHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
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
		  redim NotificationObjects(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C73207468652076697369626C65206172656120746F2061206365727461696E20706F696E742E
		Sub ScrollTo(x as double, y as Double)
		  AppleObject.ScrollPoint (FoundationFrameWork.NSMakePoint(x,y))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C73207468652076697369626C65206172656120746F2061206365727461696E20617265612E
		Sub ScrollTo(x as double, y as Double, width as double, Height as Double)
		  AppleObject.ScrollRectToVisible (FoundationFrameWork.NSMakerect(x,y, width, height))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D61676E6966792074686520636F6E74656E742062792074686520676976656E20616D6F756E7420616E642063656E7465722074686520726573756C74206F6E2074686520676976656E20706F696E742E
		Sub SetMagnification(value as double, x as double, y as double)
		  AppleObject.setMagnification value, FoundationFrameWork.NSMakePoint(x,y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub startLiveMagnify(notification as ptr)
		  if me <> nil then raiseevent LiveMagnificationStart
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub startLiveScroll(notification as ptr)
		  if me <> nil then raiseevent LiveScrollStart
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C617973206F75742074686520636F6D706F6E656E7473206F6620746865207363726F6C6C766965773A2074686520636F6E74656E7420766965772C20746865207363726F6C6C6572732C20616E64207468652072756C65722076696577732E
		Sub UpdateLayout()
		  AppleObject.tile
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466C61736820746865206F7665726C6179207363726F6C6C20626172732E
		Sub UpdateScrollers(clipview as appleview = nil)
		  if clipview = nil then clipview = me.ContentView
		  AppleObject.reflectScrolledClipView  clipview
		End Sub
	#tag EndMethod


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

	#tag Hook, Flags = &h0
		Event Open() As Boolean
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
			  if mAppleObject = nil then
			    mAppleObject = RaiseEvent InitControl
			    if mAppleObject = nil then mAppleObject = CreateObject
			  end if
			  return applescrollview(mAppleObject)
			  
			End Get
		#tag EndGetter
		AppleObject As AppleScrollView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206175746F6D61746963616C6C7920686964657320697473207363726F6C6C2062617273207768656E207468657920617265206E6F74206E65656465642E
		#tag Getter
			Get
			  return AppleObject.AutohidesScrollers
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.AutohidesScrollers = value
			End Set
		#tag EndSetter
		AutohidesScrollers As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206175746F6D61746963616C6C792061646A757374732069747320636F6E74656E7420696E736574732E
		#tag Getter
			Get
			  return AppleObject.AutomaticallyAdjustsContentInsets
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.AutomaticallyAdjustsContentInsets = value
			End Set
		#tag EndSetter
		AutomaticallyAdjustsContentInsets As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520636F6E74656E742076696577E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  return AppleObject.BackgroundColor.toColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.BackgroundColor = new AppleColor(value)
			End Set
		#tag EndSetter
		BackgroundColor As Color
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E6365207468617420746865207363726F6C6C2076696577E28099732073756276696577732061726520696E7365742066726F6D2074686520656E636C6F73696E67207363726F6C6C207669657720647572696E672074696C696E672E
		#tag Getter
			Get
			  return AppleObject.contentInsets
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.contentInsets = value
			End Set
		#tag EndSetter
		ContentInsets As AppkitFramework.NSEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320636F6E74656E7420766965772C207468652076696577207468617420636C6970732074686520646F63756D656E7420766965772E
		#tag Getter
			Get
			  return AppleObject.ContentView
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ContentView = value
			End Set
		#tag EndSetter
		ContentView As AppleClipView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720746865207363726F6C6C2076696577207363726F6C6C732077697468696E2069747320636F6E74656E7420766965772E
		#tag Getter
			Get
			  return AppleObject.DocumentView
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.DocumentView = value
			End Set
		#tag EndSetter
		DocumentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F7274696F6E206F662074686520646F63756D656E7420766965772C20696E20697473206F776E20636F6F7264696E6174652073797374656D2C2076697369626C65207468726F75676820746865207363726F6C6C2076696577E280997320636F6E74656E7420766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleObject.DocumentVisibleRect.toCoreRect
			End Get
		#tag EndGetter
		DocumentVisibleRect As Xojo.Core.Rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720647261777320697473206261636B67726F756E642E
		#tag Getter
			Get
			  return AppleObject.DrawsBackground
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.DrawsBackground = value
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720726564726177732069747320646F63756D656E742076696577207768696C65207363726F6C6C696E6720636F6E74696E756F75736C792E2044656661756C7420547275652E
		#tag Getter
			Get
			  return AppleObject.scrollsDynamically
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.scrollsDynamically = true
			End Set
		#tag EndSetter
		DynamicScroll As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F736974696F6E206F66207468652066696E64206261722E
		#tag Getter
			Get
			  return AppleObject.FindBarPosition
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.FindBarPosition = value
			End Set
		#tag EndSetter
		FindBarPosition As AppleScrollview.NSScrollViewFindBarPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320686F72697A6F6E74616C206C696E65206279206C696E65207363726F6C6C20616D6F756E742E20546869732076616C75652069732075736564207768656E20746865207573657220636C69636B7320746865207363726F6C6C206172726F7773206F6E2074686520686F72697A6F6E74616C207363726F6C6C2062617220776974686F757420686F6C64696E6720646F776E2061206D6F646966696572206B65792E20
		#tag Getter
			Get
			  return AppleObject.HorizontalLineScroll
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.HorizontalLineScroll = value
			End Set
		#tag EndSetter
		HorizontalLineScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F662074686520646F63756D656E742076696577206B6570742076697369626C65207768656E207363726F6C6C696E6720686F72697A6F6E74616C6C79207061676520627920706167652E
		#tag Getter
			Get
			  return AppleObject.HorizontalPageScroll
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.HorizontalPageScroll = value
			End Set
		#tag EndSetter
		HorizontalPageScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206B65657073206120686F72697A6F6E74616C2072756C6572206F626A6563742E
		#tag Getter
			Get
			  return AppleObject.HasHorizontalRuler
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.HasHorizontalRuler = Value
			End Set
		#tag EndSetter
		HorizontalRuler As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320686F72697A6F6E74616C2072756C657220766965772E
		#tag Getter
			Get
			  return AppleObject.horizontalRulerView
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.horizontalRulerView = value
			End Set
		#tag EndSetter
		HorizontalRulerView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320686F72697A6F6E74616C207363726F6C6C696E6720656C6173746963697479206D6F64652E
		#tag Getter
			Get
			  return AppleObject.HorizontalScrollElasticity
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.HorizontalScrollElasticity = value
			End Set
		#tag EndSetter
		HorizontalScrollElasticity As AppleScrollview.NSScrollElasticity
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D2076616C756520746F2077686963682074686520636F6E74656E742063616E206265206D61676E69666965642E2044656661756C7420342E302E
		#tag Getter
			Get
			  return AppleObject.maxMagnification
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.maxMagnification = value
			End Set
		#tag EndSetter
		MaxMagnification As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2076616C756520746F2077686963682074686520636F6E74656E742063616E206265206D61676E69666965642E2044656661756C7420302E32352E
		#tag Getter
			Get
			  return AppleObject.minMagnification
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.minMagnification = value
			End Set
		#tag EndSetter
		MinMagnification As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C20766965772075736573206120707265646F6D696E616E74207363726F6C6C696E67206178697320666F7220636F6E74656E742E
		#tag Getter
			Get
			  return AppleObject.usesPredominantAxisScrolling
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.usesPredominantAxisScrolling = value
			End Set
		#tag EndSetter
		PredominantAxisScrolling As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720646973706C617973206974732072756C6572732E
		#tag Getter
			Get
			  return AppleObject.RulersVisible
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.RulersVisible = value
			End Set
		#tag EndSetter
		RulersVisible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E636520746865207363726F6C6C6572732061726520696E7365742066726F6D207468652065646765206F6620746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  return AppleObject.scrollerInsets
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.scrollerInsets = value
			End Set
		#tag EndSetter
		ScrollerInsets As AppkitFramework.NSEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B6E6F62207374796C65206F66207363726F6C6C20766965777320746861742075736520746865206F7665726C6179207363726F6C6C6572207374796C652E
		#tag Getter
			Get
			  Return AppleObject.ScrollerKnobStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ScrollerKnobStyle = value
			End Set
		#tag EndSetter
		ScrollerKnobStyle As AppleScroller.NSScrollerKnobStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C6572207374796C65207573656420627920746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  return AppleObject.scrollerStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.scrollerStyle = value
			End Set
		#tag EndSetter
		ScrollerStyle As AppleScroller.NSScrollerStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320766572746963616C206C696E65206279206C696E65207363726F6C6C20616D6F756E742E
		#tag Getter
			Get
			  return AppleObject.verticalLineScroll
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.verticalLineScroll = value
			End Set
		#tag EndSetter
		VerticalLineScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F662074686520646F63756D656E742076696577206B6570742076697369626C65207768656E207363726F6C6C696E6720766572746963616C6C79207061676520627920706167652E
		#tag Getter
			Get
			  return AppleObject.verticalPageScroll
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.verticalPageScroll = value
			End Set
		#tag EndSetter
		VerticalPageScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206B65657073206120766572746963616C2072756C6572206F626A6563742E
		#tag Getter
			Get
			  return AppleObject.HasVerticalRuler
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.HasVerticalRuler = value
			End Set
		#tag EndSetter
		VerticalRuler As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320766572746963616C2072756C657220766965772E
		#tag Getter
			Get
			  return AppleObject.verticalRulerView
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.verticalRulerView = value
			End Set
		#tag EndSetter
		VerticalRulerView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320766572746963616C207363726F6C6C696E6720656C6173746963697479206D6F64652E
		#tag Getter
			Get
			  return AppleObject.verticalScrollElasticity
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.verticalScrollElasticity = value
			End Set
		#tag EndSetter
		VerticalScrollElasticity As applescrollview.NSScrollElasticity
	#tag EndComputedProperty

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
			InitialValue="True"
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
			InitialValue="True"
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
			Name="Alpha"
			Visible=true
			Group="Behavior"
			InitialValue="1"
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
			Name="AutohidesScrollers"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyAdjustsContentInsets"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cffffff00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
			Name="DrawsBackground"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DynamicScroll"
			Visible=true
			Group="Behavior"
			InitialValue="true"
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
			Name="FindBarPosition"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleScrollview.NSScrollViewFindBarPosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - AboveHorizontalRuler"
				"1 - AboveContent"
				"2 - BelowContent"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FlippedCoordinates"
			Visible=true
			Group="Behavior"
			InitialValue="false"
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
			Name="HorizontalLineScroll"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalPageScroll"
			Visible=true
			Group="Behavior"
			InitialValue="100"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalRuler"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalScrollElasticity"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleScrollview.NSScrollElasticity"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - None"
				"2 - Allowed"
			#tag EndEnumValues
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
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxMagnification"
			Visible=true
			Group="Behavior"
			InitialValue="4"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinMagnification"
			Visible=true
			Group="Behavior"
			InitialValue="0.25"
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
			Name="PredominantAxisScrolling"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RulersVisible"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollerKnobStyle"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleScroller.NSScrollerKnobStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Dark"
				"2 - Light"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollerStyle"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="AppleScroller.NSScrollerStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Legacy"
				"1 - Overlay"
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
			Visible=true
			Group="Behavior"
			InitialValue="True"
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
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalLineScroll"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalPageScroll"
			Visible=true
			Group="Behavior"
			InitialValue="100"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalRuler"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalScrollElasticity"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="applescrollview.NSScrollElasticity"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - None"
				"2 - Allowed"
			#tag EndEnumValues
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
