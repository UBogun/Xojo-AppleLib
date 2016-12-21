#tag Class
Protected Class AppleResponder
Inherits AppleObject
	#tag Method, Flags = &h0
		Attributes( hidden )  Sub AnimationContextCompletionBlock()
		  raiseevent AnimationFinished
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if id <> nil and mHasOwnership then
		    if XojoControls <> nil and XojoControls.HasKey(id) then 
		      XojoControls.Remove(id)
		      if libdebug then System.DebugLog "removed control for" +me.DebugDescription
		    end if
		    unregisteridentity(self)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub flushBufferedKeyEvents Lib appkitlibname Selector "flushBufferedKeyEvents" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1, Description = 436C6561727320616E7920756E70726F636573736564206B6579206576656E74732E
		Protected Sub FlushKeyboardBuffer()
		  flushBufferedKeyEvents mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimations Lib appkitlibname Selector "animations" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimator Lib appkitlibname Selector "animator" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnextResponder Lib appkitlibname Selector "nextResponder" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function GetOwnerAppleWindow(Obj as AppleObject) As AppleWindow
		  using xojo.Introspection
		  Dim info As TypeInfo = GetType(obj)
		  Dim methods() As MethodInfo = info.Methods
		  for q as integer = methods.Ubound downto 0
		    dim p as MethodInfo = methods(q)
		    if p.Name = kownerWindow then
		      dim w as window = p.Invoke(obj)
		      return new applewindow(w)
		    end if
		  next
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Identity(id as ptr) As AppleResponder
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return AppleResponder(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_acceptsFirstResponder(pid as ptr, sel as ptr) As Boolean
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then return responder.informOnAcceptsFirstResponder
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_animationDidStart(pid as ptr, sel as ptr, animation as ptr) As ptr
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then 
		    responder.informOnanimationDidStart (AppleCAAnimation.MakeFromPtr(animation))
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_animationDidStop(pid as ptr, sel as ptr, animation as ptr, finished as Boolean) As ptr
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then 
		    responder.informanimationDidStop (AppleCAAnimation.MakeFromPtr(animation), finished)
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_becomeFirstResponder(pid as ptr, sel as ptr) As Boolean
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then return responder.informOnbecomeFirstResponder
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_beginGestureWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnbeginGestureWithEvent (AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_endGestureWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnendGestureWithEvent (AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_flagsChanged(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnflagsChanged(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_keyDown(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnkeyDown(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_keyup(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnkeyUp(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_magnifyWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnmagnifyWithEvent (AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseDown(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then 
		    responder.informOnmouseDown(AppleNSEvent.MakeFromPtr(anevent))
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseDragged(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnmouseDragged(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseEntered(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnmouseEntered(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseExited(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnmouseExited(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseMoved(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  
		  if responder <> nil then  responder.informOnmouseMoved(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseUp(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnmouseUp(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_otherMouseDown(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnOtherMouseDown(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_otherMouseDragged(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnOtherMouseDragged(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_otherMouseUp(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnOtherMouseUp (AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_pressureChangeWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnpressureChangeWithEvent(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_resignFirstResponder(pid as ptr, sel as ptr) As Boolean
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then return responder.informOnresignFirstResponder
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_rightMouseDown(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOrightMouseDown(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_rightMouseDragged(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOrightMouseDragged(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_rightMouseUp(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOrightMouseUp (AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_rotateWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnrotateWithEvent(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_scrollWheel(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnscrollWheel(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_smartMagnifyWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnsmartMagnifyWithEvent(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_swipeWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOnswipeWithEvent(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_tabletPoint(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOntabletPoint (AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_tabletProximity(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOntabletProximity(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_touchesBeganWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOntouchesBeganWithEventl(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_touchesCancelledWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOntouchesCancelledWithEventl(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_touchesEndedWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOntouchesEndedWithEventl(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_touchesMovedWithEvent(pid as ptr, sel as ptr, anevent as ptr)
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  responder.informOntouchesMovedWithEventl(AppleNSEvent.MakeFromPtr(anevent))
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_wantsForwardedScrollEventsForAxis(pid as ptr, sel as ptr, axis as AppleNSEvent.NSEventGestureAxis) As Boolean
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  return responder.informOnwantsForwardedScrollEventsForAxis(Axis)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_wantsScrollEventsForSwipeTrackingOnAxis(pid as ptr, sel as ptr, axis as AppleNSEvent.NSEventGestureAxis) As Boolean
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then  return responder.informOnwantsScrollEventsForSwipeTrackingOnAxis(Axis)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_willPresentError(pid as ptr, sel as ptr, error as ptr) As ptr
		  dim responder as AppleResponder = InformInstance(pid)
		  if responder <> nil then 
		    dim result as appleerror = responder.informOnwillPresentError (AppleError.MakeFromPtr(error))
		    return if (result = nil, Error, result.id)
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informanimationDidStop(animation as AppleCAAnimation, finished as Boolean)
		  RaiseEvent animationDidStop (animation, finished)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function InformInstance(id as ptr) As AppleResponder
		  dim ident as AppleResponder = Identity(id)
		  return if (ident = nil, nil, ident)
		  
		  // return if (ident = nil, AppleResponder.MakeFromPtr (id), ident)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnAcceptsFirstResponder() As Boolean
		  return RaiseEvent AcceptsFirstResponder
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnanimationDidStart(animation as AppleCAAnimation)
		  RaiseEvent animationDidStart (animation)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnbecomeFirstResponder() As Boolean
		  return not RaiseEvent DontBecomeFirstResponder
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnbeginGestureWithEvent(anevent as appleNSevent)
		  RaiseEvent BeginGesture(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnendGestureWithEvent(anevent as appleNSevent)
		  RaiseEvent EndGesture(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnflagsChanged(anevent as appleNSevent)
		  RaiseEvent FlagsChanged(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnkeyDown(anevent as appleNSevent)
		  RaiseEvent KeyDown(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnkeyUp(anevent as appleNSevent)
		  RaiseEvent KeyUp(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnmagnifyWithEvent(anevent as appleNSevent)
		  RaiseEvent Magnify(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnmouseDown(anevent as appleNSevent)
		  RaiseEvent MouseDown (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnmouseDragged(anevent as appleNSevent)
		  RaiseEvent MouseDragged (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnmouseEntered(anevent as appleNSevent)
		  RaiseEvent MouseEntered (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnmouseExited(anevent as appleNSevent)
		  RaiseEvent MouseExited (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnmouseMoved(anevent as appleNSevent)
		  RaiseEvent MouseMoved (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnmouseUp(anevent as appleNSevent)
		  RaiseEvent MouseUp (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnotherMouseDown(anevent as appleNSevent)
		  RaiseEvent otherMouseDown(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnOtherMouseDragged(anevent as appleNSevent)
		  RaiseEvent OtherMouseDragged(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnOtherMouseUp(anevent as appleNSevent)
		  RaiseEvent OtherMouseUp(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnpressureChangeWithEvent(anevent as appleNSevent)
		  RaiseEvent PressureChange (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnresignFirstResponder() As Boolean
		  return not RaiseEvent DontResignFirstResponder
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnrotateWithEvent(anevent as appleNSevent)
		  RaiseEvent Rotate(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnscrollWheel(anevent as appleNSevent)
		  RaiseEvent ScrollWheel(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnsmartMagnifyWithEvent(anevent as appleNSevent)
		  RaiseEvent smartMagnify (anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnswipeWithEvent(anevent as appleNSevent)
		  RaiseEvent Swipe(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOntabletPoint(anevent as appleNSevent)
		  RaiseEvent TabletPoint(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOntabletProximity(anevent as appleNSevent)
		  RaiseEvent TabletProximity(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOntouchesBeganWithEventl(anevent as appleNSevent)
		  RaiseEvent TouchesBegan(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOntouchesCancelledWithEventl(anevent as appleNSevent)
		  RaiseEvent TouchesCancelled(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOntouchesEndedWithEventl(anevent as appleNSevent)
		  RaiseEvent TouchesEnded(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOntouchesMovedWithEventl(anevent as appleNSevent)
		  RaiseEvent TouchesMoved(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnwantsForwardedScrollEventsForAxis(axis as AppleNSEvent.NSEventGestureAxis) As Boolean
		  return RaiseEvent ForwardElasticScroll(axis)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnwantsScrollEventsForSwipeTrackingOnAxis(axis as AppleNSEvent.NSEventGestureAxis) As Boolean
		  return RaiseEvent TrackSwipes(axis)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnwillPresentError(error as appleerror) As AppleError
		  return RaiseEvent willPresentError(error)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOrightMouseDown(anevent as appleNSevent)
		  RaiseEvent RightMouseDown(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOrightMouseDragged(anevent as appleNSevent)
		  RaiseEvent RightMouseDragged(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOrightMouseUp(anevent as appleNSevent)
		  RaiseEvent RightMouseUp(anEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleResponder
		  return if (aptr = nil, nil, new appleresponder(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden ) Private Function ParentControl() As OSXLibResponder
		  if XojoControls <> nil then
		    dim  wr as xojo.core.weakref = XojoControls.Lookup (id, nil)  
		    return if (wr = nil, nil,  OSXLibResponder(wr.Value))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PresentError(Error As AppleError) As Boolean
		  Return presentError (id, error.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 50726573656E747320616E206572726F7220616C65727420746F20746865207573657220617320616E206170706C69636174696F6E2D6D6F64616C206469616C6F672E
		Protected Declare Function presentError Lib appkitlibname Selector "presentError:" (id as ptr, error as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub RegisterIdentity(Identity As object)
		  XojoIdentity.Value (id) = xojo.core.WeakRef.Create(Identity)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setanimations Lib appkitlibname Selector "setAnimations:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 417474656D70747320746F20706572666F726D2074686520616374696F6E20696E64696361746564206D6574686F64207769746820612073706563696669656420617267756D656E742E0A49662074686520726563656976657220726573706F6E647320746F20616E416374696F6E2C20697420696E766F6B657320746865206D6574686F64207769746820616E4F626A6563742061732074686520617267756D656E7420616E642072657475726E73205945532E2049662074686520726563656976657220646F65736EE280997420726573706F6E642C2069742073656E64732074686973206D65737361676520746F20697473206E65787420726573706F6E6465722077697468207468652073616D652073656C6563746F7220616E64206F626A6563742E
		Function TryToPerform(AnActionSelector As Ptr, Anobject As AppleGeneralObject) As Boolean
		  return tryToPerform (id, AnActionSelector, Anobject.GeneralID)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 50726573656E747320616E206572726F7220616C65727420746F20746865207573657220617320616E206170706C69636174696F6E2D6D6F64616C206469616C6F672E
		Protected Declare Function tryToPerform Lib appkitlibname Selector "tryToPerform:with:" (id as ptr, sel as ptr, anobject as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub UnregisterIdentity(Identity As object)
		  if XojoIdentity.HasKey(id) then XojoIdentity.Remove(id)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event AcceptsFirstResponder() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event AnimationDidStart(Animation As AppleCAAnimation)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event AnimationDidStop(Animation As AppleCAAnimation, Finished As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E697368657320616E64206E6F20637573746F6D20636F6D706C6574696F6E48616E646C657220776173207370656369666965642E
		Event AnimationFinished()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event BeginGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520726573706F6E6465722069732061626F757420746F206265636F6D6520666972737420726573706F6E64657220696E206974732057696E646F772E2052657475726E207472756520746F2070726576656E742069742066726F6D2067657474696E672074686520666F6375732E
		Event DontBecomeFirstResponder() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520726573706F6E6465722069732061626F757420746F206C6F7365206265696E672074686520666972737420726573706F6E64657220696E206974732057696E646F772E2052657475726E207472756520746F2070726576656E742069742066726F6D206C6F73696E672074686520666F6375732E
		Event DontResignFirstResponder() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event EndGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event FlagsChanged(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207768657468657220746F20666F727761726420656C6173746963207363726F6C6C696E672067657374757265206576656E74732075702074686520726573706F6E6465722E
		Event ForwardElasticScroll(axis as AppleNSEvent.NSEventGestureAxis) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event KeyDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event KeyUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event Magnify(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event MouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event MouseDragged(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event MouseEntered(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event MouseExited(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event MouseMoved(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event MouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event OtherMouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event OtherMouseDragged(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event OtherMouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event PressureChange(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event RightMouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event RightMouseDragged(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event RightMouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event Rotate(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event ScrollWheel(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event SmartMagnify(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event Swipe(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event TabletPoint(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event TabletProximity(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event TouchesBegan(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 547261636B696E67206F6620746F756368657320686173206265656E2063616E63656C6C656420666F7220616E7920726561736F6E2E
		Event TouchesCancelled(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4120736574206F6620746F756368657320686173206265656E2072656D6F7665642E
		Event TouchesEnded(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4F6E65206F72206D6F726520746F75636865732068617665206D6F7665642E
		Event TouchesMoved(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207472756520746F20747261636B2067657374757265207363726F6C6C206576656E7473207375636820617320612073776970652E
		Event TrackSwipes(axis as AppleNSEvent.NSEventGestureAxis) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Event WillPresentError(error As AppleError) As AppleError
	#tag EndHook


	#tag Note, Name = Status incomplete
		missing:
		
		validateProposedFirstResponder
		interpretKeyEvents
		performKeyEquivalent
		flushBufferedKeyEvents
		cursorUpdate
		helpRequested
		quickLookWithEvent
		All action message events
		Window restoration methods
		User Activities
		presentErrormodalforWindow
		doCommandBySelector
		menu
		validRequestorForSendType
		undoManager
		shouldBeTreatedAsInkEvent
		noResponderFor
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  // Please not that NSRespondr has no direct instances, only its subclasses.
			  // Therefore, this classptr will never get built.
			  // Use it as atemplate for own Responder subclasses and make use of the shared events and methods built herein.
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    mClassPtr = FoundationFrameWork.NSClassFromString("NSResponder")
			    // dim methods() as TargetClassMethodHelper
			    //
			    // //NSResponder "delegate" methods
			    // methods.Append new TargetClassMethodHelper("acceptsFirstResponder", AddressOf impl_acceptsFirstResponder, "c@:")
			    // methods.Append new TargetClassMethodHelper("becomeFirstResponder", AddressOf impl_becomeFirstResponder, "c@:")
			    // methods.Append new TargetClassMethodHelper("resignFirstResponder", AddressOf impl_resignFirstResponder, "c@:")
			    // methods.Append new TargetClassMethodHelper("smartMagnifyWithEvent:", AddressOf impl_smartMagnifyWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("mouseDown:", AddressOf impl_mouseDown, "v@:@")
			    // methods.Append new TargetClassMethodHelper("mouseDragged:", AddressOf impl_mouseDragged, "v@:@")
			    // methods.Append new TargetClassMethodHelper("mouseUp:", AddressOf impl_mouseUp, "v@:@")
			    // methods.Append new TargetClassMethodHelper("mouseMoved:", AddressOf impl_mouseMoved, "v@:@")
			    // methods.Append new TargetClassMethodHelper("mouseEntered:", AddressOf impl_mouseEntered, "v@:@")
			    // methods.Append new TargetClassMethodHelper("mouseExited:", AddressOf impl_mouseExited, "v@:@")
			    // methods.Append new TargetClassMethodHelper("rightMouseDown:", AddressOf impl_rightMouseDown, "v@:@")
			    // methods.Append new TargetClassMethodHelper("rightMouseDragged:", AddressOf impl_rightMouseDragged, "v@:@")
			    // methods.Append new TargetClassMethodHelper("rightMouseUp:", AddressOf impl_rightMouseUp, "v@:@")
			    // methods.Append new TargetClassMethodHelper("otherMouseDown:", AddressOf impl_otherMouseDown, "v@:@")
			    // methods.Append new TargetClassMethodHelper("otherMouseDragged:", AddressOf impl_otherMouseDragged, "v@:@")
			    // methods.Append new TargetClassMethodHelper("otherMouseUp:", AddressOf impl_otherMouseUp, "v@:@")
			    //
			    // methods.Append new TargetClassMethodHelper("keyDown:", AddressOf impl_keyDown, "v@:@")
			    // methods.Append new TargetClassMethodHelper("keyUp:", AddressOf impl_keyUp, "v@:@")
			    //
			    // methods.Append new TargetClassMethodHelper("pressureChangeWithEvent:", AddressOf impl_pressureChangeWithEvent, "v@:@")
			    //
			    // methods.Append new TargetClassMethodHelper("flagsChanged:", AddressOf impl_flagsChanged, "v@:@")
			    // methods.Append new TargetClassMethodHelper("tabletPoint:", AddressOf impl_tabletPoint, "v@:@")
			    // methods.Append new TargetClassMethodHelper("tabletProximity:", AddressOf impl_tabletProximity, "v@:@")
			    // methods.Append new TargetClassMethodHelper("scrollWheel:", AddressOf impl_scrollWheel, "v@:@")
			    //
			    // methods.Append new TargetClassMethodHelper("willPresentError:", AddressOf impl_willPresentError, "@@:@")
			    //
			    // methods.Append new TargetClassMethodHelper("beginGestureWithEvent:", AddressOf impl_beginGestureWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("endGestureWithEvent:", AddressOf impl_endGestureWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("magnifyWithEvent:", AddressOf impl_magnifyWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("rotateWithEvent:", AddressOf impl_rotateWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("swipeWithEvent:", AddressOf impl_swipeWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("touchesBeganWithEvent:", AddressOf impl_touchesBeganWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("touchesMovedWithEvent:", AddressOf impl_touchesMovedWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("touchesCancelledWithEvent:", AddressOf impl_touchesCancelledWithEvent, "v@:@")
			    // methods.Append new TargetClassMethodHelper("touchesEndedWithEvent:", AddressOf impl_touchesEndedWithEvent, "v@:@")
			    //
			    // methods.Append new TargetClassMethodHelper("wantsForwardedScrollEventsForAxis:", AddressOf impl_wantsForwardedScrollEventsForAxis, "v@:i")
			    // methods.Append new TargetClassMethodHelper("wantsScrollEventsForSwipeTrackingOnAxis::", AddressOf impl_wantsScrollEventsForSwipeTrackingOnAxis, "v@:i")
			    //
			    //
			    // // CAAnimation "Delegate" methods
			    // methods.Append new TargetClassMethodHelper("animationDidStart:", AddressOf impl_animationDidStart, "v@:@")
			    // methods.Append new TargetClassMethodHelper("animationDidStop:finished:", AddressOf impl_animationDidStop, "v@:@c")
			    //
			    // mClassPtr = BuildTargetClass ("NSResponder", "OSXLibResponder",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSAnimationTriggerOrderIn as text= SystemConstantName("NSAnimationTriggerOrderIn", AppKitPath)
			  return mNSAnimationTriggerOrderIn
			End Get
		#tag EndGetter
		Shared kNSAnimationTriggerOrderIn As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSAnimationTriggerOrderOut as text= SystemConstantName("NSAnimationTriggerOrderOut", AppKitPath)
			  return mNSAnimationTriggerOrderOut
			End Get
		#tag EndGetter
		Shared kNSAnimationTriggerOrderOut As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E65787420726573706F6E6465722061667465722074686973206F6E652C206F72206E696C20696620697420686173206E6F6E652E
		#tag Getter
			Get
			  return AppleMenu.MakefromPtr (AppKitFramework.getmenu(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setMenu id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Menu As AppleMenu
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E65787420726573706F6E6465722061667465722074686973206F6E652C206F72206E696C20696620697420686173206E6F6E652E
		#tag Getter
			Get
			  return AppleResponder.MakefromPtr (getnextResponder(id))
			End Get
		#tag EndGetter
		NextResponder As AppleResponder
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E7320746865206F776E657257696E646F77206576656E20666F7220636F6E74726F6C7320776974686F757420612056696577202847656E657269634F626A656374732064726F70706564206F6E20746865206C61796F7574292E2028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return getownerAppleWindow(me)
			End Get
		#tag EndGetter
		OwnerAppleWindow As AppleWindow
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static midentity as xojo.Core.Dictionary
			  if midentity = nil then midentity = new xojo.Core.Dictionary
			  return midentity
			End Get
		#tag EndGetter
		Protected Shared XojoIdentity As xojo.Core.Dictionary
	#tag EndComputedProperty


	#tag Constant, Name = kownerWindow, Type = Text, Dynamic = False, Default = \"Window", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
