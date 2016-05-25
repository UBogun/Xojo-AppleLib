#tag Class
Protected Class AppleAlignmentOptions
	#tag Method, Flags = &h0
		Sub Constructor(value as uint64 = 0)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206865696768742073686F756C6420626520746F20746865206E65617265737420696E7761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 5)
			  else
			    mid = clearbit(mid, 5)
			  end if
			End Set
		#tag EndSetter
		AlignHeightInward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206865696768742073686F756C6420626520746F20746865206E65617265737420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 21)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 21)
			  else
			    mid = clearbit(mid, 21)
			  end if
			End Set
		#tag EndSetter
		AlignHeightNearest As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206865696768742073686F756C6420626520746F20746865206E656172657374206F75747761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 13)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 13)
			  else
			    mid = clearbit(mid, 13)
			  end if
			End Set
		#tag EndSetter
		AlignHeightOutward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D6178696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E7761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 2)
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
		AlignMaxXInward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D6178696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 18)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 18)
			  else
			    mid = clearbit(mid, 18)
			  end if
			End Set
		#tag EndSetter
		AlignMaxXNearest As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D6178696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E656172657374206F75747761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 10)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 10)
			  else
			    mid = clearbit(mid, 10)
			  end if
			End Set
		#tag EndSetter
		AlignMaxXOutward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D6178696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E7761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 3)
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
		AlignMaxYInward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D6178696D756D205920636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 19)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 19)
			  else
			    mid = clearbit(mid, 19)
			  end if
			End Set
		#tag EndSetter
		AlignMaxYNearest As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D6178696D756D205920636F6F7264696E6174652073686F756C6420626520746F20746865206E656172657374206F75747761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 11)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 11)
			  else
			    mid = clearbit(mid, 11)
			  end if
			End Set
		#tag EndSetter
		AlignMaxYOutward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D696E696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E7761726420696E74656772616C2076616C75652E
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
		AlignMinXInward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D696E696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 16)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 16)
			  else
			    mid = clearbit(mid, 16)
			  end if
			End Set
		#tag EndSetter
		AlignMinXNearest As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D696E696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E656172657374206F75747761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 8)
			  else
			    mid = clearbit(mid, 8)
			  end if
			End Set
		#tag EndSetter
		AlignMinXOutward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D696E696D756D205920636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E7761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 1)
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
		AlignMinYInward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D696E696D756D205820636F6F7264696E6174652073686F756C6420626520746F20746865206E65617265737420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 17)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 17)
			  else
			    mid = clearbit(mid, 17)
			  end if
			End Set
		#tag EndSetter
		AlignMinYNearest As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F6620746865206D696E696D756D205920636F6F7264696E6174652073686F756C6420626520746F20746865206E656172657374206F75747761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 9)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 9)
			  else
			    mid = clearbit(mid, 9)
			  end if
			End Set
		#tag EndSetter
		AlignMinYOutward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686973206F7074696F6E2073686F756C6420626520696E636C75646564206966207468652072656374616E676C6520697320696E206120666C697070656420636F6F7264696E6174652073797374656D2E205468697320616C6C6F777320302E3520746F206265207472656174656420696E20612076697375616C6C7920636F6E73697374656E74207761792E
		#tag Getter
			Get
			  return hasbit (id, 63)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 63)
			  else
			    mid = clearbit(mid, 63)
			  end if
			End Set
		#tag EndSetter
		AlignRectFlipped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F66207468652077696474682073686F756C6420626520746F20746865206E65617265737420696E7761726420696E74656772616C2076616C75652E
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
		AlignWidthInward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F66207468652077696474682073686F756C6420626520746F20746865206E65617265737420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 20)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 20)
			  else
			    mid = clearbit(mid, 20)
			  end if
			End Set
		#tag EndSetter
		AlignWidthNearest As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468617420616C69676E6D656E74206F66207468652077696474682073686F756C6420626520746F20746865206E656172657374206F75747761726420696E74656772616C2076616C75652E
		#tag Getter
			Get
			  return hasbit (id, 12)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid, 12)
			  else
			    mid = clearbit(mid, 12)
			  end if
			End Set
		#tag EndSetter
		AlignWidthOutward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C69676E7320616C6C20656467657320696E776172642E2054686973206973207468652073616D65206173204E53416C69676E4D696E58496E776172647C4E53416C69676E4D617858496E776172647C4E53416C69676E4D696E59496E776172647C4E53416C69676E4D617859496E776172642E
		#tag Getter
			Get
			  return new AppleAlignmentOptions (15)
			End Get
		#tag EndGetter
		Shared AllEdgesInward As AppleAlignmentOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C69676E7320616C6C20656467657320746F20746865206E6561726573742076616C75652E2054686973206973207468652073616D65206173204E53416C69676E4D696E584E6561726573747C4E53416C69676E4D6178584E6561726573747C4E53416C69676E4D696E594E6561726573747C4E53416C69676E4D6178594E6561726573742E
		#tag Getter
			Get
			  return new AppleAlignmentOptions (983040)
			End Get
		#tag EndGetter
		Shared AllEdgesNearest As AppleAlignmentOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C69676E7320616C6C206564676573206F757477617264732E2054686973206973207468652073616D65206173204E53416C69676E4D696E584F7574776172647C4E53416C69676E4D6178584F7574776172647C4E53416C69676E4D696E594F7574776172647C4E53416C69676E4D6178594F7574776172642E
		#tag Getter
			Get
			  return new AppleAlignmentOptions (3840)
			End Get
		#tag EndGetter
		Shared AllEdgesOutward As AppleAlignmentOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		ID As uint64
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mID As UInt64
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AlignHeightInward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlignMaxXInward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlignMaxYInward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlignMinYInward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlignWidthInward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			Type="uinteger"
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
			Name="Width"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
