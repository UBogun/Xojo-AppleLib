#tag Class
Protected Class AppleStringDrawingOptions
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 5)
			  else
			    mid = clearbit(mid, 5)
			  end if
			End Set
		#tag EndSetter
		TruncatesLastVisibleLine As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 3)
			  else
			    mid = clearbit(mid, 3)
			  end if
			End Set
		#tag EndSetter
		UsesDeviceMetrics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 1)
			  else
			    mid = clearbit(mid, 1)
			  end if
			End Set
		#tag EndSetter
		UsesFontLeading As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 0)
			  else
			    mid = clearbit(mid, 0)
			  end if
			End Set
		#tag EndSetter
		UsesLineFragmentOrigin As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Id"
			Group="Behavior"
			Type="Integer"
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
		#tag ViewProperty
			Name="TruncatesLastVisibleLine"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesDeviceMetrics"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesFontLeading"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesLineFragmentOrigin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
