#tag Module
Protected Module ArrayExtension
	#tag Method, Flags = &h0
		Function toAppleArray(extends d() as appleobject) As AppleMutableArray
		  #if Targetmacos
		    if d <> nil then
		      dim count as uinteger = d.Ubound
		      dim result as new AppleMutableArray(count + 1)
		      for q as uinteger = 0 to count
		        result.Addobject d(q)
		      next
		      return result
		    else
		      return nil
		    end if
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
