#tag Class
Protected Class iOSLibSKView
Inherits iOSLIbView
	#tag CompatibilityFlags = ( TargetIOS and ( Target32Bit or Target64Bit ) )
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20636C6F7365732E
		Sub Close()
		  RaiseEvent Close
		  mid = nil
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As uinteger
		  mid =  new AppleSKView (FoundationFrameWork.NSMakeRect(0,0,100,100))
		  // mid.RegisterControl (self)
		  AttachHandlers
		  return uinteger(mid.id)
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AttachHandlers()
		  AddHandler AppleObject.UpdateScene, Addressof InformOnSceneUpdate
		  AddHandler AppleObject.DidEvaluateActions, Addressof informOnDidEvaluateActions
		  AddHandler AppleObject.DidSimulatePhysics, Addressof informOnDidSimulatePhysics
		  AddHandler AppleObject.didApplyConstraints, Addressof informondidApplyConstraints
		  AddHandler AppleObject.FinishedSceneUpdate, Addressof informondidFinishUpdateForScene
		  AddHandler AppleObject.SceneSizeChanged, Addressof InformOnSceneSizeChange
		  AddHandler appleObject.SceneDidLoad, Addressof informonSceneDidLoad
		  AddHandler AppleObject.SceneWillMoveFromView, Addressof informonSceneWillMoveFromView
		  AddHandler AppleObject.SceneDidMoveToView, addressof informOnSceneWillMoveToView
		  
		  AddHandler AppleObject.ContactBegan, addressOf informOnDidBeginContact
		  AddHandler AppleObject.ContactEnded, addressOf informOnDidEndContact
		  // super.AttachHandlers
		  
		  AddHandler AppleObject.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		  AddHandler mID.DidMoveToWindow, AddressOf informOnDidMoveToWindow
		  // AddHandler mid.DrawRect, AddressOf informOnDrawRect
		  // AddHandler mid.layoutSubviews, AddressOf informOnlayoutSubviews
		  // AddHandler mid.tintColorDidChange, AddressOf informontintColorDidChange
		  AddHandler AppleObject.TraitCollectionDidChange, AddressOf informonTraitCollectionDidChange
		  AddHandler AppleObject.WillMoveToSuperview, AddressOf informonWillMoveToSuperview
		  AddHandler AppleObject.WillMoveToWindow, AddressOf informonWillMoveToWindow
		  // AddHandler mid.WillRemoveSubview, AddressOf informonWillRemoveSubview
		  
		  
		  AddHandler AppleObject.TouchesBeganwithEvent, AddressOf informonTouchesBeganwithEvent
		  AddHandler AppleObject.TouchesCancelledwithEvent, AddressOf informonTouchesCancelledwithEvent
		  AddHandler AppleObject.TouchesEndedwithEvent, AddressOf informonTouchesEndedwithEvent
		  AddHandler AppleObject.TouchesMovedwithEvent, AddressOf informonTouchesMovedwithEvent
		  AddHandler AppleObject.EstimatedPropertiesUpdated, AddressOf informonEstimatedPropertiesUpdated
		  
		  
		  AddHandler AppleObject.MotionBeganwithEvent, AddressOf informonMotionBeganwithEvent
		  AddHandler AppleObject.MotionCancelledwithEvent, AddressOf informonMotionCancelledwithEvent
		  AddHandler AppleObject.MotionEndedwithEvent, AddressOf informonMotionEndedwithEvent
		  
		  AddHandler AppleObject.PressesBeganwithEvent, AddressOf informonPressesBeganwithEvent
		  AddHandler AppleObject.PressesCancelledwithEvent, AddressOf informonPressesCancelledwithEvent
		  AddHandler AppleObject.PressesEndedwithEvent, AddressOf informonPressesEndedwithEvent
		  AddHandler AppleObject.PressesChangedwithEvent, AddressOf informonPressesChangedwithEvent
		  
		  AddHandler AppleObject.AnimationDidStart, Addressof informonAnimationDidStart
		  AddHandler AppleObject.animationDidStop, AddressOf informonAnimationDidStop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointFromScene(aPoint as Point, ascene as AppleSKScene) As xojo.Core.Point
		  return id.ConvertPointFromScene(apoint.toNSPoint, ascene).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToScene(aPoint as Point, aScene as AppleSKScene) As Point
		  return id.ConvertPointtoScene(apoint.toNSPoint, ascene).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informondidApplyConstraints(view as AppleSKView, scene as appleskscene)
		  RaiseEvent DidApplyConstraints (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidBeginContact(view as AppleSKView, contact as AppleSKPhysicsContact)
		  RaiseEvent ContactBegan (contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidEndContact(view as AppleSKView, contact as AppleSKPhysicsContact)
		  RaiseEvent ContactEnded (contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidEvaluateActions(view as AppleSKView, scene as appleskscene)
		  RaiseEvent DidEvaluateActions (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informondidFinishUpdateForScene(view as AppleSKView, scene as appleskscene)
		  RaiseEvent FinishedSceneUpdate (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidSimulatePhysics(view as AppleSKView, scene as appleskscene)
		  RaiseEvent DidSimulatePhysics (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonSceneDidLoad(view as AppleSKView, scene as appleskscene)
		  RaiseEvent SceneDidLoad (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InformOnSceneSizeChange(view as AppleSKView, scene as appleskscene, oldsize as FoundationFrameWork.NSSize)
		  RaiseEvent SceneSizeChanged (scene, oldsize)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InformOnSceneUpdate(view as AppleSKView, scene as appleskscene, updatetime as double)
		  RaiseEvent UpdateScene (scene, UpdateTime)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonSceneWillMoveFromView(view as AppleSKView, scene as appleskscene)
		  RaiseEvent SceneWillMoveFromView (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonSceneWillMoveToView(view as AppleSKView, scene as appleskscene)
		  RaiseEvent SceneDidMoveToView (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentScene(newScene as AppleSKScene)
		  
		  id.Present(newscene)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentScene(newScene as AppleSKScene, transition as AppleSKTransition)
		  id.PresentWithTransition (newscene, transition)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers()
		  RemoveHandler AppleObject.UpdateScene, Addressof InformOnSceneUpdate
		  RemoveHandler AppleObject.DidEvaluateActions, Addressof informOnDidEvaluateActions
		  RemoveHandler AppleObject.DidSimulatePhysics, Addressof informOnDidSimulatePhysics
		  RemoveHandler AppleObject.didApplyConstraints, Addressof informondidApplyConstraints
		  RemoveHandler AppleObject.FinishedSceneUpdate, Addressof informondidFinishUpdateForScene
		  RemoveHandler AppleObject.SceneSizeChanged, Addressof InformOnSceneSizeChange
		  RemoveHandler appleObject.SceneDidLoad, Addressof informonSceneDidLoad
		  RemoveHandler AppleObject.SceneWillMoveFromView, Addressof informonSceneWillMoveFromView
		  RemoveHandler AppleObject.SceneDidMoveToView, addressof informOnSceneWillMoveToView
		  
		  RemoveHandler AppleObject.ContactBegan, addressOf informOnDidBeginContact
		  RemoveHandler AppleObject.ContactEnded, addressOf informOnDidEndContact
		  
		  RemoveHandler AppleObject.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		  RemoveHandler AppleObject.DidMoveToWindow, AddressOf informOnDidMoveToWindow
		  // AddHandler mid.DrawRect, AddressOf informOnDrawRect
		  // AddHandler mid.layoutSubviews, AddressOf informOnlayoutSubviews
		  // AddHandler mid.tintColorDidChange, AddressOf informontintColorDidChange
		  RemoveHandler AppleObject.TraitCollectionDidChange, AddressOf informonTraitCollectionDidChange
		  RemoveHandler AppleObject.WillMoveToSuperview, AddressOf informonWillMoveToSuperview
		  RemoveHandler AppleObject.WillMoveToWindow, AddressOf informonWillMoveToWindow
		  // AddHandler mid.WillRemoveSubview, AddressOf informonWillRemoveSubview
		  
		  
		  RemoveHandler AppleObject.TouchesBeganwithEvent, AddressOf informonTouchesBeganwithEvent
		  RemoveHandler AppleObject.TouchesCancelledwithEvent, AddressOf informonTouchesCancelledwithEvent
		  RemoveHandler AppleObject.TouchesEndedwithEvent, AddressOf informonTouchesEndedwithEvent
		  RemoveHandler AppleObject.TouchesMovedwithEvent, AddressOf informonTouchesMovedwithEvent
		  RemoveHandler AppleObject.EstimatedPropertiesUpdated, AddressOf informonEstimatedPropertiesUpdated
		  
		  
		  RemoveHandler AppleObject.MotionBeganwithEvent, AddressOf informonMotionBeganwithEvent
		  RemoveHandler AppleObject.MotionCancelledwithEvent, AddressOf informonMotionCancelledwithEvent
		  RemoveHandler AppleObject.MotionEndedwithEvent, AddressOf informonMotionEndedwithEvent
		  
		  RemoveHandler AppleObject.PressesBeganwithEvent, AddressOf informonPressesBeganwithEvent
		  RemoveHandler AppleObject.PressesCancelledwithEvent, AddressOf informonPressesCancelledwithEvent
		  RemoveHandler AppleObject.PressesEndedwithEvent, AddressOf informonPressesEndedwithEvent
		  RemoveHandler AppleObject.PressesChangedwithEvent, AddressOf informonPressesChangedwithEvent
		  
		  RemoveHandler AppleObject.AnimationDidStart, Addressof informonAnimationDidStart
		  RemoveHandler AppleObject.animationDidStop, AddressOf informonAnimationDidStop
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContactBegan(Contact As AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContactEnded(Contact As AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidApplyConstraints(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidEvaluateActions(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidSimulatePhysics(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event FinishedSceneUpdate(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneDidLoad(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneDidMoveToView(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneSizeChanged(Scene as AppleSKScene, OldSize as FoundationFrameWork.NSSize)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneWillMoveFromView(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event UpdateScene(Scene as AppleSKScene, CurrentTime as Double)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleskview(mid)
			End Get
		#tag EndGetter
		AppleObject As AppleSKView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.asynchronous
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.Asynchronous = value
			End Set
		#tag EndSetter
		Asynchronous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleskview(mID)
			End Get
		#tag EndGetter
		ID As AppleSKView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.ignoresSiblingOrder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ignoresSiblingOrder = value
			End Set
		#tag EndSetter
		IgnoresSiblingOrder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.Paused
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.Paused = value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.Scene
			End Get
		#tag EndGetter
		Scene As AppleSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.shouldCullNonVisibleNodes
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.shouldCullNonVisibleNodes = value
			End Set
		#tag EndSetter
		ShouldCullNonVisibleNodes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsDrawCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsDrawCount = value
			End Set
		#tag EndSetter
		ShowsDrawCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsFields
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsFields = value
			End Set
		#tag EndSetter
		ShowsFields As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsFPS
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsFPS = value
			End Set
		#tag EndSetter
		ShowsFPS As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.showsNodeCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.showsNodeCount = value
			End Set
		#tag EndSetter
		ShowsNodeCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.showsPhysics
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsPhysics = value
			End Set
		#tag EndSetter
		ShowsPhysics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.showsQuadCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.showsQuadCount = value
			End Set
		#tag EndSetter
		ShowsQuadCount As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Asynchronous"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIKitFramework.UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresSiblingOrder"
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
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldCullNonVisibleNodes"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsDrawCount"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFields"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFPS"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsNodeCount"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsPhysics"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsQuadCount"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="AppleView.UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
