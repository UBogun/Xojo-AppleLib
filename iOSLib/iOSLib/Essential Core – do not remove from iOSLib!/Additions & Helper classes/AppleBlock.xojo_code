#tag Class
Protected Class AppleBlock
Inherits iosBlock
Implements AppleBlockInterface
	#tag Method, Flags = &h0
		Function CreateBlock(BlockAddress as Object) As AppleBlock
		  // Part of the AppleBlockInterface interface.
		  
		  return new appleblock (BlockAddress)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReleaseBlock()
		  // Part of the AppleBlockInterface interface.
		  
		  
		End Sub
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
End Class
#tag EndClass
