#tag Class
Protected Class OSXLibSCNView
Inherits OSXLibView
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub AddedSubview(Subview as AppleView)
		  #pragma unused Subview
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  
		  
		  RaiseEvent Close
		  if mAppleObject <> nil then
		    RemoveHandlers(appleobject)
		    mAppleObject = nil
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CloseControl() As Boolean
		  'if not raiseevent CloseControl then RemoveHandlers (me.AppleObject)
		  return true
		End Function
	#tag EndEvent

	#tag Event , Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Function InitControl() As AppleView
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xojo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  // self.LockLeft = false
		  // self.LockRight = false
		  // self.LockBottom = false
		  // self.LockTop = false
		  
		  dim obj as new ApplescnView (AppleObject.fromControl(self).Frame, SceneKitFrameWork.SCNRenderingAPIMacOS.OpenGLLegacy) // Declaring the new Applecontrol, in this case a SKview.
		  // Please note the internal events of the declared class will not fire anymore.
		  // obj.Registercontrol self
		  obj.AutoResizingMask = new AppleAutoresizingMask(self) // … to the autoresizing mask
		  attachHandlers(obj)
		  return obj
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652074686520757365722068617320626567756E20612070696E636820676573747572652E
		Sub MagnifyGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365E2809973207363726F6C6C20776865656C2E
		Sub MouseWheel(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120726F746174696F6E20676573747572652E
		Sub RotationGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillRemoveSubview(SubView as AppleView)
		  #pragma Unused SubView
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AttachHandlers(obj as applescnview)
		  AddHandler obj.WillUpdate, Addressof InformOnWillUpdate
		  AddHandler obj.didanimate, Addressof informOnDidAnimate
		  AddHandler obj.DidSimulatePhysics, Addressof informOnDidSimulatePhysics
		  AddHandler obj.WillRenderScene, Addressof informonWillRenderScene
		  AddHandler obj.DidRenderScene, Addressof informonDidRenderScene
		  AddHandler obj.BlocksPreparationEnded, Addressof InformOnBlocksPreparationEnded
		  AddHandler obj.DidBeginContact, Addressof informonDidBeginContact
		  AddHandler obj.DidEndContact, Addressof informonDidEndContact
		  
		  
		  AddHandler obj.AcceptsFirstResponder, Addressof informOnAcceptsFirstResponder
		  AddHandler obj.DontBecomeFirstResponder, Addressof informOnBecomeFirstResponder
		  AddHandler obj.DontResignFirstResponder, Addressof informOnresignFirstResponder
		  
		  AddHandler obj.BeginGesture, Addressof informOnbeginGestureWithEvent
		  AddHandler obj.EndGesture, Addressof informOnEndGestureWithEvent
		  // AddHandler obj.Rotate, Addressof informOnrotateWithEvent
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
		  
		  AddHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
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

	#tag Method, Flags = &h21
		Private Sub InformOnBlocksPreparationEnded(view as AppleSCNView, success as Boolean)
		  RaiseEvent BlocksPreparationEnded (success)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidAnimate(view as AppleSCNView, UpdateTime as double)
		  RaiseEvent DidAnimate (UpdateTime)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidBeginContact(view as ApplescnView,PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent ContactBegan (PWorld, contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidEndContact(view as ApplescnView,PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent Contactbegan (pworld, contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonDidRenderScene(view as AppleSCNView, scene as appleSCNscene, UpdateTime as double)
		  RaiseEvent WillRenderScene (scene, updatetime)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidSimulatePhysics(view as ApplescnView, UpdateTime as Double)
		  RaiseEvent DidSimulatePhysics (UpdateTime)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonWillRenderScene(view as AppleSCNView, scene as appleSCNscene, UpdateTime as double)
		  RaiseEvent WillRenderScene (scene, updatetime)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InformOnWillUpdate(view as AppleSCNView, updatetime as double)
		  RaiseEvent UpdateScene ( UpdateTime)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers(obj as AppleSCNView)
		  RemoveHandler obj.WillUpdate, Addressof InformOnWillUpdate
		  RemoveHandler obj.didanimate, Addressof informOnDidAnimate
		  RemoveHandler obj.DidSimulatePhysics, Addressof informOnDidSimulatePhysics
		  RemoveHandler obj.WillRenderScene, Addressof informonWillRenderScene
		  RemoveHandler obj.DidRenderScene, Addressof informonDidRenderScene
		  RemoveHandler obj.BlocksPreparationEnded, Addressof InformOnBlocksPreparationEnded
		  RemoveHandler obj.DidBeginContact, Addressof informonDidBeginContact
		  RemoveHandler obj.DidEndContact, Addressof informonDidEndContact
		  
		  
		  RemoveHandler obj.AcceptsFirstResponder, Addressof informOnAcceptsFirstResponder
		  RemoveHandler obj.DontBecomeFirstResponder, Addressof informOnBecomeFirstResponder
		  RemoveHandler obj.DontResignFirstResponder, Addressof informOnresignFirstResponder
		  
		  RemoveHandler obj.BeginGesture, Addressof informOnbeginGestureWithEvent
		  RemoveHandler obj.EndGesture, Addressof informOnEndGestureWithEvent
		  // RemoveHandler obj.Rotate, Addressof informOnrotateWithEvent
		  // RemoveHandler obj.SmartMagnify, Addressof informOnsmartMagnifyWithEvent
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
		  
		  // RemoveHandler obj.ScrollWheel, Addressof informOnScrollWheel
		  
		  
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
		  
		  // RemoveHandler obj.AllowsVibrancy, Addressof informOnAllowsVibrancy
		  // RemoveHandler obj.opaque, Addressof informOnopaque
		  
		  RemoveHandler obj.AcceptsTouchEvents, Addressof informOnAcceptsTouchEvents
		  
		  // RemoveHandler obj.DidAddSubview, Addressof informOnDidAddSubview
		  RemoveHandler obj.DidResize, Addressof informOnViewDidEndLiveResize
		  RemoveHandler obj.MenuForEvent, Addressof informOnMenuForEvent
		  RemoveHandler obj.ViewDidHide, Addressof informOnViewDidHide
		  RemoveHandler obj.ViewDidUnHide, Addressof informOnViewDidUnHide
		  RemoveHandler obj.ViewWillMoveToSuperview, Addressof informOnViewWillMoveToSuperview
		  RemoveHandler obj.ViewWillMoveToWindow, Addressof informOnViewWillMoveToWindow
		  RemoveHandler obj.WillOpenMenuForEvent, Addressof informOnWillOpenMenu
		  // RemoveHandler obj.willRemoveSubview, Addressof informOnwillRemoveSubview
		  RemoveHandler obj.WillResize, Addressof informOnviewWillStartLiveResize
		  
		  System.DebugLog "scn removed Handlers"
		  
		  // RemoveHandler obj.DidEvaluateActions, Addressof informOnDidEvaluateActions
		  // RemoveHandler obj.DidSimulatePhysics, Addressof MouseenterdinformOnDidSimulatePhysics
		  // RemoveHandler obj.didApplyConstraints, Addressof informondidApplyConstraints
		  // RemoveHandler obj.FinishedSceneUpdate, Addressof informondidFinishUpdateForScene
		  // RemoveHandler obj.SceneSizeChanged, Addressof InformOnSceneSizeChange
		  // RemoveHandler obj.SceneDidLoad, Addressof informonSceneDidLoad
		  // RemoveHandler obj.SceneWillMoveFromView, Addressof informonSceneWillMoveFromView
		  // RemoveHandler obj.SceneDidMoveToView, addressof informOnSceneWillMoveToView
		  // 
		  // RemoveHandler obj.ContactBegan, addressOf informOnDidBeginContact
		  // RemoveHandler obj.ContactEnded, addressOf informOnDidEndContact
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520507265706172654F626A65637473206D6574686F642066696E69736865732E
		Event BlocksPreparationEnded(success as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CloseControl() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074776F204E6F64657320636F6C6C69646564207769746820746865697220636F6E746163746269746D61736B73206D61746368696E672E
		Event ContactBegan(World as AppleSCNPhysicsWorld, Contact As AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContactEnded(World as AppleSCNPhysicsWorld, Contact As AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidAnimate(UpdateTime as Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidRenderScene(Scene as AppleSCNScene, UpdateTime as Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidSimulatePhysics(UpdateTime as Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event FinishedSceneUpdate(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event UpdateScene(CurrentTime as Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event WillRenderScene(Scene as AppleSCNScene, UpdateTime as Double)
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


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleSCNView(mAppleObject)
			End Get
		#tag EndGetter
		AppleObject As AppleSCNView
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared XojoControls As xojo.Core.Dictionary
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
