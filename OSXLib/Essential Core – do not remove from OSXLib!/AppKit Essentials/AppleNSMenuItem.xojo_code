#tag Class
Protected Class AppleNSMenuItem
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Title As CFStringRef, Action As Ptr, KeyEquivalent as CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initWithTitle(alloc(classptr), title, Action, KeyEquivalent))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromMenuitem(m as MenuItem) As AppleNSMenuItem
		  return m.AppleObject
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAlternate Lib appkitlibname Selector "isAlternate" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasSubmenu Lib appkitlibname Selector "hasSubmenu" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getindentationLevel Lib appkitlibname Selector "indentationLevel" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisSeparatorItem Lib appkitlibname Selector "isSeparatorItem" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getkeyEquivalentModifierMask Lib appkitlibname Selector "keyEquivalentModifierMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmixedStateImage Lib appkitlibname Selector "mixedStateImage" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getoffStateImage Lib appkitlibname Selector "offStateImage" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getonStateImage Lib appkitlibname Selector "onStateImage" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparentItem Lib appkitlibname Selector "parentItem" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrepresentedObject Lib appkitlibname Selector "representedObject" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getState Lib appkitlibname Selector "state" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuserKeyEquivalent Lib appkitlibname Selector "userKeyEquivalent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesUserKeyEquivalents Lib appkitlibname Selector "usesUserKeyEquivalents" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithTitle Lib appkitlibname Selector "initWithTitle:action:keyEquivalent:" (id as ptr, title as cfstringref, action as ptr, keyequivalent as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleNSMenuitem
		  return if (aptr = nil, nil, new AppleNSMenuItem(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206D656E75206974656D2074686174206973207573656420746F207365706172617465206C6F676963616C2067726F757073206F66206D656E7520636F6D6D616E64732E
		 Shared Function SeparatorItem() As AppleNSMenuItem
		  dim result as new AppleNSMenuItem(separatorItem(classptr))
		  result.retainClassObject
		  Return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function separatorItem Lib appkitlibname Selector "separatorItem" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAlternate Lib appkitlibname Selector "setAlternate:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setindentationLevel Lib appkitlibname Selector "setIndentationLevel:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setkeyEquivalentModifierMask Lib appkitlibname Selector "setKeyEquivalentModifierMask:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmixedStateImage Lib appkitlibname Selector "setMixedStateImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setoffStateImage Lib appkitlibname Selector "setOffStateImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setonStateImage Lib appkitlibname Selector "setOnStateImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrepresentedObject Lib appkitlibname Selector "setRepresentedObject:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setState Lib appkitlibname Selector "setState:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setUsesUserKeyEquivalents Lib appkitlibname Selector "setUsesUserKeyEquivalents:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		
		submenu
		menu
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E756974656DE280997320616374696F6E2D6D6574686F642073656C6563746F722E
		#tag Getter
			Get
			  return appkitframework.getaction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setAction id,  value
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120626F6F6C65616E2076616C75652074686174206D61726B732074686520726563656976657220617320616E20616C7465726E61746520746F207468652070726576696F7573206D656E75206974656D2E
		#tag Getter
			Get
			  return getAlternate (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAlternate id,value
			End Set
		#tag EndSetter
		Alternate As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120637573746F6D20737472696E6720666F722061206D656E75206974656D2E
		#tag Getter
			Get
			  return AppleAttributedString.MakeFromPtr(appkitframework.getattributedTitle (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setattributedTitle id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AttributedTitle As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSMenuItem")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865204D656E754974656D20697320656E61626C65642E
		#tag Getter
			Get
			  return appkitframework.getenabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setenabled id,value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206D656E756974656D206861732061207375626D656E752E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return gethasSubmenu (id)
			End Get
		#tag EndGetter
		HasSubmenu As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865204D656E754974656D2069732068696464656E2E
		#tag Getter
			Get
			  return appkitframework.getHidden (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setHidden id,value
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E756974656DE280997320696D6167652E204E6F74206166666563746564206279206368616E67657320696E206974732073746174652E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(AppKitFramework.getImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Image As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E75206974656D20696E64656E746174696F6E206C6576656C20666F72207468652072656365697665722E2052616E67652030E2809331352C2064656661756C7420302E
		#tag Getter
			Get
			  return getindentationLevel (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setindentationLevel id,value
			End Set
		#tag EndSetter
		IndentationLevel As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206D656E756974656D206F7220616E79206F66206974732073757065726974656D732069732068696464656E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getisHiddenOrHasHiddenAncestor (id)
			End Get
		#tag EndGetter
		IsHiddenOrHasHiddenAncestor As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652072656365697665722073686F756C6420626520647261776E20686967686C6967687465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getHighlighted (id)
			End Get
		#tag EndGetter
		IsHighlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5472756520696620746865206974656D206973206120736570617261746F72206974656D2028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return getisSeparatorItem (id)
			End Get
		#tag EndGetter
		IsSeparatorItem As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E756974656DE280997320756E6D6F646966696564206B6579206571756976616C656E742E0A496620796F752077616E7420746F207370656369667920746865204261636B7370616365206B657920617320746865206B6579206571756976616C656E7420666F722061206D656E75206974656D2C2075736520612073696E676C652063686172616374657220737472696E672077697468204E534261636B73706163654368617261637465722028266830382920616E6420666F722074686520466F72776172642044656C657465206B65792C20757365204E5344656C657465436861726163746572202826683746292E204E6F7465207468617420746865736520617265206E6F74207468652073616D65206368617261637465727320796F75206765742066726F6D20616E204E534576656E74206B65792D646F776E206576656E74207768656E207072657373696E672074686F7365206B6579732E
		#tag Getter
			Get
			  return AppKitFramework.getkeyEquivalent(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setkeyEquivalent id, value
			End Set
		#tag EndSetter
		KeyEquivalent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E756974656DE2809973206B6579626F617264206571756976616C656E74206D6F646966696572732E496620796F752077616E7420746F207370656369667920746865204261636B7370616365206B657920617320746865206B6579206571756976616C656E7420666F722061206D656E75206974656D2C2075736520612073696E676C652063686172616374657220737472696E672077697468204E534261636B73706163654368617261637465722028266830382920616E6420666F722074686520466F72776172642044656C657465206B65792C20757365204E5344656C657465436861726163746572202826683746292E204E6F7465207468617420746865736520617265206E6F74207468652073616D65206368617261637465727320796F75206765742066726F6D20616E204E534576656E74206B65792D646F776E206576656E74207768656E207072657373696E672074686F7365206B6579732E
		#tag Getter
			Get
			  return new AppleNSEventModifierFlags(getkeyEquivalentModifierMask(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setkeyEquivalentModifierMask id, value.id
			End Set
		#tag EndSetter
		KeyEquivalentModifierMask As AppleNSEventModifierFlags
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765206F6620746865206D656E756974656D207468617420696E64696361746573206120E2809C6D69786564E2809D2073746174652E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(getmixedStateImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmixedStateImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		MixedStateImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765206F6620746865206D656E756974656D207468617420696E6469636174657320616E20E2809C6F6666E2809D2073746174652E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(getoffStateImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setoffStateImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		OffStateImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765206F6620746865206D656E756974656D207468617420696E6469636174657320616E20E2809C6F6EE2809D2073746174652E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(getonStateImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setonStateImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		OnStateImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E75206974656D2077686F7365207375626D656E7520636F6E7461696E73207468652063757272656E74206D656E756974656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleNSMenuItem.MakeFromPtr(getparentItem(id))
			End Get
		#tag EndGetter
		ParentItem As AppleNSMenuItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A65637420726570726573656E746564206279207468652072656365697665722E0A42792073657474696E67206120726570726573656E746564206F626A65637420666F722061206D656E75206974656D2C20796F75206D616B6520616E206173736F63696174696F6E206265747765656E20746865206D656E75206974656D20616E642074686174206F626A6563742E2054686520726570726573656E746564206F626A6563742066756E6374696F6E732061732061206D6F726520737065636966696320666F726D206F6620746167207468617420616C6C6F777320796F7520746F206173736F636961746520616E79206F626A6563742C206E6F74206A75737420616E2061726269747261727920696E74656765722C207769746820746865206974656D7320696E2061206D656E752E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(getrepresentedObject (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setrepresentedObject id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		RepresentedObject As Appleobject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374617465206F6620746865206D656E756974656D2E
		#tag Getter
			Get
			  return getState(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setState id, value
			End Set
		#tag EndSetter
		State As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E756974656DE2809973207461672C20776869636820697320616E20696E7465676572207468617420796F752075736520746F206964656E746966792074686520766965772077697468696E20796F7572206170702E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.gettag(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.settag id, value
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E756974656DE2809973207461726765742E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(appkitframework.getTarget (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTarget id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Target As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E756974656DE2809973207469746C652E
		#tag Getter
			Get
			  return AppKitFramework.getTitle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTitle id, value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420666F7220746865206D656E756974656DE280997320746F6F6C7469702E0A5468652076616C7565206F6620746869732070726F7065727479206973206E696C20696620746865207669657720646F6573206E6F742063757272656E746C7920646973706C617920746F6F6C74697020746578742E2041737369676E696E6720612076616C756520746F20746869732070726F7065727479206361757365732074686520746F6F6C74697020746F20626520646973706C6179656420666F722074686520766965772E20
		#tag Getter
			Get
			  return AppKitFramework.gettoolTip(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.settoolTip id, value
			End Set
		#tag EndSetter
		ToolTip As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5474686520757365722D61737369676E6564206B6579206571756976616C656E7420666F7220746865206D656E756974656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getuserKeyEquivalent(id)
			End Get
		#tag EndGetter
		UserKeyEquivalent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572206D656E75206974656D7320636F6E666F726D20746F207573657220707265666572656E63657320666F72206B6579206571756976616C656E74732E
		#tag Getter
			Get
			  return getusesUserKeyEquivalents (classptr)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUsesUserKeyEquivalents classptr, value
			End Set
		#tag EndSetter
		Shared UsesUserKeyEquivalents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74656E74207669657720666F7220746865206D656E756974656D2E0A41206D656E75206974656D20776974682061207669657720646F6573206E6F74206472617720697473207469746C652C2073746174652C20666F6E742C206F72206F74686572207374616E646172642064726177696E6720617474726962757465732C20616E642061737369676E732064726177696E6720726573706F6E736962696C69747920656E746972656C7920746F2074686520766965772E204B6579626F617264206571756976616C656E747320616E6420747970652D73656C65637420636F6E74696E756520746F2075736520746865206B6579206571756976616C656E7420616E64207469746C65206173206E6F726D616C2E
		#tag Getter
			Get
			  return appleview.MakeFromPtr(AppKitFramework.getview (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setview id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		View As AppleView
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alternate"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasSubmenu"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndentationLevel"
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
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHighlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsSeparatorItem"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyEquivalent"
			Group="Behavior"
			Type="Text"
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
			Name="State"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolTip"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserKeyEquivalent"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
