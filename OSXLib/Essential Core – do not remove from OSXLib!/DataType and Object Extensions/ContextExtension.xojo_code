#tag Module
Protected Module ContextExtension
	#tag Method, Flags = &h0, Description = 546865204E534772617068636973436F6E7465787420726570726573656E74696E672074686520586F6A6F204772617068636973436F6E74657874
		Function AppleObject(extends g as Graphics) As AppleGraphicsContext
		  #if TargetMacOS
		    return  new AppleGraphicsContext (g.Handle(g.HandleTypeCGContextRef), true)
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
