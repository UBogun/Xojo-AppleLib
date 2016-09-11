#tag Module
Protected Module ContextExtension
	#tag Method, Flags = &h0, Description = 546865204E534772617068636973436F6E7465787420726570726573656E74696E672074686520586F6A6F204772617068636973436F6E74657874
		Function AppleObject(extends g as Graphics) As AppleGraphicsContext
		  #if TargetMacOS
		    return  new AppleGraphicsContext (g.Handle(g.HandleTypeCGContextRef), true)
		  #endif
		End Function
	#tag EndMethod


End Module
#tag EndModule
