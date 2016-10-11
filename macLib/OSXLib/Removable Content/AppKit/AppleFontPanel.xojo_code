#tag Class
Protected Class AppleFontPanel
Inherits ApplePanel
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(rect as FoundationFrameWork.NSRect,  Style as AppleWindowStyleMask, type as NSBackingStoreType, DeferCreation as Boolean = false) -- From ApplePanel
		  // Constructor() -- From ApplePanel
		  // Constructor(ViewController As AppleViewController) -- From AppleWindow
		  // Constructor(aWindow as Window) -- From AppleWindow
		  // Constructor(rect as FoundationFrameWork.NSRect,  Style as AppleWindowStyleMask, type as NSBackingStoreType, DeferCreation as Boolean = false) -- From AppleWindow
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(getsharedFontPanel(classptr), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473207468652073706563696669656420666F6E74207573696E67207468652073657474696E677320696E207468652070616E656C2C20776974682074686520616964206F662074686520736861726564204E53466F6E744D616E61676572206966206E65636573736172792E
		Function ConvertFont(value as applefont) As AppleFont
		  return AppleFont.MakeFromPtr (panelConvertFont (mid, value.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsharedFontPanel Lib appkitlibname Selector "sharedFontPanel" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsharedFontPanelExists Lib appkitlibname Selector "sharedFontPanelExists" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleFontPanel
		  return if (aptr = nil, nil, new AppleFontPanel(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function panelConvertFont Lib appkitlibname Selector "panelConvertFont:" (id as ptr, font as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073656C656374656420666F6E7420696E207468652070616E656C20746F207468652073706563696669656420666F6E742E204966206D756C7469706C652069732046616C73652C2073656C65637473207468652073706563696669656420666F6E743B206F74686572776973652073656C65637473206E6F20666F6E7420616E6420646973706C6179732061206D65737361676520696E207468652070726576696577206172656120696E6469636174696E672074686174206D756C7469706C6520666F6E7473206172652073656C65637465642E
		Sub PanelFont(Multiple As Boolean = False, assigns value as applefont)
		  setPanelFont mid, nilptr(value), Multiple
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 547269676765727320612072656C6F616420746F207468652064656661756C742073746174652C20736F2074686174207468652064656C65676174652069732063616C6C65642E
		Sub ReloadDefaultFontFamilies()
		  reloadDefaultFontFamilies mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub reloadDefaultFontFamilies Lib appkitlibname Selector "reloadDefaultFontFamilies" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPanelFont Lib appkitlibname Selector "setPanelFont:isMultiple:" (id as ptr, font as ptr, multiple as Boolean)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865207370656369666965642076696577206173207468652070616E656CE2809973206163636573736F727920766965772C20616C6C6F77696E6720796F7520746F2061646420637573746F6D20636F6E74726F6C7320746F20796F7572206170706C69636174696F6EE280997320466F6E742070616E656C20776974686F757420686176696E6720746F20637265617465206120737562636C6173732E
		#tag Getter
			Get
			  return appleview.MakefromPtr(AppKitFramework.getaccessoryView(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setaccessoryView mid, nilptr(value)
			End Set
		#tag EndSetter
		AccessoryView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mclassptr as ptr
			  if mclassptr = nil then mclassptr = FoundationFrameWork.NSClassFromString("NSFontPanel")
			  return mclassptr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652070616E656CE28099732053657420627574746F6E20697320656E61626C65642E
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

	#tag ComputedProperty, Flags = &h0, Description = 4966207468652073686172656420466F6E742070616E656C20686173206265656E20637265617465642E2028726561642D6F6E6C792909
		#tag Getter
			Get
			  return getsharedFontPanelExists (classptr)
			End Get
		#tag EndGetter
		Shared SharedFontPanelExists As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BecomeKeyOnlyIfNeeded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FloatingPanel"
			Group="Behavior"
			Type="Boolean"
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
			Name="WorksWhenModal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
