#tag Class
Protected Class iOSLibTouchID
	#tag Method, Flags = &h0
		Sub Authenticate(AuthenticationReason As Text)
		  lac.EvaluatePolicy (AuthenticationReason)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Available() As Boolean
		  dim error as new AppleError
		  return lac.CanEvaluatePolicy(error)
		  #Pragma unused Error
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mlac = new AppleLAContext
		  AddHandler mLAC.EvaluationResult, addressof EvaluationForwarder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub EvaluationForwarder(Context as AppleLAContext, Success As Boolean, ErrorNr as iOSLibTouchID.TouchIDError, errorDescription as Text)
		  #pragma unused Context
		  if Success then
		    RaiseEvent Success
		  else
		    RaiseEvent Failed (ErrorNr, ErrorDescription)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnavailabilityError() As TouchIDError
		  dim error as new AppleError
		  call lac.CanEvaluatePolicy(error)
		  if error = nil then
		    return TouchIDError.NoError
		  else
		    return TouchIDError(error.Code)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnavailabilityReason() As Text
		  dim error as new AppleError
		  call lac.CanEvaluatePolicy(error)
		  if error = nil then
		    return "No Error"
		  else
		    return error.LocalizedDescription
		  end if
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Failed(ErrorNr as iOSLibTouchID.TouchIDError, Description as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Success()
	#tag EndHook


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return mLAC
			End Get
		#tag EndGetter
		Private LAC As AppleLAContext
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mLAC As AppleLAContext
	#tag EndProperty


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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
