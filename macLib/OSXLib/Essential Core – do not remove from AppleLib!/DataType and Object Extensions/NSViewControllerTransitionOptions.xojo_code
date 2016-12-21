#tag Class
Protected Class NSViewControllerTransitionOptions
	#tag Method, Flags = &h0
		Shared Function BackwardSlideTransition() As NSViewControllerTransitionOptions
		  return new NSViewControllerTransitionOptions (384)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger)
		  mid = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CrossfadeTransition() As NSViewControllerTransitionOptions
		  return new NSViewControllerTransitionOptions (1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DownSlideTransition() As NSViewControllerTransitionOptions
		  return new NSViewControllerTransitionOptions (32)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ForwardSlideTransition() As NSViewControllerTransitionOptions
		  return new NSViewControllerTransitionOptions (320)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function LeftSlideTransition() As NSViewControllerTransitionOptions
		  return new NSViewControllerTransitionOptions (64)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function RightSlideTransition() As NSViewControllerTransitionOptions
		  return new NSViewControllerTransitionOptions (128)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function UpSlideTransition() As NSViewControllerTransitionOptions
		  return new NSViewControllerTransitionOptions (16)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E207468617420616C6C6F7773207573657220696E746572616374696F6E20647572696E6720746865207472616E736974696F6E2E
		#tag Getter
			Get
			  return HasBit(mid, 12)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 12, value)
			End Set
		#tag EndSetter
		AllowUserInteraction As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E207468617420666164657320746865206E6577207669657720696E20616E642073696D756C74616E656F75736C7920666164657320746865206F6C642076696577206F75742E20596F752063616E20636F6D62696E65207468697320616E696D6174696F6E206F7074696F6E207769746820616E79206F662074686520E2809C736C696465E2809D206F7074696F6E7320696E207468697320656E756D65726174696F6E2E
		#tag Getter
			Get
			  return HasBit(mid, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 0, value)
			End Set
		#tag EndSetter
		Crossfade As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E2074686174207265666C6563747320746865207573657220696E74657266616365206C61796F757420646972656374696F6E202875736572496E746572666163654C61796F7574446972656374696F6E2920696E206120E2809C6261636B77617264E2809D206D616E6E65722E
		#tag Getter
			Get
			  return HasBit(mid, 7) and hasbit (mid, 8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid,8, value)
			  mid = Changebit (mid, 7, value)
			End Set
		#tag EndSetter
		SlideBackward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E207468617420736C6964657320746865206F6C64207669657720646F776E207768696C6520746865206E6577207669657720736C6964657320696E746F20766965772066726F6D2074686520746F702E20496E206F7468657220776F7264732C20626F746820766965777320736C69646520646F776E2E
		#tag Getter
			Get
			  return HasBit(mid, 5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 5, value)
			End Set
		#tag EndSetter
		SlideDown As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E2074686174207265666C6563747320746865207573657220696E74657266616365206C61796F757420646972656374696F6E202875736572496E746572666163654C61796F7574446972656374696F6E2920696E206120E2809C666F7277617264E2809D206D616E6E65722E
		#tag Getter
			Get
			  return HasBit(mid, 6) and hasbit (mid, 8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid,8, value)
			  mid = Changebit (mid, 6, value)
			End Set
		#tag EndSetter
		SlideForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E207468617420736C6964657320746865206F6C64207669657720746F20746865206C656674207768696C6520746865206E6577207669657720736C6964657320696E746F20766965772066726F6D207468652072696768742E20496E206F7468657220776F7264732C20626F746820766965777320736C69646520746F20746865206C6566742E
		#tag Getter
			Get
			  return HasBit(mid, 6)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 6, value)
			End Set
		#tag EndSetter
		SlideLeft As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E207468617420736C6964657320746865206F6C64207669657720746F20746865207269676874207768696C6520746865206E6577207669657720736C6964657320696E746F20766965772066726F6D20746865206C6566742E20496E206F7468657220776F7264732C20626F746820766965777320736C69646520746F207468652072696768742E
		#tag Getter
			Get
			  return HasBit(mid, 7)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid,7, value)
			End Set
		#tag EndSetter
		SlideRight As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207472616E736974696F6E20616E696D6174696F6E207468617420736C6964657320746865206F6C642076696577207570207768696C6520746865206E6577207669657720636F6D657320696E746F20766965772066726F6D2074686520626F74746F6D2E20496E206F7468657220776F7264732C20626F746820766965777320736C6964652075702E
		#tag Getter
			Get
			  return HasBit(mid, 4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 4, value)
			End Set
		#tag EndSetter
		SlideUp As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BoundingBoxes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Crossfade"
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
			Name="LightExtents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LightInfluences"
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
			Name="SlideDown"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SlideUp"
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
