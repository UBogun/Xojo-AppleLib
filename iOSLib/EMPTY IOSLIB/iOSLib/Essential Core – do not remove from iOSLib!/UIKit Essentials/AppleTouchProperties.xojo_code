#tag Class
Protected Class AppleTouchProperties
	#tag Method, Flags = &h0
		Sub Constructor(Value as UInteger)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleDataDetectorType (15)
			End Get
		#tag EndGetter
		Shared AllTypes As AppleDataDetectorType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return HasBit (mid, 2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 2)
			  else
			    mid = ClearBit(mid, 2)
			  end if
			End Set
		#tag EndSetter
		Altitude As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return HasBit (mid, 1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 1)
			  else
			    mid = ClearBit(mid, 1)
			  end if
			End Set
		#tag EndSetter
		Azimuth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return HasBit (mid, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 0)
			  else
			    mid = ClearBit(mid, 0)
			  end if
			End Set
		#tag EndSetter
		Force As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return HasBit (mid, 3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 3)
			  else
			    mid = ClearBit(mid, 3)
			  end if
			End Set
		#tag EndSetter
		Location As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As UInteger
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Altitude"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Azimuth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Force"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Id"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
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
			Name="Location"
			Group="Behavior"
			Type="Boolean"
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
