#tag Class
Protected Class AppleWindowCollectionBehavior
	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F77206170706561727320696E20616C6C207370616365732E20546865206D656E752062617220626568617665732074686973207761792E
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
		CanJoinAllSpaces As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F772063616E20626520612066756C6C2073637265656E2074696C652077696E646F7720616E6420646F6573206E6F74206861766520746F2068617665204E5357696E646F77436F6C6C656374696F6E4265686176696F7246756C6C53637265656E5072696D617279207365742E20496620796F752073657420626F7468204E5357696E646F77436F6C6C656374696F6E4265686176696F7246756C6C53637265656E416C6C6F777354696C696E6720616E64204E5357696E646F77436F6C6C656374696F6E4265686176696F7246756C6C53637265656E446973616C6C6F777354696C696E672C20616E20617373657274696F6E206973207261697365642E204E6F7465207468617420612077696E646F77207468617420616C6C6F77732074696C696E67206D6179206E6F7420626520646973706C6179656420696E20612074696C6520696620697473206D696E46756C6C53637265656E436F6E74656E7453697A652076616C756520697320746F6F206C6172676520746F206669742E
		#tag Getter
			Get
			  return hasbit (mid, 11)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 11, value)
			End Set
		#tag EndSetter
		FullScreenAllowsTiling As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57696E646F77732077697468207468697320636F6C6C656374696F6E206265686176696F722063616E2062652073686F776E206F6E207468652073616D65207370616365206173207468652066756C6C73637265656E2077696E646F772E
		#tag Getter
			Get
			  return hasbit (mid, 8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 8, value)
			End Set
		#tag EndSetter
		FullScreenAuxiliary As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F772063616E6E6F74206265206D61646520612066756C6C73637265656E2074696C652077696E646F772C206275742069742063616E2068617665204E5357696E646F77436F6C6C656374696F6E4265686176696F7246756C6C53637265656E5072696D617279207365742E20496620796F752073657420626F7468204E5357696E646F77436F6C6C656374696F6E4265686176696F7246756C6C53637265656E446973616C6C6F777354696C696E6720616E64204E5357696E646F77436F6C6C656374696F6E4265686176696F7246756C6C53637265656E416C6C6F777354696C696E672C20616E20617373657274696F6E206973207261697365642E20596F752063616E2075736520746869732073657474696E6720746F2070726576656E7420612077696E646F7720746861742069736EE28099742063617061626C65206F66206265696E672066756C6C73637265656E2066726F6D206265696E672074696C65642E20596F752063616E20616C736F2075736520746869732073657474696E6720746F2070726576656E74206F746865722077696E646F77732066726F6D206265696E6720706C6163656420696E207468652077696E646F77E28099732066756C6C73637265656E2074696C652E
		#tag Getter
			Get
			  return hasbit (mid, 12)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 12, value)
			End Set
		#tag EndSetter
		FullScreenDisallowsTiling As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return hasbit (mid, 9)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 9, value)
			End Set
		#tag EndSetter
		FullScreenNone As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412077696E646F772077697468207468697320636F6C6C656374696F6E206265686176696F722068617320612066756C6C73637265656E20627574746F6E20696E20746865207570706572207269676874206F6620697473207469746C65206261722E
		#tag Getter
			Get
			  return hasbit (mid, 7)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 7, value)
			End Set
		#tag EndSetter
		FullScreenPrimary As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		ID As Uinteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F77206973206E6F742070617274206F66207468652077696E646F77206379636C6520666F7220757365207769746820746865204379636C65205468726F7567682057696E646F77732057696E646F77206D656E75206974656D2E
		#tag Getter
			Get
			  return hasbit (mid, 6)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 6, value)
			End Set
		#tag EndSetter
		IgnoresCycle As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F772070617274696369706174657320696E2053706163657320616E64204578706F73C3A92E2054686973206973207468652064656661756C74206265686176696F722069662077696E646F774C6576656C20697320657175616C20746F204E534E6F726D616C57696E646F774C6576656C2E
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
		Managed As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mID As uinteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 4D616B696E67207468652077696E646F772061637469766520646F6573206E6F742063617573652061207370616365207377697463683B207468652077696E646F7720737769746368657320746F20746865206163746976652073706163652E
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
		MoveToActiveSpace As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F772070617274696369706174657320696E207468652077696E646F77206379636C6520666F7220757365207769746820746865204379636C65205468726F7567682057696E646F77732057696E646F77206D656E75206974656D2E
		#tag Getter
			Get
			  return hasbit (mid,5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 5, value)
			End Set
		#tag EndSetter
		ParticipatesInCycle As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F7720697320756E6166666563746564206279204578706F73C3A93B2069742073746179732076697369626C6520616E642073746174696F6E6172792C206C696B6520746865206465736B746F702077696E646F772E
		#tag Getter
			Get
			  return hasbit (mid, 4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = changebit (mid, 4, value)
			End Set
		#tag EndSetter
		Stationary As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F7720666C6F61747320696E2053706163657320616E642069732068696464656E206279204578706F73C3A92E2054686973206973207468652064656661756C74206265686176696F722069662077696E646F774C6576656C206973206E6F7420657175616C20746F204E534E6F726D616C57696E646F774C6576656C2E
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
		Transient As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CanJoinAllSpaces"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenAllowsTiling"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenAuxiliary"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenDisallowsTiling"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenNone"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenPrimary"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			Type="Uinteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresCycle"
			Group="Behavior"
			Type="Boolean"
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
			Name="Managed"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MoveToActiveSpace"
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
			Name="ParticipatesInCycle"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Stationary"
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
		#tag ViewProperty
			Name="Transient"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
