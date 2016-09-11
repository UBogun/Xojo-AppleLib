#tag Class
Protected Class AppleBlock
Implements AppleBlockInterface
	#tag Method, Flags = &h0
		Sub Constructor(BlockAddress as Object)
		  call CreateBlock (BlockAddress)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateBlock(BlockAddress as Object) As AppleBlock
		  // Part of the AppleBlockInterface interface.
		  #If TargetMacOS then
		    mid = ObjCBlocks.CreateBlock (BlockAddress)
		    return self
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub destructor()
		  ReleaseBlock
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReleaseBlock()
		  // Part of the AppleBlockInterface interface.
		  #If TargetMacOS then
		    
		    ObjCBlocks.ReleaseBlock(mid)
		  #endif
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As Ptr
	#tag EndProperty


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
