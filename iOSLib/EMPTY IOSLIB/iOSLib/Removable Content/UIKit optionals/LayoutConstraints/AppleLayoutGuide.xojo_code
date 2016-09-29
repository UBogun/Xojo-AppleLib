#tag Class
Protected Class AppleLayoutGuide
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 437265617465732061206E6577206C61796F757467756964652E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  if ClassAvailable then
		    Super.Constructor(init(alloc(classptr)))
		    MHasOwnership = true
		  else
		    MakeException(iOSCoreModule.kClassNotAvailable)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleLayoutGuide
		  return if (aptr = nil, nil, new AppleLayoutGuide(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		OS X 10.11
		Available since OS X 10.11
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626F74746F6D2065646765206F6620746865206C61796F7574206775696465E2809973206672616D652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getbottomanchor(id))
			End Get
		#tag EndGetter
		BottomAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520686F72697A6F6E74616C2063656E746572206F6620746865206C61796F7574206775696465E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getcenterXAnchor(id))
			End Get
		#tag EndGetter
		CenterXAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520766572746963616C2063656E746572206F6620746865206C61796F7574206775696465E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutYAxisAnchor.MakeFromPtr(UIKitFramework.getcenterYAnchor(id))
			End Get
		#tag EndGetter
		CenterYAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return classptr <> nil
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSLayoutGuide")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796F7574206775696465E2809973206672616D6520696E20697473206F776E696E672076696577E280997320636F6F7264696E6174652073797374656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return UIKitFramework.getframe(id)
			End Get
		#tag EndGetter
		Frame As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520686569676874206F6620746865206C61796F7574206775696465E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutDimension.MakeFromPtr(UIKitFramework.getheightAnchor(id))
			End Get
		#tag EndGetter
		HeightAnchor As AppleLayoutDimension
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120737472696E67207573656420746F206964656E7469667920746865206C61796F75742067756964652E
		#tag Getter
			Get
			  return UIKitFramework.getidentifier(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setidentifier id, value
			End Set
		#tag EndSetter
		Identifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865206C656164696E672065646765206F6620746865206C61796F7574206775696465E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getleadingAnchor(id))
			End Get
		#tag EndGetter
		LeaadingAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865206C6566742065646765206F6620746865206C61796F7574206775696465E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getleftAnchor(id))
			End Get
		#tag EndGetter
		LeftAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520766965772074686174206F776E732074686973206C61796F75742067756964652E0A42792064656661756C742C20746869732070726F7065727479206973206E696C2E20546F20706172746963697061746520696E204175746F204C61796F75742C20746865206C61796F7574206775696465206D75737420626520616464656420746F206120766965772062792063616C6C696E6720697473206164644C61796F757447756964653A206D6574686F642E20446F206E6F74206D6F6469667920746869732070726F7065727479206469726563746C792E20496E73746561642C20757365207468652076696577E2809973206164644C61796F757447756964653A20616E642072656D6F76654C61796F757447756964653A206D6574686F64732C2077686963682075706461746520746869732070726F7065727479206173206E65636573736172792E
		#tag Getter
			Get
			  return appleview.MakefromPtr(UIKitFramework.getowningView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setowningView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		OwningView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E67207468652072696768742065646765206F6620746865206C61796F7574206775696465E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getrightAnchor(id))
			End Get
		#tag EndGetter
		RightAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520746F702065646765206F6620746865206C61796F75742067756964652773206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.gettopanchor(id))
			End Get
		#tag EndGetter
		TopAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520746F702065646765206F6620746865206C61796F7574206775696465E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.gettrailingAnchor(id))
			End Get
		#tag EndGetter
		TrailingAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865207769647468206F6620746865206C61796F7574206775696465E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  return AppleLayoutDimension.MakeFromPtr(UIKitFramework.getwidthAnchor(id))
			End Get
		#tag EndGetter
		WidthAnchor As AppleLayoutDimension
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Group="Behavior"
			Type="Text"
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
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
