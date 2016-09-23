#tag Class
 Attributes ( incomplete ) Protected Class AppleResponder
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function becomeFirstResponder Lib UIKitLibname Selector "becomeFirstResponder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657175657374732074686520726563656976696E6720726573706F6E64657220746F20656E61626C65206F722064697361626C65207468652073706563696669656420636F6D6D616E6420696E20746865207573657220696E746572666163652E
		Attributes( hidden )  Function CanPerformAction(SEL as ptr, Sender as AppleGeneralObject) As Boolean
		  Declare function canPerformAction lib UIKitLibname selector "canPerformAction:withSender:" (id as ptr, SEL as ptr, sender as ptr) as Boolean
		  return canPerformAction (id, SEL, Sender.GeneralID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C65617273207465787420696E707574206D6F646520696E666F726D6174696F6E2066726F6D2074686520617070E280997320757365722064656661756C74732E
		Shared Sub ClearTextInputContextIdentifier(Identifier as CFStringRef)
		  Declare sub clearTextInputContextIdentifier lib UIKitLibname selector "clearTextInputContextIdentifier:" (id as ptr, identifier as CFStringRef)
		  clearTextInputContextIdentifier classptr, Identifier
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  // No direct constructor, UIResponder is an interfaace base class
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  me.removeidentity ()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Function getcanBecomeFirstResponder Lib UIKitLibname Selector "canBecomeFirstResponder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Function getcanResignFirstResponder Lib UIKitLibname Selector "canResignFirstResponder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function getDelegate(id as ptr) As Ptr
		  Declare Function getDelegate lib UIKitLibname selector "delegate" (id as ptr) as Ptr
		  return getDelegate (id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Function getExclusiveTouch Lib UIKitLibname Selector "isExclusiveTouch" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getinputAccessoryView Lib UIKitLibname Selector "inputAccessoryView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Function getinputAssistantItem Lib UIKitLibname Selector "inputAssistantItem" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getinputView Lib UIKitLibname Selector "inputView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getisFirstResponder Lib UIKitLibname Selector "isFirstResponder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getMultipleTouchEnabled Lib UIKitLibname Selector "isMultipleTouchEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Function getNextResponder Lib UIKitLibname Selector "nextResponder" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Function getUserActivity Lib UIKitLibname Selector "userActivity" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Function getUserInteractionEnabled Lib UIKitLibname Selector "isUserInteractionEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Function Identity(id as ptr) As AppleResponder
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return AppleResponder(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_animationDidStart(pid as ptr, sel as ptr, animation as ptr) As ptr
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then 
		    ego.informOnanimationDidStart (AppleCAAnimation.MakeFromPtr(animation))
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_animationDidStop(pid as ptr, sel as ptr, animation as ptr, finished as Boolean) As ptr
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then 
		    ego.informOnanimationDidStop (AppleCAAnimation.MakeFromPtr(animation), finished)
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_MotionBeganWithEvent(pid as ptr, sel as ptr, type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonMotionBeganwithEvent (type, AppleNSEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_MotionCancelledWithEvent(pid as ptr, sel as ptr, type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonMotionCancelledwithEvent (type, AppleNSEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_MotionEndedWithEvent(pid as ptr, sel as ptr, type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonMotionEndedwithEvent (type, AppleNSEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_PressesBeganWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonPressesBeganwithEvent ( AppleSet.makefromptr(touchset), ApplePressesEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_pressesCancelledWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonPressesCancelledwithEvent ( AppleSet.makefromptr(touchset), ApplePressesEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_pressesChangedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonPressesChangedwithEvent ( AppleSet.makefromptr(touchset), ApplePressesEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_pressesEndedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonPressesEndedwithEvent ( AppleSet.makefromptr(touchset), ApplePressesEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_remoteControlReceivedWithEvent(pid as ptr, sel as ptr, eventptr as ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonremoteControlReceivedWithEvent  ( AppleNSEvent.makefromptr(eventptr))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_TouchesBeganWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonTouchesBeganwithEvent ( AppleSet.makefromptr(touchset), AppleNSEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_TouchesCancelledWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonTouchesCancelledwithEvent  ( AppleSet.makefromptr(touchset), AppleNSEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_TouchesEndedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonTouchesEndedwithEvent  ( AppleSet.makefromptr(touchset), AppleNSEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_touchesEstimatedPropertiesUpdated(pid as ptr, sel as ptr, Touchset as ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informontouchesEstimatedPropertiesUpdated  ( AppleSet.makefromptr(touchset))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_TouchesMovedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as AppleResponder = InformInstance(pid)
		  if ego <> nil then ego.informonTouchesMovedwithEvent  ( AppleSet.makefromptr(touchset), AppleNSEvent.makefromptr (anevent))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function InformInstance(id as ptr) As AppleResponder
		  dim ident as AppleResponder = Identity(id)
		  return if (ident = nil, AppleResponder.MakeFromPtr (id), ident)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnanimationDidStart(animation as AppleCAAnimation)
		  RaiseEvent animationDidStart (animation)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnanimationDidStop(animation as AppleCAAnimation, finished as Boolean)
		  RaiseEvent animationDidStop (animation, finished)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnMotionBeganwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
		  RaiseEvent MotionBeganwithEvent (type, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnMotionCancelledwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
		  RaiseEvent MotionCancelledwithEvent (type, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnMotionEndedwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
		  RaiseEvent MotionEndedwithEvent (type, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesBeganwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesBeganwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesCancelledwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesCancelledwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesChangedwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesChangedwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesEndedwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesEndedwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonremoteControlReceivedWithEvent(anEvent as AppleNSEvent)
		  if ParentControl <> nil then
		    ParentControl.informonRemoteControlReceived (anevent)
		  else
		    RaiseEvent RemoteControlReceived (anevent)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesBeganwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  RaiseEvent TouchesBeganwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesCancelledwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  RaiseEvent TouchesCancelledwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesEndedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  RaiseEvent TouchesEndedwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informontouchesEstimatedPropertiesUpdated(Touchset as AppleSet)
		  RaiseEvent EstimatedPropertiesUpdated (touchset)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesMovedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  RaiseEvent TouchesMovedwithEvent (touchset, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleResponder
		  return if (aptr = nil, nil, new AppleResponder(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParentControl() As ioslibresponder
		  if xojocontrols <> nil and XojoControls.HasKey (id)  then
		    dim wr as weakref = XojoControls.Value (id)
		    if wr <> NIL then
		      return iOSlibResponder(wr.Value)
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub PerformLayoutIfNeeded()
		  Declare sub layoutIfNeeded lib UIKitLibname selector "layoutIfNeeded" (id as ptr)
		  layoutIfNeeded (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterControl(ParentControl as iosusercontrol)
		  if XojoControls = nil then XojoControls = new Dictionary
		  XojoControls.Value (id) = weakref.create(parentcontrol)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub RegisterIdentity(Identity As object)
		  if XojoIdentity = nil then XojoIdentity = new xojo.Core.Dictionary
		  XojoIdentity.Value (id) = xojo.core.WeakRef.Create(Identity)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 557064617465732074686520637573746F6D20696E70757420616E64206163636573736F7279207669657773207768656E20746865206F626A6563742069732074686520666972737420726573706F6E6465722E
		Function ReloadInputViews() As Boolean
		  Declare sub reloadInputViews lib UIKitLibname selector "reloadInputViews" (id as ptr)
		  reloadInputViews id
		End Function
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

	#tag Method, Flags = &h0
		Function ResignFirstResponder() As Boolean
		  Declare function resignFirstResponder lib UIKitLibname selector "" (id as ptr) as Boolean
		  return resignFirstResponder (id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function resignFirstResponder Lib UIKitLibname Selector "resignFirstResponder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526573746F72657320746865207374617465206E656564656420746F20636F6E74696E75652074686520676976656E20757365722061637469766974792E
		Sub RestoreUserActivityState(UserActivity as AppleUserActivity)
		  restoreUserActivityState id, UserActivity.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub restoreUserActivityState Lib UIKitLibname Selector "restoreUserActivityState:" (id as ptr, activity as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Sub setDelegate(anid as ptr, value as Ptr)
		  Declare Sub setDelegate lib UIKitLibname selector "setDelegate:" (id as ptr, value as Ptr)
		  setDelegate (anid, value)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Sub setExclusiveTouch Lib UIKitLibname Selector "setExclusiveTouch:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setInputAccessoryView Lib UIKitLibname Selector "setInputAccessoryView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setInputView Lib UIKitLibname Selector "setInputView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Sub setMultipleTouchEnabled Lib UIKitLibname Selector "setMultipleTouchEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Sub setUserActivity Lib UIKitLibname Selector "setUserActivity:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub setUserInteractionEnabled(value as boolean)
		  Declare sub setUserInteractionEnabled lib UIKitLibname selector "setUserInteractionEnabled:" (id as ptr, value as Boolean)
		  setUserInteractionEnabled id, value
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206E65787420726573706F6E64657220696E2074686520636861696E
		Attributes( hidden ) Protected Declare Sub setUserInteractionEnabled Lib UIKitLibname Selector "setUserInteractionEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746172676574206F626A656374207468617420726573706F6E647320746F20616E20616374696F6E2E
		Attributes( hidden )  Function TargetForAction(SEL as ptr, Sender as AppleGeneralObject) As AppleObject
		  Declare function targetForAction lib UIKitLibname selector "targetForAction:withSender:" (id as ptr, SEL as ptr, sender as ptr) as Ptr
		  return  AppleObject.MakeFromPtr (targetForAction(id, Sel, sender.GeneralID))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573746F72657320746865207374617465206E656564656420746F20636F6E74696E75652074686520676976656E20757365722061637469766974792E
		Sub UpdateUserActivityState(UserActivity as AppleUserActivity)
		  UpdateUserActivityState id, UserActivity.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 5570646174657320746865207374617465206F662074686520676976656E20757365722061637469766974792E
		Attributes( hidden ) Protected Declare Sub updateUserActivityState Lib UIKitLibname Selector "updateUserActivityState:" (id as ptr, activity as ptr)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061204341416E696D6174696F6E20666F7220776869636820796F75207365742074686520524573706F6E64657220746F206974732064656C65676174654F626A656374207374617274732E
		Event AnimationDidStart(Animation As AppleCAAnimation)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061204341416E696D6174696F6E20666F7220776869636820796F75207365742074686520526573706F6E64657220746F206974732064656C65676174654F626A6563742073746F70732C2077697468206164646974696F6E616C20626F6F6C65616E2076616C756520666F7220636F6D706C6574696F6E206F662074686520616E696D6174696F6E2E
		Event AnimationDidStop(Animation As AppleCAAnimation, Finished as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520657374696D617465642070726F70657274696573206F66206120746F756368206576656E74206368616E67652E
		Event EstimatedPropertiesUpdated(Touchset as AppleSet)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Event MotionBeganwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Event MotionCancelledwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Event MotionEndedwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120706879736963616C20627574746F6E206973207072657373656420696E20746865206173736F63696174656420766965772E
		Event PressesBeganwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20612073797374656D206576656E742063616E63656C732061207072657373206576656E742E
		Event PressesCancelledwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520666F726365206F662061207072657373206576656E74206368616E676573
		Event PressesChangedwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265207768656E206120627574746F6E207761732072656C65617365642E
		Event PressesEndedwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E2068617320656E646564
		Event RemoteControlReceived(anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Event TouchesBeganwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20612073797374656D2D6576656E7420286C696B65206C6F77206D656D6F7279292063616E63656C73206120746F756368206576656E742E
		Event TouchesCancelledwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Event TouchesEndedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520706F736974696F6E206F662074686520746F756368206368616E676573202873696E636520694F532039
		Event TouchesMovedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		inputviewcontroller class missing
		UndoManager missing
		UserActivity classes must be filled with functions.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 547275652069662074686520636F6E74726F6C2063616E20726563656976652074686520666F6375732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanBecomeFirstResponder (mid)
			End Get
		#tag EndGetter
		CanBecomeFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 547275652069662074686520636F6E74726F6C2063616E206C6F73652074686520666F6375732E20526561642D6F6E6C79
		#tag Getter
			Get
			  return getcanBecomeFirstResponder (id)
			End Get
		#tag EndGetter
		CanResignFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    
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
			    
			    targetID = BuildTargetClass ("UIResponder", "iOSLibResponder",methods)
			  end if
			  Return targetID
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Attributes( hidden ) hasInited As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520637573746F6D20696E707574206163636573736F7279207669657720746F20646973706C6179207768656E20746865207265636569766572206265636F6D65732074686520666972737420726573706F6E6465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleView.MakeFromPtr (getinputAccessoryView(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setInputAccessoryView mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		InputAccessoryView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420617373697374616E7420746F20757365207768656E20636F6E6669677572696E6720746865206B6579626F617264E28099732073686F727463757473206261722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if me.RespondsToSelector ( "inputAssistantItem", classptr) then return AppleTextinputAssistantItem.MakeFromPtr (getinputAssistantItem(id))
			End Get
		#tag EndGetter
		InputAssistantItem As AppleTextInputAssistantitem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520637573746F6D20696E707574207669657720746F20646973706C6179207768656E20746865207265636569766572206265636F6D65732074686520666972737420726573706F6E6465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleView.MakeFromPtr (getinputView(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setInputView mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		InputView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652072656365697665722069732074686520666972737420726573706F6E6465722E20596F752073686F756C6420636865636B207468652070726F706572747920616674657220747279696E6720746F206368616E6765206974206F7220636865636B2043616E4265636F6D654669727374526573706F6E64657220616E642043616E52657369676E4669727374526573706F6E646572206265666F7265206368616E6765732E
		#tag Getter
			Get
			  return getisFirstResponder(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    call becomefirstresponder(mid)
			  else
			    call resignfirstresponder(mid)
			  end if
			End Set
		#tag EndSetter
		IsFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B657920636F6D6D616E64732074686174207472696767657220616374696F6E73206F6E207468697320726573706F6E6465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function keyCommands lib UIKitLibname selector "keyCommands" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (keyCommands(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputAccessoryView lib UIKitLibname selector "setInputAccessoryView:" (id as ptr, value as ptr)
			  setInputAccessoryView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		KeyCommands As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E65787420726573706F6E64657220696E2074686520726573706F6E64657220636861696E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleResponder.MakeFromPtr (getnextResponder(mid))
			End Get
		#tag EndGetter
		NextResponder As AppleResponder
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206964656E746966696572207369676E696679696E6720746861742074686520726573706F6E6465722073686F756C6420707265736572766520697473207465787420696E707574206D6F646520696E666F726D6174696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function textInputContextIdentifier lib UIKitLibname selector "textInputContextIdentifier" (id as ptr) as CFStringRef
			  return textInputContextIdentifier (id)
			End Get
		#tag EndGetter
		TextInputContextIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420696E707574206D6F646520666F72207468697320726573706F6E646572206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function textInputMode lib UIKitLibname selector "textInputMode" (id as ptr) as ptr
			  return AppleTextInputMode.MakeFromPtr (textInputMode(id))
			End Get
		#tag EndGetter
		TextInputMode As AppleTextInputMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420656E63617073756C6174696E672061207573657220616374697669747920737570706F72746564206279207468697320726573706F6E6465722E
		#tag Getter
			Get
			  return AppleUserActivity.MakefromPtr (getuserActivity(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setuseractivity id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		UserActivity As AppleUserActivity
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared XojoIdentity As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
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
			Name="IsFirstResponder"
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
			Name="TextInputContextIdentifier"
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
	#tag EndViewBehavior
End Class
#tag EndClass
