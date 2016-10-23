#tag Class
Protected Class OSXLibCanvas
Inherits OSXLibView
	#tag Event
		Function CloseControl() As Boolean
		  if not raiseevent CloseControl then
		    RemoveHandlers(AppleObject)
		    mAppleObject = nil
		  end if
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Function InitControl() As AppleView
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  
		  
		  dim obj as AppleView = raiseevent InitControl // Let’s see if a subclass wants to establish itself instead
		  if obj = nil then // no!
		    obj = if (mAppleObject = nil, CreateObject, appleview(mAppleObject))
		  end if
		  // and adapt it to the current bounds of the Xojo control.
		  obj.Frame = FoundationFrameWork.NSMakeRect (me.Left, window.height-  (me.top + me.Height), me.Width, me.Height)
		  obj.AutoResizingMask = new AppleAutoresizingMask(self)
		  obj.TranslatesAutoresizingMaskIntoConstraints = true
		  // If there’s a Backdrop, make it the layer’s contents: 
		  obj.WantsLayer = false
		  CopyEmbeddedObjects
		  // mTempObject = nil // remove any unwanted retain cycles
		  DontDisableLayerDuringInit = false
		  return obj // So it will receive its super’s events
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub AttachHandlers(obj as applepaintview)
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
		  AddHandler obj.DrawRect, addressof informOnDrawRect
		  
		  
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

	#tag Method, Flags = &h0, Description = 496E7465726E616C206D6574686F6420746F2061766F696420496E73706563746F722070726F706572746965732068697474696E672061204E696C20766965772E
		Attributes( hidden )  Function CreateObject() As AppleView
		  dim obj as new ApplePaintView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		  AttachHandlers(obj) // Reroute its events so this Xojo control gets them
		  
		  return obj
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnDrawRect(view as appleview, Rect as FoundationFrameWork.NSrect)
		  RaiseEvent Paint (applecgcontext.currentcontext, Rect)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers(obj as applePaintview)
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
		  RemoveHandler obj.DrawRect, addressof informOnDrawRect
		  
		  
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


	#tag Hook, Flags = &h0
		Event CloseControl() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event InitControl() As ApplePaintView
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Paint(g as applecgcontext, Rect as FoundationFrameWork.NSRect)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mAppleObject = nil then mAppleObject =CreateObject
			  return ApplePaintView(mAppleObject)
			  
			End Get
		#tag EndGetter
		AppleObject As ApplePaintView
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
