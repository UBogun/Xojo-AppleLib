#tag Class
 Attributes ( "needs refinement" ) Protected Class AppleSKScene
Inherits AppleSKEffectNode
	#tag Method, Flags = &h0, Description = 496E697469616C697A65732061206E6577207363656E65206F626A6563742E
		Sub Constructor(size as FoundationFrameWork.NSSize)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, own as Boolean) -- From AppleObject
		  Super.Constructor(initWithSize(alloc(ClassPtr), size))
		  MHasOwnership = True
		  RegisterControl(self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207669657720636F6F7264696E6174657320746F207363656E6520636F6F7264696E617465732E
		Function convertPointFromView(Point as FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  REturn convertPointFromView (mid, point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointFromView Lib SpriteKitLibName Selector "convertPointFromView:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function ConvertPointToView(Point as FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  REturn convertPointToView (mid, point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointToView Lib SpriteKitLibName Selector "convertPointToView:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaudioEngine Lib SpriteKitLibName Selector "audioEngine" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcamera Lib SpriteKitLibName Selector "camera" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlistener Lib SpriteKitLibName Selector "listener" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getphysicsWorld Lib SpriteKitLibName Selector "physicsWorld" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscaleMode Lib SpriteKitLibName Selector "scaleMode" (id as ptr) As SKSceneScaleMode
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didApplyConstraintsForScene(pid as ptr, sel as ptr)
		  dim ego as new appleskscene (pid)
		  if ego <> nil then ego.informondidApplyConstraintsForScene
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidChangeSize(pid as ptr, sel as ptr, OldSize As FoundationFrameWork.NSSize)
		  dim ego as  appleskscene = new AppleSKScene (pid)
		  if ego <> nil then ego.informonDidChangeSize (OldSize)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEvaluateActionsForScene(pid as ptr, sel as ptr)
		  dim ego as new appleskscene (pid)
		  if ego <> nil then ego.informonDidEvaluteActions
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didFinishUpdateForScene(pid as ptr, sel as ptr)
		  dim ego as  appleskscene = new AppleSKScene (pid)
		  if ego <> nil then ego.informondidFinishUpdateForScene ()
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didMoveToView(pid as ptr, sel as ptr, view as ptr)
		  dim ego as new appleskscene (pid)
		  if ego <> nil then ego.informondidMoveToView ()
		  #pragma unused sel
		  #pragma unused view
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didsimulatephysics(pid as ptr, sel as ptr)
		  dim ego as new appleskscene (pid)
		  if ego <> nil then ego.informondidsimulatephysics
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SceneDidLoad(pid as ptr, sel as ptr)
		  dim ego as  appleskscene = new AppleSKScene (pid)
		  if ego <> nil then ego.informonSceneDidLoad ()
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_updateforscene(pid as ptr, sel as ptr, CurrentTime as double)
		  dim ego as  appleskscene = new AppleSKScene (pid)
		  if ego <> nil then ego.informonSceneUpdate (CurrentTime)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveFromView(pid as ptr, sel as ptr, view as ptr)
		  dim ego as new appleskscene (pid)
		  if ego <> nil then ego.informonwillMoveFromView ()
		  #pragma unused sel
		  #pragma unused view
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidApplyConstraintsForScene()
		  if view <> nil then
		    view.informondidApplyConstraintsForScene(mid)
		  else
		    RaiseEvent didApplyConstraints ()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidChangeSize(OldSize As FoundationFrameWork.NSSize)
		  if view <> nil then
		    view.informonDidChangeSize(mid, oldsize)
		  else
		    RaiseEvent SizeChanged (OldSize)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEvaluteActions()
		  if view <> nil then
		    view.informonDidEvaluteActions(mid)
		  else
		    RaiseEvent DidEvaluateActions ()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidFinishUpdateForScene()
		  if view <> nil then
		    view.informondidFinishUpdateForScene(mid)
		  else
		    RaiseEvent FinishedSceneUpdate ()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidMoveToView()
		  if view <> nil then
		    view.informondidMoveToView(self)
		  else
		    RaiseEvent SceneDidMoveToView ()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidsimulatephysics()
		  if view <> nil then
		    view.informondidsimulatephysics(mid)
		  else
		    RaiseEvent DidSimulatePhysics ()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonSceneDidLoad()
		  if view <> nil then
		    view.informonSceneDidLoad(self)
		  else
		    RaiseEvent SceneDidLoad ()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnSceneUpdate(CurrentTime as double)
		  if view <> nil then
		    view.informonSceneUpdate(mid, currenttime)
		  else
		    RaiseEvent UpdateScene (currenttime)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveFromView()
		  if view <> nil then
		    view.informonwillMoveFromView(self)
		  else
		    RaiseEvent SceneWillMoveFromView ()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithSize Lib SpriteKitLibName Selector "initWithSize:" (id as ptr, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKScene
		  return if (aptr = nil, nil, new AppleSKScene(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Private Function ParentControl() As AppleSKScene
		  #pragma BreakOnExceptions false
		  try
		    dim  wr as xojo.core.weakref = XojoControls.Value (id)  
		    return AppleSKScene(wr.Value)
		  catch NilObjectException
		    return Nil
		  end try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RegisterControl(ParentControl As object)
		  if XojoControls = nil then XojoControls = new xojo.Core.Dictionary
		  XojoControls.Value (id) = xojo.core.WeakRef.Create(ParentControl)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RemoveControl()
		  #Pragma BreakOnExceptions false
		  try
		    XojoControls.Remove (id)
		  catch 
		    
		  end try
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcamera Lib SpriteKitLibName Selector "setCamera:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlistener Lib SpriteKitLibName Selector "setListener:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setscaleMode Lib SpriteKitLibName Selector "setScaleMode:" (id as ptr, value as SKSceneScaleMode)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event DidApplyConstraints()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEvaluateActions()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSimulatePhysics()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FinishedSceneUpdate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SceneDidLoad()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SceneDidMoveToView()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SceneWillMoveFromView()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SizeChanged(OldSize As FoundationFrameWork.NSSize)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UpdateScene(CurrentTime as Double)
	#tag EndHook


	#tag Note, Name = Status
		
		complete, but needs refinement – Delegate should better be placed in SKView.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E7420696E207468652076696577E2809973206672616D65207468617420636F72726573706F6E647320746F20746865207363656E65E2809973206F726967696E2E
		#tag Getter
			Get
			  return SpriteKitFramework.getanchorPoint (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setanchorPoint mid,value
			End Set
		#tag EndSetter
		AnchorPoint As FoundationFrameWork.NSpoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520415620466F756E646174696F6E20617564696F20656E67696E65207573656420746F20706C617920617564696F2066726F6D20617564696F206E6F64657320636F6E7461696E656420696E20746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleAVAudioEngine(getaudioEngine (mid))
			End Get
		#tag EndGetter
		AudioEngine As AppleAVAudioEngine
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F72206F6620746865207363656E652E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616D657261206E6F646520696E20746865207363656E6520746861742064657465726D696E657320776861742070617274206F6620746865207363656E65E280997320636F6F7264696E6174652073706163652069732076697369626C6520696E2074686520766965772E0A5468652064656661756C742076616C7565206F6620746869732070726F7065727479206973206E696C2C207768696368206D65616E73207468617420746865207363656E65E280997320616E63686F72506F696E7420616E642073697A652070726F706572746965732064657465726D696E65207768617420706F7274696F6E206F6620746865207363656E652069732076697369626C652E2049662073657420746F20706F696E7420746F20612063616D657261206E6F646520636F6E7461696E656420696E20746865207363656E652C2074686520616E63686F72506F696E742070726F70657274792069732069676E6F72656420616E6420746865207363656E652069732072656E6465726564207573696E67207468652063616D657261206E6F6465E28099732070726F7065727469657320696E73746561642E20
		#tag Getter
			Get
			  return AppleSKCameraNode.MakefromPtr(getcamera(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcamera mid, value.id
			  
			End Set
		#tag EndSetter
		Camera As AppleSKCameraNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    // SKScene delegate methods:
			    // methods.Append new TargetClassMethodHelper("update:", AddressOf impl_updateforscene, "v@:d")
			    // methods.Append new TargetClassMethodHelper("didEvaluateActions", AddressOf impl_didEvaluateActionsForScene, "v@:")
			    // methods.Append new TargetClassMethodHelper("didSimulatePhysics", AddressOf impl_didsimulatephysics, "v@:")
			    // methods.Append new TargetClassMethodHelper("didApplyConstraints", AddressOf impl_didApplyConstraintsForScene, "v@:")
			    // methods.Append new TargetClassMethodHelper("didFinishUpdate:", AddressOf impl_didFinishUpdateForScene, "v@:")
			    //
			    methods.Append new TargetClassMethodHelper ("didChangeSize:", AddressOf impl_DidChangeSize, "v@:{CGSize}")
			    methods.Append new TargetClassMethodHelper ("sceneDidLoad", AddressOf impl_SceneDidLoad, "v@:")
			    
			    // methods.Append new TargetClassMethodHelper("didBeginContact:", AddressOf impl_DidBeginContact, "v@:@")
			    // methods.Append new TargetClassMethodHelper("didEndContact:", AddressOf impl_DidEndContact, "v@:@")
			    //
			    methods.Append new TargetClassMethodHelper("willMoveFromView:", AddressOf impl_willMoveFromView, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToView:", AddressOf impl_didMoveToView, "v@:@")
			    //
			    // #if Target64Bit
			    // #elseif Target32Bit
			    // methods.Append new TargetClassMethodHelper ("didChangeSize:", AddressOf impl_DidChangeSize32, "v@:{CGSize}")
			    // #endif
			    
			    mClassPtr = BuildTargetClass ("SKScene", "OSXLibSKScene",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F626A6563742073706563696669656420746F2072656365697665207065726970686572616C206576656E74732E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(AppKitFramework.getdelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdelegate(id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E6F6465207573656420746F2064657465726D696E652074686520706F736974696F6E206F6620746865206C697374656E657220666F7220706F736974696F6E616C20617564696F20696E20746865207363656E652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector ("listener", classptr) then return AppleSKNode.MakeFromPtr(getlistener (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setListener:", classptr) then setlistener mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Listener As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706879736963732073696D756C6174696F6E206173736F636961746564207769746820746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleSKPhysicsWorld(getphysicsWorld (mid))
			End Get
		#tag EndGetter
		PhysicsWorld As AppleSKPhysicsWorld
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 686F7720746865207363656E65206973206D617070656420746F20746865207669657720746861742070726573656E74732069742E
		#tag Getter
			Get
			  return getscaleMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setscaleMode mid,value
			End Set
		#tag EndSetter
		ScaleMode As SKSceneScaleMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064696D656E73696F6E73206F6620746865207363656E6520696E20706F696E74732E
		#tag Getter
			Get
			  return FoundationFrameWork.getSize(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setsize mid,value
			End Set
		#tag EndSetter
		Size As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E7420696E207468652076696577E2809973206672616D65207468617420636F72726573706F6E647320746F20746865207363656E65E2809973206F726967696E2E
		#tag Getter
			Get
			  return AppleSKView.MakefromPtr (AppKitFramework.getview (mid))
			End Get
		#tag EndGetter
		View As AppleSKView
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared XojoControls As xojo.Core.Dictionary
	#tag EndProperty


	#tag Enum, Name = SKSceneScaleMode, Flags = &h0
		FillUnproportional
		  FillProportional
		  FitProportional
		ResizeScene
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScaleMode"
			Group="Behavior"
			Type="SKSceneScaleMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - FillUnproportional"
				"1 - FillProportional"
				"2 - FitProportional"
				"3 - ResizeScene"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
