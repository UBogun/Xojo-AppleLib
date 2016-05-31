#tag Module
Protected Module OSXLibModule
	#tag Method, Flags = &h0
		Sub MakeException(ErrorText as CFStringRef)
		  dim err as new xojo.Core.ErrorException
		  err.Reason = ErrorText
		  raise Err
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		LibDebug As Boolean = true
	#tag EndProperty


	#tag Constant, Name = kOSXOnlyClassWarning, Type = Text, Dynamic = True, Default = \"OS X only class!", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Diese Klasse ist nur unter OS X verf\xC3\xBCgbar!"
	#tag EndConstant


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
			Name="LibDebug"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
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
End Module
#tag EndModule
