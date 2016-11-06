#tag Class
Protected Class NSCellStyleMask
	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 53616D65206173204368616E6765477261792C20627574206F6E6C79206261636B67726F756E6420706978656C7320617265206368616E6765642E
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
		ChangeBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6E2063656C6C20646973706C6179732069747320616C7465726E6174652069636F6E20616E642F6F72207469746C652E
		#tag Getter
			Get
			  return hasbit (mid, 0)
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
		Contents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6E2063656C6C2073776170732074686520E2809C636F6E74726F6C20636F6C6F72E2809D202874686520636F6E74726F6C436F6C6F72206D6574686F64206F66204E53436F6C6F722920616E6420776869746520706978656C73206F6E20697473206261636B67726F756E6420616E642069636F6E2E
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
		GrayCell As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		ID As Uinteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mID As uinteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6E2063656C6C20E2809C70757368657320696EE2809D20696620697420686173206120626F726465722E
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
		PushIn As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ChangeBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Contents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DocModalWindow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreen"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullSizeContentView"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GrayCell"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HUDWindow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			Type="Uinteger"
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
			Name="NonactivatingPanel"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PushIn"
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
			Name="TexturedBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnifiedTitleAndToolbar"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UtilityWindow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
