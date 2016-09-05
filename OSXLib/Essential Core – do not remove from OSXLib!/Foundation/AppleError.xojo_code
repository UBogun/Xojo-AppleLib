#tag Class
Protected Class AppleError
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Constructor (kNSCocoaErrorDomain, 0, nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(domain as cfstringRef, Code as Integer, userdict as AppleDictionary = nil)
		  super.Constructor(InitWithDomain(alloc(Classptr), domain, code, if (userdict = nil, nil, userdict.id)))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function InitWithDomain Lib FoundationLibName Selector "initWithDomain:code:userInfo:" (id as ptr, domain as CFStringRef, code as Integer, userDict as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleError
		  return if (aptr = nil, nil, new AppleError(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSError")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function code lib FoundationLibName  selector "code" (id as ptr) as Integer
			  return code (id)
			End Get
		#tag EndGetter
		Code As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function domain lib FoundationLibName  selector "domain" (id as ptr) as CFStringRef
			  return domain (id)
			End Get
		#tag EndGetter
		Domain As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function helpAnchor lib FoundationLibName  selector "helpAnchor" (id as ptr) as CFStringRef
			  return helpAnchor (id)
			End Get
		#tag EndGetter
		HelpAnchor As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.getlocalizedDescription (id)
			End Get
		#tag EndGetter
		LocalizedDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function localizedFailureReason lib FoundationLibName  selector "localizedFailureReason" (id as ptr) as CFStringRef
			  return localizedFailureReason (id)
			End Get
		#tag EndGetter
		LocalizedFailureReason As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function localizedRecoveryOptions lib FoundationLibName  selector "localizedRecoveryOptions" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (localizedRecoveryOptions (id))
			End Get
		#tag EndGetter
		LocalizedRecoveryOptions As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function localizedRecoverySuggestion lib FoundationLibName  selector "localizedRecoverySuggestion" (id as ptr) as CFStringRef
			  return localizedRecoverySuggestion (id)
			End Get
		#tag EndGetter
		LocalizedRecoverySuggestion As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function recoveryAttempter lib FoundationLibName  selector "recoveryAttempter" (id as ptr) as ptr
			  return AppleObject.MakeFromPtr (recoveryAttempter (id))
			End Get
		#tag EndGetter
		RecoveryAttempter As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr (foundationframework.getuserinfo (id))
			End Get
		#tag EndGetter
		UserInfo As AppleDictionary
	#tag EndComputedProperty


	#tag Constant, Name = kNSCocoaErrorDomain, Type = Text, Dynamic = False, Default = \"NSCocoaErrorDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNSMachErrorDomain, Type = Text, Dynamic = False, Default = \"NSMachErrorDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNSOSStatusErrorDomain, Type = Text, Dynamic = False, Default = \"NSOSStatusErrorDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNSPOSIXErrorDomain, Type = Text, Dynamic = False, Default = \"NSPOSIXErrorDomain", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Code"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Domain"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpAnchor"
			Group="Behavior"
			Type="Text"
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
			Name="LocalizedDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedFailureReason"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedRecoverySuggestion"
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
	#tag EndViewBehavior
End Class
#tag EndClass
