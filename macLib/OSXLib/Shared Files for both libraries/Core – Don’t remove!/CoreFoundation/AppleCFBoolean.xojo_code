#tag Class
Protected Class AppleCFBoolean
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBooleanGetValue Lib CoreFoundationLibName (Allocator as Ptr) As Boolean
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static truePtr as Ptr
			  if truePtr = nil then truePtr  = SystemConstantPtr (kCFBooleanFalse, CoreFoundationPath)
			  return new AppleCFBoolean(trueptr)
			End Get
		#tag EndGetter
		Shared BooleanFalse As AppleCFBoolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static truePtr as Ptr
			  if trueptr = nil then truePtr = SystemConstantPtr (kCFBooleanTrue, CoreFoundationPath)
			  return new AppleCFBoolean(trueptr)
			End Get
		#tag EndGetter
		Shared BooleanTrue As AppleCFBoolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFBooleanGetValue (mcftypeRef)
			End Get
		#tag EndGetter
		BooleanValue As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kCFBooleanFalse, Type = Text, Dynamic = False, Default = \"kCFBooleanFalse", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFBooleanTrue, Type = Text, Dynamic = False, Default = \"kCFBooleanTrue", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="BooleanValue"
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
