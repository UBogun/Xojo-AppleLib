#tag Class
Protected Class AppleControlEvent
	#tag Method, Flags = &h0
		Shared Function All() As AppleControlEvent
		  return new AppleControlEvent (&hFFFFFFFF)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function AllEditingEvents() As AppleControlEvent
		  return new AppleControlEvent (&h000F0000)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function AllTouchEvents() As AppleControlEvent
		  return new AppleControlEvent (&h0FFF)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ApplicationReserved() As AppleControlEvent
		  return new AppleControlEvent (&h0F000000)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger)
		  mid = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SystemReserved() As AppleControlEvent
		  return new AppleControlEvent (&hF0000000)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TouchDown() As AppleControlEvent
		  return new AppleControlEvent (1)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 17 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 17, value)
			  
			End Set
		#tag EndSetter
		EditingChanged As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 16 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 16, value)
			  
			End Set
		#tag EndSetter
		EditingDidBegin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 18 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 18, value)
			  
			End Set
		#tag EndSetter
		EditingDidEnd As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 19 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 19, value)
			  
			End Set
		#tag EndSetter
		EditingDidEndOnExit As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		ID As UInteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mID As uinteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 8 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 8, value)
			  
			End Set
		#tag EndSetter
		TouchCancel As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (id, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 0)
			  else
			    mid = clearbit(mid, 0)
			  end if
			End Set
		#tag EndSetter
		TouchDown As Boolean
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
			    mid = setbit(mid, 1)
			  else
			    mid = clearbit(mid, 1)
			  end if
			End Set
		#tag EndSetter
		TouchDownRepeat As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 4)
			  else
			    mid = clearbit(mid, 4)
			  end if
			End Set
		#tag EndSetter
		TouchDragEnter As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 5 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 5, value)
			  
			End Set
		#tag EndSetter
		TouchDragExit As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 2)
			  else
			    mid = clearbit(mid, 2)
			  end if
			End Set
		#tag EndSetter
		TouchDragInside As Boolean
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
			    mid = setbit(mid, 3)
			  else
			    mid = clearbit(mid, 3)
			  end if
			End Set
		#tag EndSetter
		TouchDragOutside As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 6 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 6, value)
			  
			End Set
		#tag EndSetter
		TouchUpInside As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 7 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 7, value)
			  
			End Set
		#tag EndSetter
		TouchUpOutside As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 12 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 12, value)
			  
			End Set
		#tag EndSetter
		ValueChanged As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="EditingChanged"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditingDidBegin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditingDidEnd"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditingDidEndOnExit"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
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
			Group="Behavior"
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
			Name="TouchCancel"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchDown"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchDownRepeat"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchDragEnter"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchDragExit"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchDragInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchDragOutside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchUpInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchUpOutside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ValueChanged"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
