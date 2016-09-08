#tag Class
Protected Class AppleSKView
Inherits AppleView
	#tag Event
		Function AllowsVibrancy() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub DidAddSubview(Subviev as appleview)
		  #pragma unused Subviev
		End Sub
	#tag EndEvent

	#tag Event
		Function Opaque() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720686173206265656E20616464656420746F2061206E65772076696577206869657261726368792E
		Sub ViewDidMoveToSuperview()
		  msgbox "arrived!"
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720686173206265656E20616464656420746F2061206E65772076696577206869657261726368792E
		Sub willRemoveSubview(Subview as AppleView)
		  #pragma unused subview
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(Frame As FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, own as Boolean) -- From AppleObject
		  if not ClassAvailable then call AppleLibSystem.LoadFramework("SpriteKit", true)
		  if ClassAvailable then
		    Super.Constructor(initwithFrame(alloc(classptr), frame))
		    MHasOWnership = true
		    registerIdentity(self)
		  else
		    MsgBox ("SpriteKit not available. It needs 64Bit to run.")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207363656E6520636F6F7264696E6174657320746F207669657720636F6F7264696E617465732E
		Function ConvertPointFromScene(Point As FoundationFrameWork.NSPoint, Scene As AppleSKSCene) As FoundationFrameWork.NSPoint
		  return convertPointFromScene (mid, Point, Scene.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointFromScene Lib SpriteKitLibName Selector "convertPoint:fromScene:" (id as ptr, Point As FoundationFrameWork . NSPoint, Scene as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207669657720636F6F7264696E6174657320746F207363656E6520636F6F7264696E617465732E
		Function ConvertPointToScene(Point As FoundationFrameWork.NSPoint, Scene As AppleSKSCene) As FoundationFrameWork.NSPoint
		  return convertPointToScene (mid, Point, Scene.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointToScene Lib SpriteKitLibName Selector "convertPoint:toScene:" (id as ptr, Point As FoundationFrameWork . NSPoint, Scene as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpreferredFrameRate Lib SpriteKitLibName Selector "preferredFrameRate" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpreferredFramesPerSecond Lib SpriteKitLibName Selector "preferredFramesPerSecond" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getScene Lib SpriteKitLibName Selector "scene" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldCullNonVisibleNodes Lib SpriteKitLibName Selector "shouldCullNonVisibleNodes" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsDrawCount Lib SpriteKitLibName Selector "showsDrawCount" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsFields Lib SpriteKitLibName Selector "showsFields" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsFPS Lib SpriteKitLibName Selector "showsFPS" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsNodeCount Lib SpriteKitLibName Selector "showsNodeCount" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsPhysics Lib SpriteKitLibName Selector "showsFPS" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsQuadCount Lib SpriteKitLibName Selector "showsQuadCount" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Private Function Identity() As AppleSKView
		  // I am doing this brute force because usually there wil be a viewControl connected to the view. Seems to be the faster way.
		  
		  #pragma BreakOnExceptions false
		  try
		    dim  wr as xojo.core.weakref = XojoIdentity.Value (id)  
		    return AppleSKView(wr.Value)
		  catch NilObjectException
		    return Nil
		  end try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didApplyConstraintsForScene(pid as ptr, sel as ptr, Scene as Ptr)
		  dim ego as new appleskview (pid)
		  if ego <> nil then ego.informondidApplyConstraintsForScene(Scene)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didBeginContact(pid as ptr, sel as ptr, contact as Ptr)
		  dim ego as new appleskview (pid)
		  if ego <> nil then ego.informondidBeginContact(contact)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEndContact(pid as ptr, sel as ptr, contact as Ptr)
		  dim ego as new appleskview (pid)
		  if ego <> nil then ego.informondidEndContact(Contact)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEvaluateActionsForScene(pid as ptr, sel as ptr, scene as ptr)
		  dim ego as new appleskview (pid)
		  if ego <> nil then ego.informonDidEvaluteActions(scene)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didFinishUpdateForScene(pid as ptr, sel as ptr, scene as ptr)
		  dim ego as new appleskview (pid)
		  if ego <> nil then ego.informondidFinishUpdateForScene (scene)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didsimulatephysics(pid as ptr, sel as ptr, scene as ptr)
		  dim ego as new appleskview (pid)
		  if ego <> nil then ego.informondidsimulatephysics(scene)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_updateforscene(pid as ptr, sel as ptr, CurrentTime as double, Scene as Ptr)
		  dim ego as new appleskview (pid)
		  ego.informonSceneUpdate (Scene, CurrentTime)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidApplyConstraintsForScene(scene as ptr)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informondidApplyConstraintsForScene (scene)
		  else
		    RaiseEvent didApplyConstraints (new appleskscene(scene))
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidBeginContact(contact as Ptr)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informondidBeginContact (contact)
		  else
		    RaiseEvent ContactBegan (new AppleSKPhysicsContact(contact))
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidChangeSize(scene as Ptr, OldSize As FoundationFrameWork.NSSize)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informonDidChangeSize (scene, oldSize)
		  else
		    RaiseEvent SceneSizeChanged (new appleskscene(scene), OldSize)
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidEndContact(contact as Ptr)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informondidEndContact (contact)
		  else
		    RaiseEvent ContactEnded (new AppleSKPhysicsContact(contact))
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEvaluteActions(scene as Ptr)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informonDidEvaluteActions (scene)
		  else
		    RaiseEvent DidEvaluateActions (new appleskscene(scene))
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidFinishUpdateForScene(scene as Ptr)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informondidFinishUpdateForScene (scene)
		  else
		    RaiseEvent FinishedSceneUpdate (new AppleSKScene(scene))
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidMoveToView(scene as appleskscene)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informondidMoveToView (scene)
		  else
		    RaiseEvent SceneDidMoveToView (scene)
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidsimulatephysics(scene as Ptr)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informondidsimulatephysics (scene)
		  else
		    RaiseEvent DidSimulatePhysics (new appleskscene(scene))
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonSceneDidLoad(scene as appleskscene)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informonSceneDidLoad (scene)
		  else
		    RaiseEvent SceneDidLoad (scene)
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnSceneUpdate(scene as ptr, CurrentTime as double)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.InformOnSceneUpdate (scene, currenttime)
		  else
		    RaiseEvent UpdateScene (new appleskscene(scene), currenttime)
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveFromView(scene as appleskscene)
		  dim parent as AppleSKView = Identity
		  if parent <> nil and parent <> self then
		    parent.informonwillMoveFromView (scene)
		  else
		    RaiseEvent SceneWillMoveFromView (scene)
		  end if
		  // end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKView
		  Return if (aptr = nil, nil, new AppleSKView(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726573656E74732061207363656E652E
		Sub Present(Scene As AppleSKScene)
		  if me.Scene <> nil then
		    me.Scene.PhysicsWorld.ContactDelegate = nil
		     me.Scene.DelegateObject = nil
		  end if
		  scene.DelegateObject = self
		  scene.PhysicsWorld.ContactDelegate = self
		  presentScene mid, scene.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub presentScene Lib SpriteKitLibName Selector "presentScene:" (id as ptr, scene as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub presentSceneTransition Lib SpriteKitLibName Selector "presentScene:transition:" (id as ptr, scene as ptr, transition as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub PresentWithTransition(Scene As AppleSKScene, transition as AppleSKTransition)
		  if me.Scene <> nil then
		    me.Scene.PhysicsWorld.ContactDelegate = nil
		    me.Scene.DelegateObject = nil
		  end if
		  scene.DelegateObject = self
		  scene.PhysicsWorld.ContactDelegate = self
		  presentSceneTransition mid, scene.id, transition.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub RegisterIdentity(Identity As object)
		  if XojoIdentity = nil then XojoIdentity = new xojo.Core.Dictionary
		  XojoIdentity.Value (id) = xojo.core.WeakRef.Create(Identity)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RemoveIdentity()
		  #Pragma BreakOnExceptions false
		  try
		    XojoControls.Remove (id)
		  catch 
		    
		  end try
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpreferredFrameRate Lib SpriteKitLibName Selector "setPreferredFrameRate:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpreferredFramesPerSecond Lib SpriteKitLibName Selector "setPreferredFramesPerSecond:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldCullNonVisibleNodes Lib SpriteKitLibName Selector "setShouldCullNonVisibleNodes:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsDrawCount Lib SpriteKitLibName Selector "setShowsDrawCount:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsFields Lib SpriteKitLibName Selector "setShowsFields:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsFPS Lib SpriteKitLibName Selector "setShowsFPS:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsNodeCount Lib SpriteKitLibName Selector "setShowsNodeCount:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsPhysics Lib SpriteKitLibName Selector "setShowsPhysics:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsQuadCount Lib SpriteKitLibName Selector "setShowsQuadCount:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652050687973696373576F726C64206F662074686520646973706C61796564207363656E65206E6F74696365642074686520626567696E6E696E67206F66206120636F6E74616374206265747765656E2074776F206E6F6465732E
		Event ContactBegan(Contact As AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652050687973696373576F726C64206F662074686520646973706C61796564207363656E65206E6F74696365642074686520656E64206F66206120636F6E74616374206265747765656E2074776F206E6F6465732E
		Event ContactEnded(Contact As AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520646973706C61796564207363656E65206170706C6965642069747320636F6E73747261696E747320746F20746865206E6F6465732E
		Event DidApplyConstraints(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520646973706C61796564207363656E65206576616C75617465642069747320616374696F6E732E
		Event DidEvaluateActions(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520646973706C61796564207363656E652066696E69736865642069747320706879736963732063616C63756C6174696F6E732E
		Event DidSimulatePhysics(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520646973706C61796564207363656E6520697320646F6E6520776974682069747320757064617465206379636C652E
		Event FinishedSceneUpdate(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520646973706C61796564207363656E6520686173206C6F6164656420616674657220796F752073657420746865207363656E65E28099732064656C656761746520746F2074686520766965772E
		Event SceneDidLoad(Scene As AppleSKSCene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520646973706C61796564207363656E65206170706561726564206F6E2073637265656E2E
		Event SceneDidMoveToView(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652073697A65206F662074686520646973706C61796564207363656E65206368616E6765642E
		Event SceneSizeChanged(Scene As AppleSKSCene, OldSize As FoundationFrameWork.NSSize)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573206265666F72652074686520636F6E6E6563746564207363656E652077696C6C206469736170706561722066726F6D2073637265656E2E
		Event SceneWillMoveFromView(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event UpdateScene(Scene as AppleSKScene, CurrentTime as Double)
	#tag EndHook


	#tag Note, Name = Info
		In this case, I ignored the event inheritance scheme and lifted the events speciaL to this class onto class layer.
		The reason is the events should be forwarded ASAP - every cycle counts in real-time game situations.
		That’s why I used the XojoControls inheritance only for the touch events and included an additional XojoIdentity shared dictionary instead.
		I imported the class inheritance so it the class can access every View, Responder and Object feature.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520766965772069732072656E6465726564207573696E67207472616E73706172656E63792E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return SpriteKitFramework.getallowsTransparency (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setallowsTransparency mid, value
			End Set
		#tag EndSetter
		AllowsTransparency As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74656E742069732072656E6465726564206173796E6368726F6E6F75736C792E
		#tag Getter
			Get
			  return SpriteKitFramework.getasynchronous (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setasynchronous mid, value
			End Set
		#tag EndSetter
		Asynchronous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 547275652069662074686520636C61737320657869737473206F6E207468652072756E6E696E672073797374656D2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return classptr <> nil
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    // SKScene delegate methods:
			    methods.Append new TargetClassMethodHelper("update:forScene:", AddressOf impl_updateforscene, "v@:d")
			    methods.Append new TargetClassMethodHelper("didEvaluateActionsForScene:", AddressOf impl_didEvaluateActionsForScene, "v@:@")
			    methods.Append new TargetClassMethodHelper("didSimulatePhysicsForScene:", AddressOf impl_didsimulatephysics, "v@:@")
			    methods.Append new TargetClassMethodHelper("didApplyConstraintsForScene:", AddressOf impl_didApplyConstraintsForScene, "v@:@")
			    methods.Append new TargetClassMethodHelper("didFinishUpdateForScene:", AddressOf impl_didFinishUpdateForScene, "v@:@")
			    //
			    // SkPhysicsContactDelegate methods
			    methods.Append new TargetClassMethodHelper("didBeginContact:", AddressOf impl_DidBeginContact, "v@:@")
			    methods.Append new TargetClassMethodHelper("didEndContact:", AddressOf impl_DidEndContact, "v@:@")
			    
			    //NSResponder "delegate" methods
			    methods.Append new TargetClassMethodHelper("acceptsFirstResponder", AddressOf impl_acceptsFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("becomeFirstResponder", AddressOf impl_becomeFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("resignFirstResponder", AddressOf impl_resignFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("smartMagnifyWithEvent:", AddressOf impl_smartMagnifyWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseDown:", AddressOf impl_mouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseDragged:", AddressOf impl_mouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseUp:", AddressOf impl_mouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseMoved:", AddressOf impl_mouseMoved, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseEntered:", AddressOf impl_mouseEntered, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseExited:", AddressOf impl_mouseExited, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseDown:", AddressOf impl_rightMouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseDragged:", AddressOf impl_rightMouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseUp:", AddressOf impl_rightMouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseDown:", AddressOf impl_otherMouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseDragged:", AddressOf impl_otherMouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseUp:", AddressOf impl_otherMouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("keyDown:", AddressOf impl_keyDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("keyUp:", AddressOf impl_keyUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("pressureChangeWithEvent:", AddressOf impl_pressureChangeWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("flagsChanged:", AddressOf impl_flagsChanged, "v@:@")
			    methods.Append new TargetClassMethodHelper("tabletPoint:", AddressOf impl_tabletPoint, "v@:@")
			    methods.Append new TargetClassMethodHelper("scrollWheel:", AddressOf impl_scrollWheel, "v@:@")
			    methods.Append new TargetClassMethodHelper("willPresentError:", AddressOf impl_willPresentError, "@@:@")
			    methods.Append new TargetClassMethodHelper("beginGestureWithEvent:", AddressOf impl_beginGestureWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("endGestureWithEvent:", AddressOf impl_endGestureWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("magnifyWithEvent:", AddressOf impl_magnifyWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("rotateWithEvent:", AddressOf impl_rotateWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("swipeWithEvent:", AddressOf impl_swipeWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("touchesBeganWithEvent:", AddressOf impl_touchesBeganWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("animationDidStart:", AddressOf impl_animationDidStart, "v@:@")
			    methods.Append new TargetClassMethodHelper("animationDidStop:finished:", AddressOf impl_animationDidStop, "v@:@c")
			    
			    //
			    //// NSView "delegate" methods
			    methods.Append new TargetClassMethodHelper("viewDidMoveToWindow", AddressOf impl_viewDidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("acceptsTouchEvents", AddressOf impl_acceptsTouchEvents, "c@:")
			    // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_didAddSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("viewDidMoveToSuperview", AddressOf impl_viewDidMoveToSuperview, "v@:")
			    methods.Append new TargetClassMethodHelper("viewWillMoveToSuperview:", AddressOf impl_viewWillMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("viewWillMoveToWindow:", AddressOf impl_viewWillMoveToWindow, "v@:@")
			    // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("opaque", AddressOf impl_opaque, "c@:")
			    // methods.Append new TargetClassMethodHelper("allowsVibrancy", AddressOf impl_allowsVibrancy, "c@:")
			    methods.Append new TargetClassMethodHelper("viewWillStartLiveResize", AddressOf impl_viewWillStartLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidEndLiveResize", AddressOf impl_viewDidEndLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidHide", AddressOf impl_viewDidHide, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidUnhide", AddressOf impl_viewDidUnhide, "v@:")
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect, "v@:{CGRect}")
			    methods.Append new TargetClassMethodHelper("menuForEvent:", AddressOf impl_menuForEvent, "@@:@")
			    methods.Append new TargetClassMethodHelper("willOpenMenu:withEvent:", AddressOf impl_willOpenMenu, "v@:@@")
			    
			    mClassPtr = BuildTargetClass ("SKView", "OSXLibSKView",methods)
			  end if
			  Return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220706172656E742D6368696C6420616E64207369626C696E672072656C6174696F6E736869707320616666656374207468652072656E646572696E67206F72646572206F66206E6F64657320696E20746865207363656E652E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return SpriteKitFramework.getignoresSiblingOrder (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setignoresSiblingOrder mid, value
			End Set
		#tag EndSetter
		IgnoresSiblingOrder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E2809973207363656E6520616E696D6174696F6E7320617265207061757365642E
		#tag Getter
			Get
			  Return SpriteKitFramework.getPaused (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setPaused mid, value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520707265666572726564206E756D626572206F66206672616D657320706572207365636F6E6420746F2072656E6465722E
		#tag Getter
			Get
			  if RespondsToSelector ("preferredFramesPerSecond", Classptr) then
			    return getpreferredFramesPerSecond (mid)
			  else
			    return getpreferredFrameRate (mid)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("preferredFramesPerSecond", ClassPtr) then
			    setpreferredFramesPerSecond mid, value
			  else
			    setpreferredFrameRate mid, value
			  end if
			End Set
		#tag EndSetter
		PreferredFPS As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363656E652063757272656E746C792070726573656E7465642062792074686520766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKScene.MakefromPtr( getScene (mid))
			End Get
		#tag EndGetter
		Scene As AppleSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206175746F6D61746963616C6C792063756C6C73206E6F6E2D76697369626C65206E6F6465732066726F6D207468652072656E646572696E6720747265652E2044656661756C7420547275652E
		#tag Getter
			Get
			  return getshouldCullNonVisibleNodes (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshouldCullNonVisibleNodes mid, value
			End Set
		#tag EndSetter
		ShouldCullNonVisibleNodes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720646973706C61797320746865206E756D626572206F662064726177696E6720706173736573206974206E656564656420746F2072656E6465722074686520766965772E
		#tag Getter
			Get
			  return getshowsDrawCount (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsDrawCount mid, value
			End Set
		#tag EndSetter
		ShowsDrawCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720646973706C61797320696E666F726D6174696F6E2061626F75742070687973696373206669656C647320696E20746865207363656E652E
		#tag Getter
			Get
			  return getshowsFields (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsFields mid, value
			End Set
		#tag EndSetter
		ShowsFields As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getshowsFPS (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsFPS mid, value
			End Set
		#tag EndSetter
		ShowsFPS As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720646973706C61797320616E206F7665726C617920746861742073686F7773207068797369637320626F646965732074686174206172652076697369626C6520696E20746865207363656E652E
		#tag Getter
			Get
			  return getshowsNodeCount (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsNodeCount mid, value
			End Set
		#tag EndSetter
		ShowsNodeCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720646973706C61797320706879736963732D72656C6174656420646562756767696E6720696E666F726D6174696F6E2E
		#tag Getter
			Get
			  return getshowsPhysics (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsPhysics mid, value
			End Set
		#tag EndSetter
		ShowsPhysics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720646973706C61797320746865206E756D626572206F662072656374616E676C6573207573656420746F2072656E64657220746865207363656E652E
		#tag Getter
			Get
			  return getshowsQuadCount (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsQuadCount mid, value
			End Set
		#tag EndSetter
		ShowsQuadCount As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21, Description = 54686973206973207573656420746F20726574726965766520746865206F726967696E616C205669657720636F6E6E656374656420746F206120586F6A6F20436F6E74726F6C20736F2074686174206576656E747320646F20666972652E
		Private Shared XojoIdentity As Xojo.Core.Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsTransparency"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Asynchronous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
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
			Name="FrameCenterRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
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
			Name="HeightAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
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
			Name="IsDrawingFindIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInFullScreenMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInLiveResize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedOrScaledFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastBaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleAxesIndependently"
				"1 - ScaleProprtionallyToFit"
				"2 - ScaleProprtionallyToFill"
				"3 - Center"
				"4 - Top"
				"5 - TopRight"
				"6 - Right"
				"7 - BottomRight"
				"8 - Bottom"
				"9 - BottomLeft"
				"10 - Left"
				"11 - TopLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="NSViewLayerContentsRedrawPolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - OnSetNeedsDisplay"
				"2 - DuringResize"
				"3 - BeforeResize"
				"4 - Crossfade"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerUsesCoreImageFilters"
			Group="Behavior"
			Type="Boolean"
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
			Name="NeedsDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsUpdateConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsBoundsChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsFrameChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredFPS"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldCullNonVisibleNodes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsDrawCount"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFields"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFPS"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsNodeCount"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsPhysics"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsQuadCount"
			Group="Behavior"
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
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolTip"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
