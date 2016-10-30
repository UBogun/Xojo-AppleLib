#tag Class
Protected Class AppleDockTile
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbadgeLabel Lib AppkitLibName Selector "badgeLabel" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getOwner Lib AppkitLibName Selector "owner" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsApplicationBadge Lib AppkitLibName Selector "showsApplicationBadge" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526564726177732074686520646F636B2074696C65E280997320636F6E74656E742E
		Sub Invalidate()
		  AppKitFramework.display mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleDockTile
		  return if (aptr = nil, nil, new AppleDockTile(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbadgeLabel Lib AppkitLibName Selector "setBadgeLabel:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsApplicationBadge Lib AppkitLibName Selector "setShowsApplicationBadge:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		MacOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E6720746F20626520646973706C6179656420696E207468652074696C65E28099732062616467696E6720617265612E
		#tag Getter
			Get
			  return getbadgeLabel (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbadgeLabel mid, value
			End Set
		#tag EndSetter
		BadgeLabel As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassptr as ptr
			  if mClassptr = nil then mClassptr = FoundationFrameWork.NSClassFromString("NSDockTile")
			  return mClassptr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720746F2075736520666F722064726177696E672074686520646F636B2074696C6520636F6E74656E74732E
		#tag Getter
			Get
			  return appleview.MakefromPtr(AppKitFramework.getcontentView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcontentView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ContentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A65637420726570726573656E7465642062792074686520646F636B2074696C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(getOwner(mid))
			End Get
		#tag EndGetter
		Owner As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074696C6520697320626164676564207769746820746865206170706C69636174696F6EE28099732069636F6E
		#tag Getter
			Get
			  return getshowsApplicationBadge (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsApplicationBadge mid, value
			End Set
		#tag EndSetter
		ShowsApplicationBadge As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F66207468652074696C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getSize(mid)
			End Get
		#tag EndGetter
		Size As FoundationFrameWork.NSSize
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BadgeLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
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
			Name="ShowsApplicationBadge"
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
