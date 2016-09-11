#tag Module
Protected Module WindowExtension
	#tag Method, Flags = &h0, Description = 546865204E534772617068696373436F6E74657874206F6620612057696E646F7720646F72206469726563742064726177696E67206F6E2069742E
		Function AppleContext(extends w as window) As AppleGraphicsContext
		  #if targetmacos
		    return AppleGraphicsContext.ContextWithWindow (w.AppleObject)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865204E5357696E646F7720726570726573656E74696E672074686520586F6A6F2077696E646F772E
		Function AppleObject(extends w as window) As Applewindow
		  #If TargetMacOS then
		    return new AppleWindow(w)
		  #endif
		End Function
	#tag EndMethod


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
