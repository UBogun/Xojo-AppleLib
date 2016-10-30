#tag Class
Protected Class AppleLAContext
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 507265666C696768747320616E2061757468656E7469636174696F6E20706F6C69637920746F2073656520696620697420697320706F737369626C6520666F722061757468656E7469636174696F6E20746F20737563636565642E
		Function CanEvaluatePolicy(byref error as AppleError) As Boolean
		  dim errorptr as ptr
		  dim result as boolean= CanEvaluatePolicy (id, 1, errorptr)
		  error = AppleError.MakefromPtr(errorptr)
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function canEvaluatePolicy Lib LALibname Selector "canEvaluatePolicy:error:" (id as ptr, policy as integer, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(ClassPtr)), true)
		  CheckTimer = new xojo.core.timer
		  CheckTimer.Period = 250
		  AddHandler CheckTimer.action, AddressOf EventRaiser
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub evaluatePolicy Lib LALibname Selector "evaluatePolicy:localizedReason:reply:" (id as ptr, policy as integer, reason as cfstringref, replyblock as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4576616C7561746573207468652073706563696669656420706F6C6963792E
		Sub EvaluatePolicy(reason as text)
		  dim replyblock as new appleblock (addressof EvaluationTrigger)
		  // CallBackBlock = new AppleBlock(AddressOf eventraiser)
		  EvaluatePolicy (id, 1, reason, replyblock.Handle)
		  CheckTimer.mode = xojo.core.Timer.modes.Multiple
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub EvaluationTrigger(success as boolean, errorptr as ptr)
		  #pragma StackOverflowChecking false
		  #pragma NilObjectChecking false
		  #pragma BackgroundTasks false
		  LastErrors.Append FoundationFrameWork.retain(errorptr)
		  // FoundationFrameWork.performSelectorOnMainThread mid, mCallBackPtr, nil, false
		  #pragma unused success
		  // 
		  // // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean)
		  // /// runs until here, but performSelectr call fails
		  // 
		  // // need to retain the ptr because it is endangered to fade else
		  // // lastResult = success
		  // // lastError =if (errorptr = nil, nil, FoundationFrameWork.retain(errorptr))
		  // 
		  // dim sysLib as ptr = AppleLibSystem.dlopen("/usr/lib/libSystem.B.dylib",5)
		  // dim disp as ptr = AppleLibSystem.dlsym(sysLib,"_dispatch_main_q")
		  // // // dim disp as ptr = GCDQueue.dispatch_get_main_queue
		  // 
		  // // GrandCentralDispatch.dispatch_async (disp, CallBackBlock.Handle)
		  // 
		  // // dispatch_async_f (disp, errorptr, sel)
		  // // dim GCD as  GCDQueue= GCDQueue.MainQueue
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub EventRaiser(t as xojo.core.timer)
		  if LastErrors.Ubound> -1 then
		    dim error as  new AppleError (LastErrors(0), true)
		    dim success as Boolean = error.Code = 0
		    LastErrors.Remove(0)
		    if LastErrors.Ubound = -1 then CheckTimer.mode = xojo.core.timer.Modes.Off
		    RaiseEvent EvaluationResult(success, if (success, TouchIDError.NoError ,TouchIdError(error.code)), if (success, "Success", error.localizedDescription))
		  end if
		  
		  #Pragma Unused t
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getevaluatedPolicyDomainState Lib LALibname Selector "evaluatedPolicyDomainState" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getlocalizedCancelTitle Lib LALibname Selector "localizedCancelTitle" (id as ptr) As CFStringREf
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getlocalizedFallbackTitle Lib LALibname Selector "localizedFallbackTitle" (id as ptr) As CFStringREf
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function gettouchIDAuthenticationAllowableReuseDuration Lib LALibname Selector "touchIDAuthenticationAllowableReuseDuration" (id as ptr) As Double
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_LAContextevaluationresult(pid as ptr, sel as ptr)
		  // dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(pid, nil)
		  // if wr <> nil and wr.Value <> nil then 
		  // dim cont as AppleLAContext = AppleLAContext(wr.Value)
		  // // cont.eventraiser()
		  // end if
		  system.debuglog "would have raised"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E76616C696461746573207468652061757468656E7469636174696F6E20636F6E746578742C2073746F7070696E6720616E792070656E64696E67206576616C756174696F6E732E20417661696C61626C652073696E636520694F5320392F6D61634F532031302E31312E
		Sub Invalidate()
		  invalidate mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub invalidate Lib LALibname Selector "invalidate" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleLAContext
		  return if (aptr = nil, nil, new AppleLAContext(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setlocalizedCancelTitle Lib LALibname Selector "setLocalizedCancelTitle:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setlocalizedFallbackTitle Lib LALibname Selector "setLocalizedFallbackTitle:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub settouchIDAuthenticationAllowableReuseDuration Lib LALibname Selector "setTouchIDAuthenticationAllowableReuseDuration:" (id as ptr, value as double)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event EvaluationResult(success as boolean, errornumber as appleLAContext.TouchIDError, error as text)
	#tag EndHook


	#tag Property, Flags = &h21
		Private CheckTimer As xojo.Core.Timer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  //
			  if targetID = Nil then targetid = FoundationFrameWork.NSClassFromString ("LAContext")
			  // if Observers = nil then Observers = new Dictionary
			  // dim methods() as TargetClassMethodHelper
			  // // //Delegate methods
			  // methods.Append new TargetClassMethodHelper("LAContextEvaluation", AddressOf impl_LAContextevaluationresult, "v@:")
			  //
			  // targetID = BuildTargetClass ("LAContext", "iOSLibLAContext",methods)
			  // end if
			  Return targetID
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207374617465206F6620746865206576616C756174656420706F6C69637920646F6D61696E2E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365206D61634F532031302C31312F694F5320392E
		#tag Getter
			Get
			  if RespondsToSelector("evaluatedPolicyDomainState", classptr) then return AppleData.MakefromPtr(getevaluatedPolicyDomainState(mid))
			End Get
		#tag EndGetter
		EvaluatedPolicyDomainState As AppleData
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared LastErrors() As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564207469746C6520666F72207468652066616C6C6261636B20627574746F6E20696E20746865206469616C6F672070726573656E74656420746F20746865207573657220647572696E672061757468656E7469636174696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322F694F532031302E
		#tag Getter
			Get
			  if RespondsToSelector("localizedCancelTitle", classptr) then  return getlocalizedCancelTitle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlocalizedCancelTitle mid, value
			End Set
		#tag EndSetter
		LocalizedCancelTitle As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564207469746C6520666F72207468652066616C6C6261636B20627574746F6E20696E20746865206469616C6F672070726573656E74656420746F20746865207573657220647572696E672061757468656E7469636174696F6E2E
		#tag Getter
			Get
			  return getlocalizedFallbackTitle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlocalizedFallbackTitle mid, value
			End Set
		#tag EndSetter
		LocalizedFallbackTitle As Text
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mCallBackPtr As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E20666F7220776869636820546F7563682049442061757468656E7469636174696F6E20726575736520697320616C6C6F7761626C652E2044656661756C7420302E
		#tag Getter
			Get
			  return gettouchIDAuthenticationAllowableReuseDuration(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settouchIDAuthenticationAllowableReuseDuration mid, value
			End Set
		#tag EndSetter
		TouchIDAuthenticationAllowableReuseDuration As Double
	#tag EndComputedProperty


	#tag Constant, Name = LAErrorDomain, Type = Text, Dynamic = False, Default = \"LAErrorDomain", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = LALibName, Type = Text, Dynamic = False, Default = \"LocalAuthentication.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LALibPath, Type = Text, Dynamic = False, Default = \"com.apple.LocalAuthentication", Scope = Public
	#tag EndConstant


	#tag Enum, Name = LAAccessControlOperation, Type = Integer, Flags = &h0
		CreateItem
		  UseItem
		  CreateKey
		  UseKeySign
		  UseKeyDecrypt
		UseKeyKeyExchange
	#tag EndEnum

	#tag Enum, Name = LAPolicy, Type = Integer, Flags = &h0
		DeviceOwnerAuthenticationWithBiometrics = 1
		LAPolicyDeviceOwnerAuthentication = 0
	#tag EndEnum

	#tag Enum, Name = TouchIDError, Type = Integer, Flags = &h0
		AuthenticationFailed = -1
		  UserCancel = -2
		  UserFallback = -3
		  SystemCancel = -4
		  PasscodeNotSet = -5
		  TouchIDNotAvailable = -6
		  TouchIDNotEnrolled = -7
		  NoError = 0
		SimulatorNotSupported = -1000
	#tag EndEnum


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
			Name="LocalizedCancelTitle"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedFallbackTitle"
			Group="Behavior"
			Type="Text"
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
		#tag ViewProperty
			Name="TouchIDAuthenticationAllowableReuseDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
