#tag Module
Protected Module GrandCentralDispatch
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dlopen Lib "/usr/lib/libSystem.dylib" (path As CString, mode As Int32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dlsym Lib "/usr/lib/libSystem.dylib" (handle As Ptr, name As CString) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function SysLib() As Ptr
		  static myPtr as ptr =  dlopen("/usr/lib/libSystem.B.dylib",5)
		  Return myPtr
		End Function
	#tag EndMethod


	#tag Constant, Name = GCDPath, Type = Text, Dynamic = False, Default = \"/usr/lib/system/dispatch.dylib", Scope = Public
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
