#tag Class
Protected Class AppleSCNView
Inherits AppleView
	#tag Event , Description = 52657475726E207472756520746F2062656C6E6420746865207669657720696E746F20616E20456666656374566965772E
		Function AllowsVibrancy() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub DidAddSubview(Subview as appleview)
		  #pragma unused Subview
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub Magnify(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 52657475726E207472756520696620746865207669657720646F6573206E6F7420757365207472616E73706172656E636965732E
		Function Opaque() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub Rotate(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub ScrollWheel(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077696C6C2072656D6F7665206120737562766965772E
		Sub willRemoveSubview(Subview as AppleView)
		  #pragma unused Subview
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub CompletionHandlerTemplate(success As Boolean)
		  RaiseEvent BlocksPreparationEnded (success)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E732061206E65776C7920616C6C6F6361746564205363656E654B69742076696577206F626A65637420776974682074686520737065636966696564206672616D652072656374616E676C6520616E64206F7074696F6E732E
		Sub Constructor(aFrame as FoundationFramework.NSRect, options as AppleDictionary = nil)
		  #if Targetmacos and Target32Bit 
		    MakeException ("SceneKit not available. It needs 64Bit to run.")
		  #endif
		  if not ClassAvailable then call AppleLibSystem.LoadFramework("SceneKit", true)
		  
		  if ClassAvailable then
		    super.Constructor ( initWithFrameOptions (alloc(ClassPtr), aframe, nilptr(options)), true)
		    MakeSuper
		    RegisterIdentity(self)
		    me.DelegateObject = self
		  else
		    MakeException ("SceneKit not available. It needs 64Bit to run.")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 496E697469616C697A657320616E642072657475726E732061206E65776C7920616C6C6F6361746564205363656E654B69742076696577206F626A65637420776974682074686520737065636966696564206672616D652072656374616E676C6520616E64206F7074696F6E732E
		Sub Constructor(aFrame as FoundationFramework.NSRect, API as SceneKitFrameWork.SCNRenderingAPIMacOS)
		  dim options as new AppleMutableDictionary(1)
		  options.ObjectForKey (SceneKitFrameWork.kSCNPreferredRenderingAPIKey) = new AppleNumber(integer(api))
		  Constructor(aFrame, options)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub destructor()
		  System.DebugLog "scn destructor"
		  me.scene = nil
		  me.DelegateObject = nil
		  unregisteridentity(self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardAnimationsAtTime(pid as ptr, sel as ptr, attime as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim time as new AppleNumber(attime, true)
		  if view <> nil then view.RaiseAnimationsUpdate (time.DoubleValue)
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidBeginContact(pid as ptr, sel as ptr, Ar as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim ApArr as  new AppleArray (ar, true)
		  // System.DebugLog "Animation Time retrieved "+time.DoubleValue.ToText
		  if view <> nil and ar <> nil  then
		    view.RaiseDidBeginContact (AppleSCNPhysicsWorld.MakefromPtr(ApArr.PtrAtIndex(0)), AppleSCNPhysicsContact.MakefromPtr(aparr.PtrAtIndex(1)))
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidEndContact(pid as ptr, sel as ptr, Ar as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim ApArr as new AppleArray (ar, true)
		  if view <> nil and ar <> nil  then
		    view.RaiseDidEndContact (AppleSCNPhysicsWorld.MakefromPtr(ApArr.PtrAtIndex(0)), AppleSCNPhysicsContact.MakefromPtr(aparr.PtrAtIndex(1)))
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidRenderSceneAtTime(pid as ptr, sel as ptr, nsarray as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim a as AppleArray = AppleArray.MakeFromPtr(nsarray, true)
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim time as new AppleNumber(a.PtrAtIndex(1), true)
		  if view <> nil then
		    view.RaiseDidRenderUpdate (AppleSCNScene.MakefromPtr(a.PtrAtIndex(0)), time.DoubleValue)
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidUpdateContact(pid as ptr, sel as ptr, Ar as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim ApArr as new AppleArray(ar, true)
		  // System.DebugLog "Animation Time retrieved "+time.DoubleValue.ToText
		  if view <> nil and ApArr <> nil  then
		    view.RaisedidUpdateContact (AppleSCNPhysicsWorld.MakefromPtr(ApArr.PtrAtIndex(0)), AppleSCNPhysicsContact.MakefromPtr(aparr.PtrAtIndex(1)))
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardPhysicsAtTime(pid as ptr, sel as ptr, attime as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim time as new AppleNumber(attime, true)
		  if view <> nil then view.RaisephysicsUpdate (time.DoubleValue)
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardUpdateAtTime(pid as ptr, sel as ptr, attime as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim time as new AppleNumber(attime, true)
		  if view <> nil then view.RaiseRenderUpdate (time.DoubleValue)
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardWillRenderSceneAtTime(pid as ptr, sel as ptr, nsarray as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim a as AppleArray = AppleArray.MakeFromPtr(nsarray)
		  dim view as AppleSCNView = applescnview.identity (pid)
		  dim scene as  AppleSCNScene = AppleSCNScene.MakefromPtr(a.PtrAtIndex(0))
		  dim time as new AppleNumber(a.PtrAtIndex(1))
		  // System.DebugLog "Render Scene Time retrieved "+time.DoubleValue.ToText
		  if view <> nil then
		    // view.RenderTime = time.DoubleValue
		    // view.renderscene = scene
		    view.RaiseRenderSceneUpdate (scene, time.DoubleValue)
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsCameraControl Lib SceneKitLibname Selector "allowsCameraControl" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getantialiasingMode Lib SceneKitLibname Selector "antialiasingMode" (id as ptr) As SCNAntialiasingMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpreferredFramesPerSecond Lib SceneKitLibname Selector "preferredFramesPerSecond" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsnapshot Lib SceneKitLibname Selector "snapshot" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5365617263686573207468652072656E6465726572E2809973207363656E6520666F72206F626A6563747320636F72726573706F6E64696E6720746F206120706F696E7420696E207468652072656E646572656420696D6167652E
		Function HitTest(aPoint as FoundationFramework.NSPoint, optional options as AppleDictionary) As AppleArray
		  if options = nil then options = new SCNHitTestingDictionary(me.Scene.RootNode)
		  return AppleArray.MakeFromPtr (SceneKitFrameWork.hitTest(mid, aPoint, options.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden ) Private Shared Function Identity(pid as ptr) As AppleSCNView
		  #pragma BreakOnExceptions false
		  try
		    dim  wr as xojo.core.weakref = XojoIdentity.Value (pid)  
		    return AppleSCNView(wr.Value)
		  catch NilObjectException
		    return AppleSCNView.MakefromPtr(pid)
		  end try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didBeginContact(pid as ptr, sel as ptr, physicsworld as ptr, contact as ptr)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidBeginContact:")
		  
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,physicsworld)
		  AppleMutableArray.ThreadSafeAdd(a, contact)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a, false)
		  System.DebugLog "Did Begin Contact "
		  
		  
		  #Pragma Unused Sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEndContact(pid as ptr, sel as ptr, physicsworld as ptr, contact as ptr)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidEndContact:")
		  
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,physicsworld)
		  AppleMutableArray.ThreadSafeAdd(a, contact)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a, false)
		  
		  System.DebugLog "Did End Contact "
		  
		  #Pragma Unused Sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didUpdateContact(pid as ptr, sel as ptr, physicsworld as ptr, contact as ptr)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidUpdateContact:")
		  
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,physicsworld)
		  AppleMutableArray.ThreadSafeAdd(a, contact)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a, false)
		  System.DebugLog "Did Update Contact "
		  
		  
		  #Pragma Unused Sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseDown(pid as ptr, sel as ptr, anevent as ptr)
		  #pragma StackOverflowChecking false
		  dim responder as AppleSCNView =identity(pid)
		  if responder <> nil then 
		    responder.informOnmouseDown(AppleNSEvent.MakeFromPtr(anevent))
		    soft declare sub  objc_msgSendSuper lib Obj_C (s as ptr, sel as ptr, anevent as ptr)
		    objc_msgSendSuper(responder.Objc_superObj.data, sel, anevent)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_mouseUp(pid as ptr, sel as ptr, anevent as ptr)
		  #pragma StackOverflowChecking false
		  dim responder as AppleSCNView =identity(pid)
		  if responder <> nil then 
		    responder.informOnmouseUp(AppleNSEvent.MakeFromPtr(anevent))
		    soft declare sub  objc_msgSendSuper lib Obj_C (s as ptr, sel as ptr, anevent as ptr)
		    objc_msgSendSuper(responder.Objc_superObj.data, sel, anevent)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererdidApplyAnimationsAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkAnimationsAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, n, false)
		  
		  
		  // // #Pragma StackOverflowChecking false
		  // // #Pragma DisableBackgroundTasks
		  // dim view as new AppleSCNView(pid)
		  // if view <> nil then
		  // view.animationstime = attime
		  // view.RaiseAnimationsUpdate
		  // end if
		  // 
		  // 
		  // // if NotificationDict.HasKey(pid) then
		  // // dim d as dictionary = NotificationDict.value (pid)
		  // // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererDidRenderSceneAtTime(pid as ptr, sel as ptr, renderer as ptr, scene as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidRenderSceneAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,scene)
		  AppleMutableArray.ThreadSafeAdd(a, n)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a, false)
		  
		  
		  // #Pragma StackOverflowChecking false
		  // #Pragma DisableBackgroundTasks
		  // dim view as new AppleSCNView(pid)
		  // if view <> nil then
		  // view.RenderSceneTime = attime
		  // view.renderedscene = AppleSCNScene.MakefromPtr(scene)
		  // view.RaiseDidRenderUpdate
		  // end if
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kDidRenderScene) = attime // left side is the constant, right side the value
		  // d.Value (kRenderScene) = scene
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkDidRenderSceneAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererdidSimulatePhysicsAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkPhysicsAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, n, false)
		  
		  
		  
		  // #Pragma StackOverflowChecking false
		  // #Pragma DisableBackgroundTasks
		  // 
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kDidSimulatePhysics) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkPhysicsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererUpdateAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr = FoundationFrameWork.NSSelectorFromString("checkUpdateAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, n, false)
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererwillRenderSceneAtTime(pid as ptr, sel as ptr, renderer as ptr, scene as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #pragma BackgroundTasks False
		  
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkWillRenderSceneAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,scene)
		  AppleMutableArray.ThreadSafeAdd(a, n)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a, false)
		  
		  // #Pragma Unused Sel
		  // #Pragma Unused renderer
		  // dim view as new AppleSCNView(pid)
		  // if view <> nil then
		  // view.renderscene = AppleSCNScene.MakefromPtr(scene)
		  // view.rendertime = attime
		  // view.RaiseRenderSceneUpdate
		  // end if
		  
		  
		  // #Pragma StackOverflowChecking false
		  // #Pragma DisableBackgroundTasks
		  // 
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kWillRenderScene) = attime // left side is the constant, right side the value
		  // d.Value (kRenderScene) = scene
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkWillRenderSceneAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithFrameOptions Lib SceneKitLibname Selector "initWithFrame:options:" (id as ptr, frame as FoundationFrameWork . NSRect, options as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722061206E6F6465206D696768742062652076697369626C652066726F6D20612073706563696669656420706F696E74206F6620766965772E
		Function IsNodeInsideFrustrum(aNode As AppleSCNNode, pointofView as AppleSCNNode) As Boolean
		  return SceneKitFrameWork.isNodeInsideFrustum (mid, aNode.id, pointofView.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNView
		  return if (aptr = nil, nil, new applescnview(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub MakeSuper()
		  Objc_superObj =  new xojo.Core.MutablememoryBlock(2 * IntegerSize)
		  Objc_superObj.PtrValue(0) = mid
		  Objc_superObj.PtrValue( IntegerSize) = me.SuperClass_Ptr
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616C6C206E6F6465732074686174206D696768742062652076697369626C652066726F6D20612073706563696669656420706F696E74206F6620766965772E20417661696C61626C652073696E636520694F532039202F206D61634F532031302E31312E
		Function NodesInsideFrustrum(PointofView as AppleSCNNode) As AppleArray
		  if respondsToSelector ("nodesInsideFrustumWithPointOfView:", classptr) then
		    return AppleArray.MakeFromPtr (SceneKitFrameWork.nodesInsideFrustumWithPointOfView (mid,  PointofView.id))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617573657320706C61796261636B206F66207468652076696577E2809973207363656E652E
		Sub Pause()
		  pause mid, nil
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub pause Lib SceneKitLibname Selector "pause:" (id as ptr, SENDER AS PTR)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526573756D657320706C61796261636B206F66207468652076696577E2809973207363656E652E
		Sub Play()
		  play mid, nil
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub play Lib SceneKitLibname Selector "play:" (id as ptr, SENDER AS PTR)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50726570617265732061205363656E654B6974206F626A65637420666F722072656E646572696E672E20596F752063616E2075736520616E206F7074696F6E616C20626C6F636B20746861742077696C6C2062652063616C6C656420706572696F646963616C6C7920746F2063616E63656C20746865207072657061726174696F6E2E2054686520426C6F636B206D6574686F64206D7573742074616B65206E6F20706172616D657465727320616E642072657475726E206120426F6F6C65616E2076616C756520646570696374696E67207468652063616E63656C6C6174696F6E202872657475726E205472756520746F2063616E63656C292E
		Function PrepareObject(anObject As AppleSCNObject, optional block as AppleBlock) As Boolean
		  return SceneKitFrameWork.prepareObject( mid, anObject.id, if (block = nil, Nil, block.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726570617265732074686520737065636966696564205363656E654B6974206F626A6563747320666F722072656E646572696E672C207573696E672061206261636B67726F756E64207468726561642E20496620796F752073706563696679206E6F20436F6D706C6574696F6E426C6F636B207468652054656D706C6174652077696C6C2062652063616C6C65642074686174207261697365732074686520426C6F636B735072657061726174696F6E456E646564206576656E742E
		Sub PrepareObjects(Objects As AppleArray, optional completionblock as AppleBlock)
		  if completionblock = nil then completionblock = new AppleBlock(addressof CompletionHandlerTemplate)
		  SceneKitFrameWork.prepareObjects mid, Objects.id, completionblock.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726570617265732074686520737065636966696564205363656E654B6974206F626A6563747320666F722072656E646572696E672C207573696E672061206261636B67726F756E64207468726561642E
		Sub PrepareObjects(paramarray Objects() As AppleSCNObject)
		  dim myarray as AppleMutableArray = AppleMutableArray.fromAppleObjects(objects)
		  PrepareObjects myarray, new appleblock (addressof CompletionHandlerTemplate)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726F6A65637473206120706F696E742066726F6D2074686520334420776F726C6420636F6F7264696E6174652073797374656D206F6620746865207363656E6520746F2074686520324420706978656C20636F6F7264696E6174652073797374656D206F66207468652072656E64657265722E
		Function ProjectPoint(aPoint as SCNVector3) As SCNVector3
		  return SceneKitFrameWork.projectPoint (mid, aPoint)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseAnimationsUpdate(AnimationsTime as Double)
		  RaiseEvent DidAnimate (AnimationsTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisedidBeginContact(lastPWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent didbegincontact (lastPWorld, contact)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisedidEndContact(lastPWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent didendcontact (lastPWorld, contact)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseDidRenderUpdate(renderscene as AppleSCNScene, rendertime as double)
		  RaiseEvent DidRenderScene (renderscene, rendertime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisedidUpdateContact(lastPWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  RaiseEvent DidUpdateContact lastPWorld, contact
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisePhysicsUpdate(physicstime as double)
		  RaiseEvent DidSimulatePhysics (physicstime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseRenderSceneUpdate(renderscene as AppleSCNScene, rendertime as double)
		  RaiseEvent willrenderscene (renderscene, rendertime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseRenderUpdate(updateTime as double)
		  RaiseEvent WillUpdate (updatetime)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsCameraControl Lib SceneKitLibname Selector "setAllowsCameraControl:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setantialiasingMode Lib SceneKitLibname Selector "setAntialiasingMode:" (id as ptr, value as SCNAntialiasingMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpreferredFramesPerSecond Lib SceneKitLibname Selector "setPreferredFramesPerSecond:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656E64657273207468652076696577E2809973207363656E6520696E746F2061206E657720696D616765206F626A6563742E
		Function Snapshot() As AppleImage
		  return AppleImage.MakeFromPtr (getsnapshot(mid))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F707320706C61796261636B206F66207468652076696577E2809973207363656E6520616E642072657365747320746865207363656E652074696D6520746F206974732073746172742074696D652E
		Sub Stop()
		  stop mid, nil
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub stop Lib SceneKitLibname Selector "stop:" (id as ptr, SENDER AS PTR)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E70726F6A65637473206120706F696E742066726F6D2074686520324420706978656C20636F6F7264696E6174652073797374656D206F66207468652072656E646572657220746F2074686520334420776F726C6420636F6F7264696E6174652073797374656D206F6620746865207363656E652E
		Function UnprojectPoint(aPoint as SCNVector3) As SCNVector3
		  return SceneKitFrameWork.unprojectPoint (mid, aPoint)
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BlocksPreparationEnded(success As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidAnimate(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidBeginContact(PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndContact(PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidRenderScene(Scene As AppleSCNScene, Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSimulatePhysics(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidUpdateContact(PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillRenderScene(Scene As AppleSCNScene, Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillUpdate(Time As Double)
	#tag EndHook


	#tag Note, Name = Untitled, Description = 53746174757320696E636F6D706C657465
		
		mssing:
		openGLContext (macOS)
		PixelFormat (macOS)
		metal options
		overlaySKSCene
		SCNTechnique
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520757365722063616E206D616E6970756C617465207468652063757272656E7420706F696E74206F6620766965772074686174206973207573656420746F2072656E64657220746865207363656E652E
		#tag Getter
			Get
			  return getallowsCameraControl (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAllowsCameraControl mid, value
			End Set
		#tag EndSetter
		AllowsCameraControl As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E7469616C696173696E67206D6F6465207573656420666F722072656E646572696E67207468652076696577E2809973207363656E652E
		#tag Getter
			Get
			  return getAntialiasingMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAntialiasingMode mid, value
			End Set
		#tag EndSetter
		AntialiasingMode As SCNAntialiasingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F20656E67696E65205363656E654B6974207573657320666F7220706C6179696E67207363656E6520736F756E64732E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector ("audioEngine", classptr) then return AppleAVAudioEngine.MakefromPtr (SceneKitFrameWork.getaudioEngine (mid))
			End Get
		#tag EndGetter
		AudioEngine As AppleAVAudioEngine
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F646520726570726573656E74696E6720746865206C697374656E6572E280997320706F736974696F6E20696E20746865207363656E6520666F7220757365207769746820706F736974696F6E616C20617564696F20656666656374732E
		#tag Getter
			Get
			  if RespondsToSelector ("audioListener", classptr) then return AppleSCNNode.MakefromPtr (SceneKitFrameWork.getaudioListener (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  try
			    SceneKitFrameWork.setaudioListener mid, nilptr(value)
			  Catch
			  end try
			End Set
		#tag EndSetter
		AudioListener As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B6974206175746F6D61746963616C6C792061646473206C696768747320746F2061207363656E652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getautoenablesDefaultLighting (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setAutoenablesDefaultLighting mid, value
			End Set
		#tag EndSetter
		AutoenablesDefaultLighting As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F72206F662074686520766965772E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
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
			  //Here's one problem: Apple forwards the event methods on a background thread. It's not easy to catch it with Xojo without a crash, and it's getting unstable once too many fire simultaneously.
			  // I haven't found a solution yet besides activating only selected events. So please comment and decomment these methods in pairs and run long-time tests to see if the solution is stable enough for you
			  
			  
			  static mClassPtr as ptr
			  if mClassPtr = nil then
			    dim methods() as TargetClassMethodHelper
			    
			    #if targetmacos
			      // NSResponder "delegate" methods
			      methods.Append new TargetClassMethodHelper("acceptsFirstResponder", AddressOf impl_acceptsFirstResponder, "c@:")
			      methods.Append new TargetClassMethodHelper("becomeFirstResponder", AddressOf impl_becomeFirstResponder, "c@:")
			      methods.Append new TargetClassMethodHelper("resignFirstResponder", AddressOf impl_resignFirstResponder, "c@:")
			      methods.Append new TargetClassMethodHelper("smartMagnifyWithEvent:", AddressOf impl_smartMagnifyWithEvent, "v@:@")
			      methods.Append new TargetClassMethodHelper("mouseDown:", AddressOf applescnview.impl_mouseDown, "v@:@")
			      methods.Append new TargetClassMethodHelper("mouseDragged:", AddressOf impl_mouseDragged, "v@:@")
			      methods.Append new TargetClassMethodHelper("mouseUp:", AddressOf applescnview.impl_mouseUp, "v@:@")
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
			      // methods.Append new TargetClassMethodHelper("scrollWheel:", AddressOf impl_scrollWheel, "v@:@")
			      methods.Append new TargetClassMethodHelper("willPresentError:", AddressOf impl_willPresentError, "@@:@")
			      methods.Append new TargetClassMethodHelper("beginGestureWithEvent:", AddressOf impl_beginGestureWithEvent, "v@:@")
			      methods.Append new TargetClassMethodHelper("endGestureWithEvent:", AddressOf impl_endGestureWithEvent, "v@:@")
			      // methods.Append new TargetClassMethodHelper("magnifyWithEvent:", AddressOf impl_magnifyWithEvent, "v@:@")
			      // methods.Append new TargetClassMethodHelper("rotateWithEvent:", AddressOf impl_rotateWithEvent, "v@:@")
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
			      
			    #elseif TargetiOS
			      methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			      methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			      methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			      methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			      // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			      // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			      // methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			      // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			      // methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			      // methods.Append new TargetClassMethodHelper("requiresConstraintBasedLayout", AddressOf impl_requiresConstraintBasedLayout, "c@:")
			      
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect, "v@:{CGRect}")
			      
			      //TraitEnvironment Protocol
			      methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			      
			      
			      
			      methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			      
			      methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			      methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			      methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			      
			      methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			      methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			      
			      methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			      
			      // CAAnimation "Delegate" methods
			      methods.Append new TargetClassMethodHelper("animationDidStart:", AddressOf impl_animationDidStart, "v@:@")
			      methods.Append new TargetClassMethodHelper("animationDidStop:finished:", AddressOf impl_animationDidStop, "v@:@c")
			    #endif
			    
			    
			    
			    // These are the delegate methods
			    methods.Append new TargetClassMethodHelper("renderer:updateAtTime:", AddressOf impl_rendererUpdateAtTime, "v@:@d")
			    methods.Append new TargetClassMethodHelper("renderer:didApplyAnimationsAtTime:", AddressOf impl_rendererdidApplyAnimationsAtTime, "v@:@d")
			    methods.Append new TargetClassMethodHelper("renderer:didSimulatePhysicsAtTime:", AddressOf impl_rendererdidSimulatePhysicsAtTime, "v@:@d")
			    methods.Append new TargetClassMethodHelper("renderer:willRenderScene:atTime:", AddressOf impl_rendererwillRenderSceneAtTime, "v@:@@d")
			    methods.Append new TargetClassMethodHelper("renderer:didRenderScene:atTime:", AddressOf impl_rendererDidRenderSceneAtTime, "v@:@@d")
			    
			    // and these are the forwarders, both in the same order
			    methods.Append new TargetClassMethodHelper("checkUpdateAtTime:", AddressOf ForwardUpdateAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkAnimationsAtTime:", AddressOf ForwardAnimationsAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkPhysicsAtTime:", AddressOf ForwardPhysicsAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkWillRenderSceneAtTime:", AddressOf ForwardWillRenderSceneAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkDidRenderSceneAtTime:", AddressOf ForwardDidRenderSceneAtTime, "v@:@")
			    
			    // Now the PhysicsWorldContactDelegate methods
			    methods.Append new TargetClassMethodHelper("physicsWorld:didBeginContact:", AddressOf impl_didBeginContact, "v@:@@")
			    methods.Append new TargetClassMethodHelper("physicsWorld:didUpdateContact:", AddressOf impl_didUpdateContact, "v@:@@")
			    methods.Append new TargetClassMethodHelper("physicsWorld:didEndContact:", AddressOf impl_didEndContact, "v@:@@")
			    
			    // and again the forwarders in the same order:
			    methods.Append new TargetClassMethodHelper("checkDidBeginContact:", AddressOf ForwardDidBeginContact, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkDidUpdateContact:", AddressOf ForwardDidUpdateContact, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkDidEndContact:", AddressOf ForwardDidEndContact, "v@:@")
			    
			    mClassPtr = BuildTargetClass("SCNView","OSXLibSCNView",methods)
			  end if
			  return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		#tag Getter
			Get
			  Declare function context Lib SceneKitLibname selector "context" (id as ptr) as ptr
			  return AppleEAGLContext.MakefromPtr (context (id))
			End Get
		#tag EndGetter
		Context As AppleEAGLContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4F7074696F6E7320666F722064726177696E67206F7665726C617920636F6E74656E7420696E2061207363656E6520746861742063616E2061696420646562756767696E672E
		#tag Getter
			Get
			  return new SCNDebugOptions(SceneKitFrameWork.getdebugOptions (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setdebugOptions mid, value.id
			End Set
		#tag EndSetter
		DebugOptions As SCNDebugOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F6620746865207363656E65766965772E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(FoundationFramework.GetDelegate(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFramework.setDelegate(mid, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 496620796F7520757365204F70656E474C20455320666F7220637573746F6D2072656E646572696E672C20796F752063616E2075736520746869732070726F706572747920746F207368617265204F70656E474C204553207265736F7572636573206265747765656E2074686520636F6E74657874207573656420666F722072656E646572696E6720746865207363656E6520616E64206F74686572204F70656E474C20455320636F6E746578747320796F75722061707020757365732E205363656E654B6974206175746F6D61746963616C6C792073686172657320697473206F776E204F70656E474C204553207265736F7572636573206265747765656E206D756C7469706C652053434E5669657720696E7374616E63657320696E20796F757220617070206173206E65656465642E0A0A
		#tag Getter
			Get
			  Declare function EAGLcontext lib SceneKitLib selector "eaglContext" (id as ptr) as ptr
			  return AppleEAGLContext.MakefromPtr (EAGLcontext (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setcontext lib SceneKitLib selector "setEaglContext:" (id as ptr, value as ptr)
			  setcontext id, value.id
			End Set
		#tag EndSetter
		EAGLContext As AppleEAGLContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B6974206170706C696573206A6974746572696E6720746F2072656475636520616C696173696E67206172746966616374732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getJitteringEnabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setJitteringEnabled mid, value
			End Set
		#tag EndSetter
		JitteringEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B697420726573746172747320746865207363656E652074696D6520616674657220616C6C20616E696D6174696F6E7320696E20746865207363656E65206861766520706C617965642E
		#tag Getter
			Get
			  return SceneKitFrameWork.getloops (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setLoops mid, value
			End Set
		#tag EndSetter
		Loops As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Objc_superObj As xojo.Core.MutableMemoryBlock
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363656E6520697320706C6179696E672E
		#tag Getter
			Get
			  return SceneKitFrameWork.getPlaying (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setPlaying mid, value
			End Set
		#tag EndSetter
		Playing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F64652066726F6D20776869636820746865207363656E65E280997320636F6E74656E7473206172652076696577656420666F722072656E646572696E672E
		#tag Getter
			Get
			  return AppleSCNNode.MakeFromPtr (SceneKitFrameWork.getpointOfView(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setPointOfView mid, nilptr(value)
			End Set
		#tag EndSetter
		PointOfView As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E696D6174696F6E206672616D6520726174652074686174207468652076696577207573657320746F2072656E64657220697473207363656E652E
		#tag Getter
			Get
			  return getpreferredFramesPerSecond (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPreferredFramesPerSecond mid, value
			End Set
		#tag EndSetter
		PreferredFramesPerSecond As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520677261706869637320746563686E6F6C6F6779205363656E654B6974207573657320746F2072656E64657220746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return SceneKitFrameWork.SCNRenderingAPIMacOS(SceneKitFrameWork.getrenderingAPI(mid))
			End Get
		#tag EndGetter
		RenderingAPI As SceneKitFrameWork.SCNRenderingAPIMacOS
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363656E6520746F20626520646973706C6179656420696E2074686520766965772E
		#tag Getter
			Get
			  return AppleSCNScene.MakeFromPtr (SceneKitFrameWork.getscene(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if scene <> nil then 
			    scene.PhysicsWorld.ContactDelegate = nil
			    scene.cleanup
			  end if
			  SceneKitFrameWork.setScene mid, nilptr(value)
			  if value <> nil then value.PhysicsWorld.ContactDelegate = self
			  
			End Set
		#tag EndSetter
		Scene As AppleSCNScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207363656E652074696D652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getsceneTime (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setSceneTime mid, value
			End Set
		#tag EndSetter
		SceneTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B697420646973706C6179732072656E646572696E6720706572666F726D616E6365207374617469737469637320696E20616E206163636573736F727920766965772E
		#tag Getter
			Get
			  return SceneKitFrameWork.getshowsStatistics (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setShowsStatistics mid, value
			End Set
		#tag EndSetter
		ShowsStatistics As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsCameraControl"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AntialiasingMode"
			Group="Behavior"
			Type="SCNAntialiasingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Multi2X"
				"2 - Multi4X"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoenablesDefaultLighting"
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
			Name="JitteringEnabled"
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
			Name="Loops"
			Group="Behavior"
			Type="Boolean"
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
			Name="Playing"
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
			Name="PreferredFramesPerSecond"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingAPI"
			Group="Behavior"
			Type="SceneKitFrameWork.SCNRenderingAPIMacOS"
			EditorType="Enum"
			#tag EnumValues
				"0 - Metal"
				"1 - OpenGLLegacy"
				"2 - OpenGLCore32"
				"3 - OpenGLCore41"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SceneTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsStatistics"
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
