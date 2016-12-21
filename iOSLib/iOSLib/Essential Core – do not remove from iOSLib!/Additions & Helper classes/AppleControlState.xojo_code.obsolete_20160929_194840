#tag Class
Protected Class AppleControlState
	#tag Method, Flags = &h0
		Shared Function Application() As AppleControlState
		  return new AppleControlState (&h00FF0000)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger)
		  mid = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Disabled() As AppleControlState
		  return new AppleControlState (2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Focused() As AppleControlState
		  return new AppleControlState (8)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Highlighted() As AppleControlState
		  return new AppleControlState (1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Normal() As AppleControlState
		  return new AppleControlState (0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Reserved() As AppleControlState
		  return new AppleControlState (&hFF000000)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Selected() As AppleControlState
		  return new AppleControlState (4)
		End Function
	#tag EndMethod


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
		Disabled As Boolean
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
		Focused As Boolean
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
		Highlighted As Boolean
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
		Selected As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Disabled"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
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
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
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
