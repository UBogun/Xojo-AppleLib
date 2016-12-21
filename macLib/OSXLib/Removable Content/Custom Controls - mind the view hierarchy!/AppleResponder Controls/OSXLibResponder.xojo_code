#tag Class
Protected Class OSXLibResponder
Inherits Canvas
	#tag Event
		Sub Close()
		  RaiseEvent Close
		  if not raiseevent CloseControl then
		    RemoveHandlers(AppleObject)
		    mAppleObject = nil
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub DoubleClick(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		End Sub
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  #pragma Unused obj
		  #pragma Unused action
		End Function
	#tag EndEvent

	#tag Event
		Sub DragExit(obj As DragItem, action As Integer)
		  #pragma Unused obj
		  #pragma Unused action
		End Sub
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  #pragma Unused obj
		  #pragma Unused action
		End Function
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  #pragma Unused key
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  #pragma Unused key
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  #pragma Unused x
		  #pragma Unused y
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  #pragma Unused x
		  #pragma Unused y
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused x
		  #pragma Unused y
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  #pragma Unused deltaX
		  #pragma Unused DeltaY
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  RaiseEvent open
		  if  AppleObject = nil then
		    MakeException ("Could not create custom control – object returned was NIL.")
		  end if
		  
		  
		  // dim origview as new appleview(self) // now accessing the view object of the parent canvas we hijack.
		  // dim controller as appleview = origview.SuperView // and jump one point higher in the ciew hierarchy, probably to the window’s content view.
		  // for q as integer = 0 to controller.Subviews.Count -1 // iterating through its subviews
		  // dim subview as appleview = new appleview(controller.Subviews.PtrAtIndex(q)) // fetching the subviews
		  // if subview.id = origview.id then // is this our control?
		  // dim mask as new AppleAutoresizingMask(self) // Yes: Copy the locks 
		  // mAppleObject.AutoResizingMask = mask // … to the autoresizing mask
		  // controller.ReplaceSubview origview,mAppleObject // and kick out the canvas by replacing it with our view
		  // exit 
		  // end if
		  // next
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AttachHandlers(obj as appleresponder)
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
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnAcceptsFirstResponder(responder as appleresponder) As Boolean
		  return me.AcceptFocus
		  #pragma unused responder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnanimationDidStart(responder as appleresponder, Animation As AppleCAAnimation)
		  RaiseEvent AnimationStarted (Animation)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnanimationDidStop(responder as appleresponder, Animation As AppleCAAnimation, Finished as Boolean)
		  RaiseEvent AnimationStopped (Animation, Finished)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnbecomeFirstResponder(responder as appleresponder) As Boolean
		  return not me.AcceptFocus
		  #pragma unused responder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnbeginGestureWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent BeginGesture (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnendGestureWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent EndGesture (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnflagsChanged(responder as appleresponder, anEvent as applensevent)
		  raiseevent ModifierKeysChange (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnkeyDown(responder as appleresponder, anEvent as AppleNSEvent)
		  raiseevent KeyDown(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnkeyUp(responder as appleresponder, anEvent as AppleNSEvent)
		  raiseevent KeyUp(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmagnifyWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent MagnifyGesture(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseDown(responder as appleresponder, anEvent as applensevent)
		  raiseevent MouseDown (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseDragged(responder as appleresponder, anEvent as applensevent)
		  raiseevent MouseDrag(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseEntered(responder as appleresponder, anEvent as applensevent)
		  raiseevent MouseEnter(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseExited(responder as appleresponder, anEvent as applensevent)
		  raiseevent MouseExit(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseMoved(responder as appleresponder, anEvent as applensevent)
		  raiseevent MouseMove(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseUp(responder as appleresponder, anEvent as applensevent)
		  raiseevent MouseUp (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnNSAnimationFinished(responder as appleresponder)
		  RaiseEvent AnimationFinished
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnotherMouseDown(responder as appleresponder, anEvent as applensevent)
		  raiseevent OtherMouseDown (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnOthermouseDragged(responder as appleresponder, anEvent as applensevent)
		  raiseevent OtherMouseDrag(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnOthermouseUp(responder as appleresponder, anEvent as applensevent)
		  raiseevent OtherMouseUp (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnpressureChangeWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent PressureChange(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnresignFirstResponder(responder as appleresponder) As Boolean
		  return not raiseevent DontLoseFocus
		  #pragma unused responder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnrightMouseDown(responder as appleresponder, anEvent as applensevent)
		  raiseevent RightMouseDown (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnrightMouseDragged(responder as appleresponder, anEvent as applensevent)
		  raiseevent RightMouseDragged (anEvent)
		  #pragma unused responder
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnrightMouseUp(responder as appleresponder, anEvent as applensevent)
		  raiseevent RightMouseUp (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnrotateWithEvent(responder as appleresponder, anEvent as AppleNSEvent)
		  raiseevent RotationGesture(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnscrollWheel(responder as appleresponder, anEvent as AppleNSevent)
		  raiseevent Mousewheel (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnsmartMagnifyWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent SmartMagnifyGesture (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnswipeWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent SwipeGesture(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntabletPoint(responder as appleresponder, anEvent as applensevent)
		  raiseevent TabletPoint (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntabletProximity(responder as appleresponder, anEvent as applensevent)
		  raiseevent TabletProximity (anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntouchesBeganWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent TouchesBegan(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntouchesCancelledWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent TouchesCancelled(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntouchesEndedWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent TouchesEnded(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntouchesMovedWithEvent(responder as appleresponder, anEvent as applensevent)
		  raiseevent TouchesMoved(anEvent)
		  #pragma unused responder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnwantsForwardedScrollEventsForAxis(responder as appleresponder, Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
		  return raiseevent ForwardElasticScroll(axis)
		  #pragma unused responder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnwantsScrollEventsForSwipeTrackingOnAxis(responder as appleresponder, Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
		  return raiseevent TrackSwipes(axis)
		  #pragma unused responder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnwillPresentError(responder as appleresponder, error as appleerror) As appleerror
		  return raiseevent customizeError (error)
		  #pragma unused responder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers(obj as appleresponder)
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
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E69736865642E
		Event AnimationFinished()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E69736865642E
		Event AnimationStarted(Animation As AppleCAANimation)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E69736865642E
		Event AnimationStopped(Animation As AppleCAANimation, Finished As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320626567756E206120746F75636820676573747572652E
		Event BeginGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 496E7465726E616C204576656E7420746861742070726576656E74732072756E6E696E67206F662072656D6F766548616E646C6572207768656E207468697320776173206F766572726964656E
		Event CloseControl() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772069732061626F757420746F20646973706C617920616E206572726F72206D6573736167652E2055736520697420746F206368616E676520746865206572726F72206F626A6563742E
		Event CustomizeError(Error As AppleError) As AppleError
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C2073686F756C64206C6F73652074686520666F6375732E2052657475726E207472756520746F2064656E7920746869732E
		Event DontLoseFocus() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732066696E6973686564206120746F75636820676573747572652E
		Event EndGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207768657468657220746F20666F727761726420656C6173746963207363726F6C6C696E672067657374757265206576656E74732075702074686520726573706F6E6465722E
		Event ForwardElasticScroll(Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event InitControl() As AppleResponder
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320707265737365642061206B65792E
		Event KeyDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320707265737365642061206B65792E
		Event KeyUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652074686520757365722068617320626567756E20612070696E636820676573747572652E
		Event MagnifyGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732070726573736564206F722072656C65617365642061206D6F646966696572206B6579202853686966742C20436F6E74726F6C2C20616E6420736F206F6E292E
		Event ModifierKeysChange(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Event MouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365207769746820746865206C65667420627574746F6E20707265737365642E
		Event MouseDrag(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Event MouseEnter(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520637572736F722068617320657869746564206120747261636B696E672072656374616E676C652E
		Event MouseExit(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520637572736F722068617320656E7465726564206120747261636B696E672072656374616E676C652E
		Event MouseMove(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732072656C656173656420746865206C656674206D6F75736520627574746F6E2E
		Event MouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365E2809973207363726F6C6C20776865656C2E
		Event MouseWheel(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320707265737365642061207465727469617279206D6F75736520627574746F6E2E
		Event OtherMouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F7573652077697468206120746572746961727920627574746F6E20707265737365642E
		Event OtherMouseDrag(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732072656C65617365642061207465727469617279206D6F75736520627574746F6E2E
		Event OtherMouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061207072657373757265206368616E6765206F63637572732061732074686520726573756C74206F662061207573657220696E707574206576656E74206F6E20612073797374656D207468617420737570706F7274732070726573737572652073656E73697469766974792E
		Event PressureChange(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173207072657373656420746865207269676874206D6F75736520627574746F6E2E
		Event RightMouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F75736520776974682074686520726967687420627574746F6E20707265737365642E
		Event RightMouseDragged(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732072656C656173656420746865207269676874206D6F75736520627574746F6E2E
		Event RightMouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320626567756E206120726F746174696F6E20676573747572652E
		Event RotationGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220706572666F726D6564206120736D617274207A6F6F6D20676573747572652028646F75626C652D746170292E203634626974206F6E6C7921
		Event SmartMagnifyGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320626567756E206120737769706520676573747572652E
		Event SwipeGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061207461626C65742D706F696E74206576656E7420686173206F636375727265642E
		Event TabletPoint(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061207461626C65742D70726F78696D697479206576656E7420686173206F636375727265642E
		Event TabletProximity(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206E657720736574206F6620746F756368657320686173206265656E207265636F676E697A65642E0A546F206765742074686520736574206F6620746F7563686573207468617420626567616E20666F722074686973207669657720286F722064657363656E64616E7473206F6620746869732076696577292073656E64205B6576656E7420746F75636865734D61746368696E6750686173653A4E53546F7563685068617365426567616E20696E566965773A73656C665D2E
		Event TouchesBegan(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 547261636B696E67206F6620746F756368657320686173206265656E2063616E63656C6C656420666F7220616E7920726561736F6E2E
		Event TouchesCancelled(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120736574206F6620746F756368657320686173206265656E2072656D6F7665642E
		Event TouchesEnded(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206F6E65206F72206D6F726520746F75636865732068617665206D6F7665642E
		Event TouchesMoved(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207472756520746F20747261636B2067657374757265207363726F6C6C206576656E7473207375636820617320612073776970652E
		Event TrackSwipes(Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
	#tag EndHook


	#tag Note, Name = Explanation
		This is a virtual superclass for implementing NSresponder events into custom controls. 
		It is not usable by itself.
		
	#tag EndNote


	#tag Property, Flags = &h0, Description = 496620746865207669657720697320746F2061636365707420746F756368206576656E74732E
		AcceptTouchEvents As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mAppleObject = nil then mAppleObject = RaiseEvent InitControl
			  return mAppleObject
			End Get
		#tag EndGetter
		AppleObject As AppleResponder
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mAppleObject As AppleResponder
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected UsedAddhandler As Boolean
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
			Name="DoubleBuffer"
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
			Visible=true
			Group="Behavior"
			InitialValue="True"
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
