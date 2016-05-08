#tag Module
Protected Module BitWiseExtension
	#tag Method, Flags = &h0
		Function Changebit(i as UInteger, bit as integer, value as boolean) As uinteger
		  dim result as uinteger
		  if value then
		    result = setbit(i, bit)
		  else
		    result = clearbit(i, bit)
		  end if
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearBit(i as UInteger, bit as integer) As uinteger
		  if HasBit (i, bit) then
		    dim compare as uinteger = 2 ^ bit
		    i = i - compare
		    return i
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasBit(i as UInteger, bit as integer) As Boolean
		  dim compare as uinteger = 2 ^ bit
		  return (i and compare) = compare
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetBit(i as UInteger, bit as integer) As UInteger
		  dim compare as uinteger = 2 ^ bit
		  return  i or compare
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShiftLeft(Extends I as Uinteger, bits as integer) As UInteger
		  Return I *(2^bits)
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
