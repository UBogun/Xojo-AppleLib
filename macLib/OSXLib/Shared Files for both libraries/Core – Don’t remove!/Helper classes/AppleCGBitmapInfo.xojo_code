#tag Class
Protected Class AppleCGBitmapInfo
	#tag Method, Flags = &h0
		Sub Constructor(value as uint32 = 0)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C70686120696E666F726D6174696F6E206D61736B2E20557365207468697320746F206578747261637420616C70686120696E666F726D6174696F6E20746861742073706563696669657320776865746865722061206269746D617020636F6E7461696E7320616E20616C706861206368616E6E656C20616E6420686F772074686520616C706861206368616E6E656C2069732067656E6572617465642E
		#tag Getter
			Get
			  return mid and 31
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = mid or value
			End Set
		#tag EndSetter
		AlphaInfoMask As UInt8
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 49662074686520636F6D706F6E656E7473206F662061206269746D61702061726520666C6F6174696E672D706F696E742076616C7565732E
		#tag Getter
			Get
			  return hasbit (mid, 8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit(mid,8)
			  else
			    mid = clearbit(mid, 8)
			  end if
			End Set
		#tag EndSetter
		FloatComponents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616C70686120696E666F726D6174696F6E206D61736B2E20557365207468697320746F206578747261637420616C70686120696E666F726D6174696F6E20746861742073706563696669657320776865746865722061206269746D617020636F6E7461696E7320616E20616C706861206368616E6E656C20616E6420686F772074686520616C706861206368616E6E656C2069732067656E6572617465642E
		#tag Getter
			Get
			  return mid and &hf00
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim val as uint32 = value * 256
			  mid = mid or val
			End Set
		#tag EndSetter
		FlotaInfoMask As UInt8
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		ID As Uint32
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mID As Uint32
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 31362D6269742C2062696720656E6469616E20666F726D61742E
		#tag Getter
			Get
			  return(  mid and &h3000) = &h3000
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = mid or &h3000
			End Set
		#tag EndSetter
		Order16Big As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
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
		Order16Little As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 31362D6269742C2062696720656E6469616E20666F726D61742E
		#tag Getter
			Get
			  return(  mid and &h4000) = &h4000
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = mid or &h4000
			End Set
		#tag EndSetter
		Order32Big As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 33322D6269742C206C6974746C6520656E6469616E20666F726D61742E
		#tag Getter
			Get
			  return (mid and &h2000) = &h2000
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = mid or &h2000
			End Set
		#tag EndSetter
		Order32Little As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="FloatComponents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			Type="Uint32"
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
			Name="LeftMargin"
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
			Name="Order16Little"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightMargin"
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
			Name="TopMargin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
