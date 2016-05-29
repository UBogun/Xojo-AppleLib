#tag Module
Protected Module ScrollBarExtension
	#tag Method, Flags = &h0
		Function AppleObject(extends s as ScrollBar) As AppleScroller
		  return new AppleScroller(ptr(s.Handle))
		End Function
	#tag EndMethod


End Module
#tag EndModule
