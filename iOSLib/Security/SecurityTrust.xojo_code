#tag Class
Protected Class SecurityTrust
Inherits AppleCFObject
	#tag Method, Flags = &h0
		Function AnchorCertificates(Certificates as AppleArray) As Int32
		  dim certptr as ptr
		  dim result as int32 = SecTrustCopyCustomAnchorCertificates (mCFTyperef, certptr)
		  Certificates = AppleArray.MakeFromPtr (certptr)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AsyncBlock(Sectrust as ptr, Result as TrustResultType)
		  if me <> nil then RaiseEvent Evaluated (new SecurityTrust (Sectrust), result)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Certificate(index as integer) As SecurityCertificate
		  return new SecurityCertificate (SecTrustGetCertificateAtIndex(mCFTypeRef, index))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(certificates as applearray, policies as applearray, byref result as int32)
		  dim trustref as ptr 
		  
		  // Calling the overridden superclass constructor.
		  result = SecTrustCreateWithCertificates (certificates.id, policies.id, trustref)
		  if result = 0 then super.Constructor (trustref, true)
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(certificate as securityCertificate, policy as securitypolicy, byref result as int32)
		  dim trustref as ptr 
		  
		  // Calling the overridden superclass constructor.
		  result = SecTrustCreateWithCertificates (certificate.mCFTypeRef, policy.mCFTypeRef, trustref)
		  if result = 0 then super.Constructor (trustref, true)
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Evaluate(byref ResultType as TrustResultType) As Int32
		  dim result as int32 = SecTrustEvaluate (mCFTyperef, ResultType)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EvaluateAsynchronously(byref ResultType as TrustResultType, queue as GCDQueue = nil, RecallBlock as AppleBlock = Nil) As Int32
		  if queue = nil then queue = new GCDQueue (GCDQueue.dispatch_queue_priority_t.Default)
		  if RecallBlock = nil then RecallBlock = new appleBlock (addressof AsyncBlock)
		  dim result as int32 = SecTrustEvaluateAsync (mCFTyperef, queue.mCFTypeRef, RecallBlock.Handle)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Policies(Policies as AppleArray) As Int32
		  dim polptr as ptr
		  dim result as int32 = SecTrustCopyPolicies (mCFTyperef, polptr)
		  policies = AppleArray.MakeFromPtr (polptr)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReenableTrustInCertificates(anchorCertificatesOnly as boolean) As Int32
		  return SecTrustSetAnchorCertificatesOnly (mCFTyperef, anchorCertificatesOnly)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustCopyCustomAnchorCertificates Lib SecurityLibName (trust as ptr, certificates as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustCopyExceptions Lib SecurityLibName (trust as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustCopyPolicies Lib SecurityLibName (trust as ptr, policies as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustCopyProperties Lib SecurityLibName (trust as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustCopyPublicKey Lib SecurityLibName (trust as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustCreateWithCertificates Lib SecurityLibName (certificates as ptr, policies as ptr, byref Trustref as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustEvaluate Lib SecurityLibName (trust as ptr, byref ResultType as TrustResultType) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustEvaluateAsync Lib SecurityLibName (trust as ptr, queue as ptr, Resultblock as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustGetCertificateAtIndex Lib SecurityLibName (trust as ptr, index as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustGetCertificateCount Lib SecurityLibName (trust as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustGetTrustResult Lib SecurityLibName (trust as ptr, byref Result as TrustResultType) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustGetVerifyTime Lib SecurityLibName (trust as ptr) As double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustSetAnchorCertificates Lib SecurityLibName (trust as ptr, certificates as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustSetAnchorCertificatesOnly Lib SecurityLibName (trust as ptr, anchorCertificatesOnly as Boolean) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustSetExceptions Lib SecurityLibName (trust as ptr, exceptions as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustSetPolicies Lib SecurityLibName (trust as ptr, policies as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecTrustSetVerifyDate Lib SecurityLibName (trust as ptr, VerifyDate as ptr) As int32
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function SetAnchorCertificates(Certificates as AppleArray) As Int32
		  return SecTrustSetAnchorCertificates (mCFTyperef, Certificates.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetExceptions(Exceptions as SecurityTrustExceptions) As Int32
		  return SecTrustSetExceptions (mCFTyperef, Exceptions.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetPolicies(Certificates as AppleGeneralObject) As Int32
		  return SecTrustSetAnchorCertificates (mCFTyperef, Policies.GeneralID)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetVerifyDate(VerifyDate as AppleArray) As Int32
		  return SecTrustSetVerifyDate (mCFTyperef, VerifyDate.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Trustresult(byref ResultType as TrustResultType) As Int32
		  dim result as int32 = SecTrustGetTrustResult (mCFTyperef, ResultType)
		  return result
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Evaluated(Trust as SecurityTrust, Result as TrustResultType)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim resultArr as new AppleArray
			  dim result as int32 = AnchorCertificates(resultArr)
			  if result = 0 then Return resultarr
			End Get
		#tag EndGetter
		AnchorCertificates As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return SecTrustGetCertificateCount (mCFTypeRef)
			End Get
		#tag EndGetter
		CertificateCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim resultType as TrustResultType
			  dim result as int32 = Evaluate (resultType)
			  if result = 0 then return resultType
			End Get
		#tag EndGetter
		EvaluationResult As TrustResultType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim resultType as TrustResultType
			  dim result as int32 = Trustresult (resultType)
			  if result = 0 then return resultType
			End Get
		#tag EndGetter
		LastEvaluationResult As TrustResultType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim resultArr as new AppleArray
			  dim result as int32 = Policies(resultArr)
			  if result = 0 then Return resultarr
			End Get
		#tag EndGetter
		Policies As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim st as new SecurityKey (SecTrustCopyPublicKey(mCFTypeRef),true)
			  st.mHasOwnership = true
			  return st
			End Get
		#tag EndGetter
		PublicKey As SecurityKey
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim st as new SecurityTrustExceptions (SecTrustCopyExceptions(mCFTypeRef))
			  return st
			End Get
		#tag EndGetter
		SecurityTrustExceptions As SecurityTrustExceptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (SecTrustCopyProperties(mCFTypeRef))
			  
			End Get
		#tag EndGetter
		SecurityTrustProperties As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return SecTrustGetVerifyTime (mCFTypeRef)
			End Get
		#tag EndGetter
		VerifyTime As Double
	#tag EndComputedProperty


	#tag Enum, Name = TrustResultType, Type = UInt32, Flags = &h0
		Invalid
		  Proceed
		  Confirm
		  Deny
		  Unspecified
		  RecoverableTrustFailure
		  FatalTrustFailure
		OtherError
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="CertificateCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EvaluationResult"
			Group="Behavior"
			Type="TrustResultType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Invalid"
				"1 - Proceed"
				"2 - Confirm"
				"3 - Deny"
				"4 - Unspecified"
				"5 - RecoverableTrustFailure"
				"6 - FatalTrustFailure"
				"7 - OtherError"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
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
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastEvaluationResult"
			Group="Behavior"
			Type="TrustResultType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Invalid"
				"1 - Proceed"
				"2 - Confirm"
				"3 - Deny"
				"4 - Unspecified"
				"5 - RecoverableTrustFailure"
				"6 - FatalTrustFailure"
				"7 - OtherError"
			#tag EndEnumValues
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
			Type="Boolean"
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
			Type="Integer"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerifyTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
