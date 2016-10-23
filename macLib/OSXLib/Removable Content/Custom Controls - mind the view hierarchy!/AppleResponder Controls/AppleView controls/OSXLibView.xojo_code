#tag Class
Protected Class OSXLibView
Inherits OSXLibResponder
	#tag Event , Description = 496E7465726E616C204576656E7420746861742070726576656E74732072756E6E696E67206F662072656D6F766548616E646C6572207768656E207468697320776173206F766572726964656E
		Function CloseControl() As Boolean
		  if not raiseevent CloseControl then
		    if UsedAddhandler then RemoveHandlers(AppleObject)
		    mAppleObject = nil
		  end if
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Function InitControl() As AppleResponder
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xojo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  dim obj as AppleView = raiseevent InitControl // Let’s see if a subclass wants to establish itself instead
		  if obj = nil then // no!
		    obj = CreateObject
		    UsedAddhandler = true
		  end if
		  return obj // So it will receive its super’s events
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  if not RaiseEvent open then
		    // and adapt it to the current bounds of the Xojo control.
		    AppleObject.Frame = FoundationFrameWork.NSMakeRect (me.Left, window.height-  (me.top + me.Height), me.Width, me.Height)
		    AppleObject.AutoResizingMask = new AppleAutoresizingMask(self)
		    AppleObject.TranslatesAutoresizingMaskIntoConstraints = true
		    if me.Backdrop <> nil then
		      if me.Layer = nil then me.AppleObject.WantsLayer = true // or either it would crash
		      me.AppleObject.layer.Contents = new AppleImage(me.Backdrop)
		    end if
		    CopyEmbeddedObjects
		    // mTempObject = nil // remove any unwanted retain cycles
		    DontDisableLayerDuringInit = false
		    EmbedAppleObject
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #pragma unused g
		  #pragma unused areas
		End Sub
	#tag EndEvent

	#tag Event
		Sub ScaleFactorChanged()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub AttachHandlers(obj as appleview)
		  AddHandler obj.AcceptsFirstResponder, Addressof informOnAcceptsFirstResponder
		  AddHandler obj.DontBecomeFirstResponder, Addressof informOnBecomeFirstResponder
		  AddHandler obj.DontResignFirstResponder, Addressof informOnresignFirstResponder
		  
		  AddHandler obj.BeginGesture, Addressof informOnbeginGestureWithEvent
		  AddHandler obj.EndGesture, Addressof informOnEndGestureWithEvent
		  AddHandler obj.Rotate, Addressof informOnrotateWithEvent
		  AddHandler obj.SmartMagnify, Addressof informOnsmartMagnifyWithEvent
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
		  
		  AddHandler obj.AllowsVibrancy, Addressof informOnAllowsVibrancy
		  AddHandler obj.opaque, Addressof informOnopaque
		  
		  AddHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
		  AddHandler obj.DidAddSubview, Addressof informOnDidAddSubview
		  AddHandler obj.DidResize, Addressof informOnViewDidEndLiveResize
		  AddHandler obj.MenuForEvent, Addressof informOnMenuForEvent
		  AddHandler obj.ViewDidHide, Addressof informOnViewDidHide
		  AddHandler obj.ViewDidUnHide, Addressof informOnViewDidUnHide
		  AddHandler obj.ViewWillMoveToSuperview, Addressof informOnViewWillMoveToSuperview
		  AddHandler obj.ViewWillMoveToWindow, Addressof informOnViewWillMoveToWindow
		  AddHandler obj.WillOpenMenuForEvent, Addressof informOnWillOpenMenu
		  AddHandler obj.willRemoveSubview, Addressof informOnwillRemoveSubview
		  AddHandler obj.WillResize, Addressof informOnviewWillStartLiveResize
		  AddHandler obj.flipped, AddressOf informonFlipped
		  
		  
		  // AddHandler obj.DidEvaluateActions, Addressof informOnDidEvaluateActions
		  // AddHandler obj.DidSimulatePhysics, Addressof MouseenterdinformOnDidSimulatePhysics
		  // AddHandler obj.didApplyConstraints, Addressof informondidApplyConstraints
		  // AddHandler obj.FinishedSceneUpdate, Addressof informondidFinishUpdateForScene
		  // AddHandler obj.SceneSizeChanged, Addressof InformOnSceneSizeChange
		  // AddHandler obj.SceneDidLoad, Addressof informonSceneDidLoad
		  // AddHandler obj.SceneWillMoveFromView, Addressof informonSceneWillMoveFromView
		  // AddHandler obj.SceneDidMoveToView, addressof informOnSceneWillMoveToView
		  // 
		  // AddHandler obj.ContactBegan, addressOf informOnDidBeginContact
		  // AddHandler obj.ContactEnded, addressOf informOnDidEndContact
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206C61796F7574636F6E73747261696E747320617474616368656420746F2074686520766965772E
		Function Constraints() As AppleLayoutConstraint()
		  return AppleObject.Constraints.LayoutConstraintsToXojo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Control(id as ptr) As RectControl
		  for q as integer = 0 to me.Window.ControlCount -1
		    dim control as control = me.Window.control(q)
		    if control.Handle = UInteger(id) then return rectcontrol(control)
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 436F7069657320656D6265646465642073756276696577732066726F6D20746865207772617070657220636F6E74726F6C20696620746865792065786973742E
		Protected Sub CopyEmbeddedObjects()
		  dim tempview as new appleview(me)
		  if tempview.Subviews <> nil then
		    dim count as integer = tempview.subviews.count -1
		    if count > -1 then
		      me.AppleObject.AutoresizesSubviews = true
		      for q as integer = 0 to count
		        dim subview as appleview = appleview.MakefromPtr(tempview.Subviews.PtrAtIndex(0))
		        // subview.AutoResizingMask = new AppleAutoresizingMask(subview.
		        subview.TranslatesAutoresizingMaskIntoConstraints = true
		        me.AppleObject.AddSubview subview
		      next
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C206D6574686F6420746F2061766F696420496E73706563746F722070726F706572746965732068697474696E672061204E696C20766965772E
		Private Function CreateObject() As AppleView
		  dim obj as new AppleView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		  obj.WantsLayer = true
		  AttachHandlers(obj) // Reroute its events so this Xojo control gets them
		  
		  return obj
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EmbedAppleObject()
		  dim origview as new appleview(self) // now accessing the view object of the parent canvas we hijack.
		  dim controller as appleview = origview.SuperView // and jump one point higher in the ciew hierarchy, probably to the window’s content view.
		  dim subview as appleview = ViewToReplace(origview)
		  controller.ReplaceSubview subview, AppleObject // and kick out the canvas by replacing it with our view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnAcceptsTouchEvents(view as appleview) As Boolean
		  return AcceptTouchEvents
		  #pragma unused view
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnAllowsVibrancy(view as appleview) As Boolean
		  return AllowVibrancy
		  #pragma unused view
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOndidAddSubview(view as appleview, Subview as appleview)
		  RaiseEvent AddedSubview (subview)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonFlipped(view as appleview) As Boolean
		  return FlippedCoordinates
		  #pragma unused view
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnmenuForEvent(view as appleview, AnEvent As AppleNSEvent) As AppleMenu
		  return RaiseEvent ConstructContextMenu (AnEvent)
		  #pragma unused view
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnopaque(view as appleview) As Boolean
		  return not me.Transparent
		  #pragma unused view
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnViewDidEndLiveResize(view as appleview)
		  RaiseEvent Resized
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnViewDidhide(view as appleview)
		  RaiseEvent Hidden
		  #pragma unsued view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewDidMoveToWindow(view as appleview)
		  // me.AppleObject.AutoResizingMask = new AppleAutoresizingMask(self)
		  RaiseEvent Shown
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnViewDidUnhide(view as AppleView)
		  RaiseEvent Unhidden
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewidMoveToSuperview()
		  RaiseEvent BecameSubview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewWillMoveToSuperview(view as appleview, SuperView as appleview)
		  RaiseEvent WillBecomeSubview (SuperView)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewWillMoveToWindow(view as appleview, Window as AppleWindow)
		  RaiseEvent WillShow (Window)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewWillStartLiveResize(view as appleview)
		  RaiseEvent Resizing
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnwillOpenMenu(view as appleview, Menu as AppleMenu, AnEvent As AppleNSEvent)
		  RaiseEvent OpenContextMenu (Menu, AnEvent)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnwillRemoveSubview(view as appleview, SubView as appleview)
		  RaiseEvent WillRemoveSubview (SubView)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656C6C7320746865207669657720746F206669726520697473207061696E74206576656E7420616761696E206F6E20746865206E6578742073637265656E2072656672657368206379636C652E
		Sub Invalidate()
		  AppleObject.NeedsDisplay = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers(obj as appleview)
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
		  
		  RemoveHandler obj.AllowsVibrancy, Addressof informOnAllowsVibrancy
		  RemoveHandler obj.opaque, Addressof informOnopaque
		  
		  RemoveHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
		  RemoveHandler obj.DidAddSubview, Addressof informOnDidAddSubview
		  RemoveHandler obj.DidResize, Addressof informOnViewDidEndLiveResize
		  RemoveHandler obj.MenuForEvent, Addressof informOnMenuForEvent
		  RemoveHandler obj.ViewDidHide, Addressof informOnViewDidHide
		  RemoveHandler obj.ViewDidUnHide, Addressof informOnViewDidUnHide
		  RemoveHandler obj.ViewWillMoveToSuperview, Addressof informOnViewWillMoveToSuperview
		  RemoveHandler obj.ViewWillMoveToWindow, Addressof informOnViewWillMoveToWindow
		  RemoveHandler obj.WillOpenMenuForEvent, Addressof informOnWillOpenMenu
		  RemoveHandler obj.willRemoveSubview, Addressof informOnwillRemoveSubview
		  RemoveHandler obj.WillResize, Addressof informOnviewWillStartLiveResize
		  RemoveHandler obj.flipped, AddressOf informonFlipped
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ViewToReplace(origview as appleview) As AppleView
		  dim controller as appleview = origview.SuperView // and jump one point higher in the ciew hierarchy, probably to the window’s content view.
		  for q as integer = 0 to controller.Subviews.Count -1 // iterating through its subviews
		    dim subview as appleview = new appleview(controller.Subviews.PtrAtIndex(q)) // fetching the subviews
		    if subview.id = origview.id then // is this our control?
		      return subview
		    end if
		  next
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Event AddedSubview(Subview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event BecameSubview()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CloseControl() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5573652074686973206576656E7420746F2063726561746520637573746F6D204D656E757320666F7220646966666572656E74206B696E64206F66206576656E74732E
		Event ConstructContextMenu(AnEvent As AppleNSEvent) As AppleMenu
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772069732068696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E672068696464656E2E
		Event Hidden()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Event InitControl() As AppleView
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573206265666F7265206120636F6E7465787475616C206D656E7520697320646973706C617965642E205573652074686973206576656E7420746F206D6F6466792069742E
		Event OpenContextMenu(Menu As AppleMenu, AnEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732066696E697368656420726573697A696E672074686520766965772E
		Event Resized()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 466972657320696620746865207573657220686173207374617274656420726573697A696E672074686520766965772E
		Event Resizing()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Shown()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720697320756E68696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E6720756E68696464656E2E
		Event Unhidden()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event WillBecomeSubview(SuperView as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event WillRemoveSubview(SubView as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event WillShow(Window As Applewindow)
	#tag EndHook


	#tag Note, Name = ReadMe - create your own controls!
		
		If you want to contribute to OSXLib with your own declared controls, please do so!
		But please, if ever possible, try to do this in alignment with my programming style so it’s easier to integrate fully:
		
		 – Create a subclass of AppleObject or the superclass that is the super for your control.
		– make sure it inherits the OSXLibControlledObject interface.
		– Overwrite the Parentcontrol method so it works with your class.
		 – Use external declares for its features and computed properties wherever possible.
		– Try to make it as complete as possible.
		– Inherit the necessary AppleResponder and AppleView / ApplePaintView methods via a custom classptr if necessary.
		– If your control uses a delegate, complete the classptr like I did in the AppleView class. Add impl_methods and forwarders.
		  The latter may not be elegant and one central event notification method would be much better style, but I rather go for execution speed.
		
		– Then, create a subclass of OSXLibControl or OSXLibCanvas
		– Give it the properties AppleObject and mAppleObject like in this class, but as kind of your AppleClass.
		– Follow the open event handler of this class, adjusting it to the constructor and type of your control.
		   Don’t forget to set the mAppleObject property to your new instance.
		
		– And then, start adding inform_Forward methods and event definitions for them, and create Convenience methods that convert from and into Xojo datatypes and classes wherever appropriate.
		
		 When you’re done and all tested well:
		– If there is a native Xojo control of your class with an accessible handle, locate the datatypes extensions folder and add a module for the native class.
		– Copy the AppleObject method of one of the exiting modules and tweak it so it matches the Xojo class. 
		  Don’t forget to put the converter into #Pragma IfTargetMacOS brackets!
		
		And then, please make a merge request by uploading your content to the repository.
		
		Thanks a lot!
	#tag EndNote


	#tag Property, Flags = &h0, Description = 4966207468652076696577E280997320636F6E74656E74732077696C6C20626520626C656E646564207769746820612056696272616E6379566965772E
		AllowVibrancy As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520416C7068612076616C7565206F66207468652076696577202844656661756C7420312E3029
		#tag Getter
			Get
			  return AppleObject.Alpha
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Alpha = value
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204E535669657720616E696D61746F72206F626A6563742028726561642D6F6E6C79292E2055736520697420746F20616E696D6174652070726F7065727479206368616E67657320287772617070656420696E20616E20616E696D6174696F6E436F6E7465787420696E206361736520796F752077616E7420746F206368616E6765206475726174696F6E292E
		#tag Getter
			Get
			  return AppleObject.Animator
			End Get
		#tag EndGetter
		Animator As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204E535669657720697473656C662028726561642D6F6E6C79292E
		#tag Getter
			Get
			  if mAppleObject = nil then 
			    mAppleObject = RaiseEvent InitControl
			    if mAppleObject = nil then mAppleObject = CreateObject
			  end if
			  return appleview(mAppleObject)
			  
			End Get
		#tag EndGetter
		AppleObject As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.layer <> nil then return Layer.BackgroundColor.toColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value <> &cFFFFFF00 then
			    if me.layer = nil then DoubleBuffer = true
			    DontDisableLayerDuringInit = true
			    me.Layer.BackgroundColor = new applecolor(value)
			    me.layer.AutoResizingMask = AppleCAAutoresizingMask.FullResize
			    DontDisableLayerDuringInit = true
			  end if
			End Set
		#tag EndSetter
		BackgroundColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626F74746F6D2065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleObject.BottomAnchor
			End Get
		#tag EndGetter
		BottomAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C65206F6620726F746174696F6E2C206D6561737572656420696E20646567726565732C206170706C69656420746F207468652076696577E280997320626F756E64732072656374616E676C652072656C617469766520746F20697473206672616D652072656374616E676C652E
		#tag Getter
			Get
			  return AppleObject.BoundsRotation
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.BoundsRotation = value
			End Set
		#tag EndSetter
		BoundsRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520686F72697A6F6E74616C2063656E746572206F66207468652076696577E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleObject.CenterxAnchor
			End Get
		#tag EndGetter
		CenterXAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520766572746963616C2063656E746572206F66207468652076696577E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleObject.CenterYAnchor
			End Get
		#tag EndGetter
		CenterYAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected DontDisableLayerDuringInit As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 49662074686520766965772073686F756C642075736520612043414C417965722E
		#tag Getter
			Get
			  return AppleObject.WantsLayer
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if not DontDisableLayerDuringInit then AppleObject.WantsLayer = value
			End Set
		#tag EndSetter
		DoubleBuffer As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		FlippedCoordinates As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F6620666F6375732072696E6720647261776E2061726F756E642074686520766965772E
		#tag Getter
			Get
			  return AppleObject.FocusRingType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.FocusRingType = value
			End Set
		#tag EndSetter
		FocusRingType As Appkitframework.NSFocusRingType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  return AppleObject.layer
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.layer = value
			End Set
		#tag EndSetter
		Layer As AppleCALAyer
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 4966207468652076696577E280997320636F6E74656E74732077696C6C20626520626C656E646564207769746820612056696272616E6379566965772E
		TrackSwipes As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E2809973206175746F726573697A696E67206D61736B206973207472616E736C6174656420696E746F20636F6E73747261696E747320666F722074686520636F6E73747261696E742D6261736564206C61796F75742073797374656D2E53657474696E67207468652076616C756520746F207472756520697320746865206571756976616C656E746F66206120586F6A6F20696E76616C69646174652063616C6C2E
		#tag Getter
			Get
			  return AppleObject.TranslatesAutoresizingMaskIntoConstraints
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.TranslatesAutoresizingMaskIntoConstraints = value
			End Set
		#tag EndSetter
		TranslatesAutoresizingMaskIntoConstraints As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520766965772069732076697369626C652E
		#tag Getter
			Get
			  return not AppleObject.Hidden
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Hidden = not value
			End Set
		#tag EndSetter
		Visible As Boolean
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
			InitialValue="&cFFFFFFFF"
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
