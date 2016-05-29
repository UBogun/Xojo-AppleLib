#tag Module
Protected Module MenuItemExtension
	#tag Method, Flags = &h0
		Function AppleObject(Extends m as MenuItem) As AppleNSMenuItem
		  #if targetmacos
		    return new AppleNSMenuItem(ptr(m.Handle(MenuItem.HandleType.CocoaNSMenuItem)))
		  #endif
		End Function
	#tag EndMethod


End Module
#tag EndModule
