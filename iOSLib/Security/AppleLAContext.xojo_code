#tag Class
Protected Class AppleLAContext
Inherits AppleObject
	#tag Method, Flags = &h0
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
		  Super.Constructor(init(alloc(ClassPtr)))
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub evaluatePolicy Lib LALibname Selector "evaluatePolicy:localizedReason:reply:" (id as ptr, policy as integer, reason as cfstringref, replyblock as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub EvaluatePolicy(reason as text, replyblock as appleblock = nil)
		  if replyblock = nil then replyblock = new appleblock (addressof EvaluationTrigger)
		  EvaluatePolicy (id, 1, reason, replyblock.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub EvaluationTrigger(success as boolean, errorptr as ptr)
		  #pragma StackOverflowChecking false
		  #pragma NilObjectChecking false
		  // system.DebugLog "Evaluation started"
		  // dim sel as ptr = FoundationFrameWork.NSSelectorFromString("LAContextevaluationresult:")
		  // system.DebugLog integer(sel).ToText
		  
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean)
		  /// runs until here, but performSelectr call fails
		  
		  Declare Function retain lib FoundationLibName selector "retain" (id as ptr) as ptr
		  // need to retain the ptr because it is endangered to fade else
		  lastResult = success
		  lastError = retain(errorptr)
		  
		  dim block as new AppleBlock(AddressOf EventRaiser)
		  
		  Declare Function dlopen Lib appleLibSystem.LibSystemWithoutB ( path As CString, mode As Int32 ) As Ptr
		  Declare Function dlsym Lib appleLibSystem.LibSystemWithoutB ( handle As Ptr, name As CString ) As ptr
		  dim sysLib as ptr = dlopen("/usr/lib/libSystem.B.dylib",5)
		  Declare sub dispatch_async lib appleLibSystem.LibSystemWithoutB (queue as ptr, block as ptr)
		  
		  dim disp as ptr = dlsym(sysLib,"_dispatch_main_q")
		  dispatch_async (disp, block.Handle)
		  
		  // dispatch_async_f (disp, errorptr, sel)
		  // dim GCD as  GCDQueue= GCDQueue.MainQueue
		  // performSelectorOnMainThread id, sel, errorptr, false
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub EventRaiser()
		  dim error as AppleError = AppleError.MakefromPtr(lastError)
		  // System.DebugLog LAErrorPasscodeNotSet.totext
		  dim success as Boolean = lastResult
		  RaiseEvent EvaluationResult(success, if (success, ioslibtouchid.TouchIDError.NoError, ioslibtouchid.TouchIdError(error.code)), if (success, "Success", error.localizedDescription))
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event EvaluationResult(succcess as boolean, errornumber as ioslibtouchID.TouchIDError, error as text)
	#tag EndHook


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr = FoundationFrameWork.NSClassFromString ("LAContext")
			  // if targetID = Nil then
			  // // if Observers = nil then Observers = new Dictionary
			  // dim methods() as TargetClassMethodHelper
			  // // //Delegate methods
			  // methods.Append new TargetClassMethodHelper("LAContextevaluationresult:", AddressOf impl_LAContextevaluationresult, "v:@@")
			  //
			  // targetID = BuildTargetClass ("LAContext", "iOSLibLAContext",methods)
			  // end if
			  Return targetID
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private lastError As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastResult As Boolean
	#tag EndProperty


	#tag Constant, Name = LAErrorDomain, Type = Text, Dynamic = False, Default = \"LAErrorDomain", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = LALibName, Type = Text, Dynamic = False, Default = \"LocalAuthentication.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LALibPath, Type = Text, Dynamic = False, Default = \"com.apple.LocalAuthentication", Scope = Public
	#tag EndConstant


	#tag Enum, Name = LAPolicy, Type = Integer, Flags = &h0
		DeviceOwnerAuthenticationWithBiometrics = 1
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
	#tag EndViewBehavior
End Class
#tag EndClass
