#tag Class
Protected Class iOSLibSCNView
Inherits iOSLibView
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20636C6F7365732E
		Sub Close()
		  RaiseEvent Close
		  RemoveHandlers
		  mid = nil
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As uinteger
		  Mid =  New AppleSCNView (FoundationFrameWork.NSMakeRect(0,0,100,100), RenderingAPI, UseLowPwerDevice)
		  // mid.RegisterControl (self)
		  AttachHandlers
		  Return UInteger(Mid.id)
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AttachHandlers()
		  AddHandler AppleObject.didanimate, Addressof InformOnDidAnimate
		  AddHandler AppleObject.BlocksPreparationEnded, Addressof informOnBlocksPreparationEnded
		  AddHandler AppleObject.DidBeginContact, Addressof informOnDidBeginContact
		  AddHandler AppleObject.DidEndContact, Addressof informonDidEndContact
		  AddHandler AppleObject.DidRenderScene, Addressof informonDidRenderScene
		  AddHandler AppleObject.DidSimulatePhysics, Addressof InformOnDidSimulatePhysics
		  AddHandler appleObject.DidUpdateContact, Addressof informonDidUpdateContact
		  AddHandler AppleObject.WillRenderScene, Addressof informonWillRenderScene
		  AddHandler AppleObject.WillUpdate, addressof informOnWillUpdate
		  
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

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnBlocksPreparationEnded(view as AppleSCNView, success as Boolean)
		  RaiseEvent BlocksPreparationEnded (Success)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informondidAnimate(view as AppleSCNView, Time as Double)
		  RaiseEvent DidAnimate (Time)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnDidBeginContact(view as AppleSCNView, PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent ContactBegan (Pworld, Contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnDidEndContact(view as AppleSCNView, PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent ContactEnded (Pworld, Contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonDidRenderScene(view as AppleSCNView, Scene as AppleSCNScene, Time as Double)
		  RaiseEvent DidRenderScene (Scene, Time)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnDidSimulatePhysics(view as AppleSCNView, Time as Double)
		  RaiseEvent DidSimulatePhysics (Time)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnDidUpdateContact(view as AppleSCNView, PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent ContactUpdated (Pworld, Contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonWillRenderScene(view as AppleSCNView, Scene as AppleSCNScene, Time as Double)
		  RaiseEvent WillRenderScene (Scene, Time)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonWillUpdate(view as AppleSCNView, Time as Double)
		  RaiseEvent UpdateScene (Time)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  AppleObject.Pause
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Play()
		  AppleObject.Play
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveHandlers()
		  try
		    RemoveHandler AppleObject.didanimate, Addressof InformOnDidAnimate
		    RemoveHandler AppleObject.BlocksPreparationEnded, Addressof informOnBlocksPreparationEnded
		    RemoveHandler AppleObject.DidBeginContact, Addressof informOnDidBeginContact
		    RemoveHandler AppleObject.DidEndContact, Addressof informonDidEndContact
		    RemoveHandler AppleObject.DidRenderScene, Addressof informonDidRenderScene
		    RemoveHandler AppleObject.DidSimulatePhysics, Addressof InformOnDidSimulatePhysics
		    RemoveHandler appleObject.DidUpdateContact, Addressof informonDidUpdateContact
		    RemoveHandler AppleObject.WillRenderScene, Addressof informonWillRenderScene
		    RemoveHandler AppleObject.WillUpdate, addressof informOnWillUpdate
		    
		    // super.AttachHandlers
		    
		    RemoveHandler AppleObject.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		    RemoveHandler mID.DidMoveToWindow, AddressOf informOnDidMoveToWindow
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
		  catch NilObjectException
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656E64657273207468652076696577E2809973207363656E6520696E746F2061206E657720696D616765206F626A6563742E
		Function Snapshot() As iOSImage
		  return AppleObject.Snapshot.toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F707320706C61796261636B206F66207468652076696577E2809973207363656E6520616E642072657365747320746865207363656E652074696D6520746F206974732073746172742074696D652E
		Sub Stop()
		  AppleObject.Stop
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120707265706172654F626A65637473206D6574686F64732066696E69736865642C207265706F7274696E672074686520737563636573732E
		Event BlocksPreparationEnded(Success As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074776F204E6F64657320636F6C6C696465207769746820746865697220636F6E746163746269746D61736B73206D61746368696E672E
		Event ContactBegan(PhysisWorld As AppleSCNPhysicsWorld, Contact As AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120436F6E74616374206265747765656E2074776F206E6F6465732077697468206D61746368696E6720436F6C6C6973696F6E4269746D61736B7320656E6465642E
		Event ContactEnded(PhysisWorld As AppleSCNPhysicsWorld, Contact As AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120436F6E74616374206265747765656E2074776F206E6F6465732077697468206D61746368696E6720436F6C6C6973696F6E4269746D61736B7320686173206368616E67656420627574206E6F7420656E6465642E
		Event ContactUpdated(PhysisWorld As AppleSCNPhysicsWorld, Contact As AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520616E696D6174696F6E20737465702066696E69736865642C207265706F7274696E67207468652074696D652E
		Event DidAnimate(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061207363656E65207761732072656E646572656420636F6D706C6574656C792C207265706F7274696E67207363656E6520616E642074696D652E
		Event DidRenderScene(Scene As AppleSCNScene, Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652070687973696373206F6620746865207363656E65207761732063616C63756C617465642C207265706F7274696E67207468652074696D652E
		Event DidSimulatePhysics(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520616E696D6174696F6E20737465702066696E69736865642C207265706F7274696E67207468652074696D652E
		Event UpdateScene(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event WillRenderScene(Scene As AppleSCNScene, Time As Double)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520757365722063616E206D616E6970756C617465207468652063757272656E7420706F696E74206F6620766965772074686174206973207573656420746F2072656E64657220746865207363656E652E
		#tag Getter
			Get
			  return AppleObject.AllowsCameraControl
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.AllowsCameraControl = value
			End Set
		#tag EndSetter
		AllowsCameraControl As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E7469616C696173696E67206D6F6465207573656420666F722072656E646572696E67207468652076696577E2809973207363656E652E
		#tag Getter
			Get
			  return AppleObject.AntialiasingMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.AntialiasingMode = value
			End Set
		#tag EndSetter
		AntialiasingMode As SceneKitFrameWork.SCNAntialiasingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleSCNview(mid)
			End Get
		#tag EndGetter
		AppleObject As AppleSCNView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.PreferredFramesPerSecond
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.PreferredFramesPerSecond = value
			End Set
		#tag EndSetter
		PreferredFPS As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 5468652052656E646572696E672041504920746F2075732E2050726F706572747920666F722074686520696E697469616C697A65722E
		RenderingAPI As SceneKitFrameWork.SCNRenderingAPIiOS = SceneKitFrameWork.SCNRenderingAPIiOS.metal
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363656E6520746F20626520646973706C6179656420696E2074686520766965772E
		#tag Getter
			Get
			  return AppleObject.Scene
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Scene = value
			End Set
		#tag EndSetter
		Scene As AppleScnScene
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 576865746572205363656E654B69742075736573206C6F7720706F776572206465766963657320666F72206D6574616C2072656E646572696E672E2050726F706572747920666F722074686520696E697469616C697A65722E
		UseLowPwerDevice As Boolean
	#tag EndProperty


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
			Name="AllowsCameraControl"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AntialiasingMode"
			Visible=true
			Group="Behavior"
			InitialValue="None"
			Type="SceneKitFrameWork.SCNAntialiasingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Multi2X"
				"2 - Multi4X"
			#tag EndEnumValues
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
			Name="PreferredFPS"
			Visible=true
			Group="Behavior"
			InitialValue="60"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingAPI"
			Visible=true
			Group="Behavior"
			InitialValue="SceneKitFrameWork.SCNRenderingAPIiOS.metal"
			Type="SceneKitFrameWork.SCNRenderingAPIiOS"
			EditorType="Enum"
			#tag EnumValues
				"0 - Metal"
				"1 - OpenGLES2"
			#tag EndEnumValues
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
			Name="UseLowPwerDevice"
			Visible=true
			Group="Behavior"
			InitialValue="False"
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
			InitialValue="True"
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
