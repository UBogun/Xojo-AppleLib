#tag Class
Protected Class AppleWindow
Inherits AppleResponder
	#tag Method, Flags = &h0, Description = 656D6F766573207468652077696E646F772066726F6D207468652073637265656E2E
		Sub Close()
		  if me.ReleasedWhenClosed then mhasownership = false
		  AppKitFramework.close mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(ViewController As AppleViewController)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(windowWithContentViewController(classptr, ViewController.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E20616C6C6F63617465642077696E646F77207769746820746865207370656369666965642076616C7565732E
		Sub Constructor(rect as FoundationFrameWork.NSRect,  Style as AppleWindowStyleMask, type as NSBackingStoreType, DeferCreation as Boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor (initWithContentRect(alloc(classptr), rect, Style.ID, type, DeferCreation, nil), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aWindow as Window)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(ptr(aWindow.Handle))
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcanHide Lib appkitlibname Selector "canHide" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcollectionBehavior Lib appkitlibname Selector "collectionBehavior" (id as ptr) As Uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethidesOnDeactivate Lib appkitlibname Selector "hidesOnDeactivate" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getOnActiveSpace Lib appkitlibname Selector "isOnActiveSpace" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getOneShot Lib appkitlibname Selector "isOneShot" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getReleasedWhenClosed Lib appkitlibname Selector "isReleasedWhenClosed" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstyleMask Lib appkitlibname Selector "styleMask" (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getVisible Lib appkitlibname Selector "isVisible" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithContentRect Lib appkitlibname Selector "initWithContentRect:styleMask:backing:defer:screen:" (id as ptr, rect as FoundationFrameWork . NSRect, style as Uinteger, type as NSBackingstoreType, deferCreation as boolean, screen as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073756363657373206F6620676976696E67206120726573706F6E6465722074686520666F637573
		Function MakeFirstResponder(value as appleresponder) As Boolean
		  return makeFirstResponder (mid, value.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function makeFirstResponder Lib appkitlibname Selector "makeFirstResponder:" (id as ptr, value as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleWindow
		  return if (aptr = nil, nil,new applewindow(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub orderFront Lib appkitlibname Selector "orderFront:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setCanhide Lib appkitlibname Selector "setCanHide:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcollectionBehavior Lib appkitlibname Selector "setCollectionBehavior:" (id as ptr, value as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethidesOnDeactivate Lib appkitlibname Selector "setHidesOnDeactivate:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setOneShot Lib appkitlibname Selector "setOneShot:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setReleasedWhenClosed Lib appkitlibname Selector "setReleasedWhenClosed:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setstyleMask Lib appkitlibname Selector "setStyleMask:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setVisible Lib appkitlibname Selector "setIsVisible:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D6F766573207468652077696E646F7720746F207468652066726F6E74206F6620697473206C6576656C20696E207468652073637265656E206C6973742C20776974686F7574206368616E67696E672065697468657220746865206B65792077696E646F77206F7220746865206D61696E2077696E646F772E
		Sub Show(Sender as AppleObject = nil)
		  if sender = nil then sender = me
		  orderFront mid, sender.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54616B6573207468652077696E646F7720696E746F206F72206F7574206F662066756C6C73637265656E206D6F64652E
		Sub ToggleFullScreen(Sender as AppleObject = nil)
		  if sender = nil then sender = me
		  toggleFullScreen mid, sender.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub toggleFullScreen Lib appkitlibname Selector "toggleFullScreen:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function windowWithContentViewController Lib appkitlibname Selector "windowWithContentViewController:" (id as ptr, controller as ptr) As Ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206F706163697479206F66207468652057696E646F772E
		#tag Getter
			Get
			  return AppKitFramework.getalphaValue(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setalphaValue mid, value
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F66207468652077696E646F772C20696E20616E204E53417070656172616E6365206F626A6563742E
		#tag Getter
			Get
			  return AppleAppearance.MakeFromPtr(AppKitFramework.getappearance (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setappearance mid, Nilptr(value)
			End Set
		#tag EndSetter
		Appearance As AppleAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F66207468652077696E646F77E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F772063616E2062652068696464656E207768656E20697473206170706C69636174696F6E206265636F6D65732068696464656E2028647572696E6720657865637574696F6E206F6620746865204E534170706C69636174696F6E686964653A206D6574686F64292E
		#tag Getter
			Get
			  return getcanHide (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcanHide mid, value
			End Set
		#tag EndSetter
		CanHide As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSWindow")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F77E2809973206265686176696F7220696E2077696E646F7720636F6C6C656374696F6E732E
		#tag Getter
			Get
			  return new AppleWindowCollectionBehavior(getcollectionBehavior(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcollectionBehavior mid, value.id
			End Set
		#tag EndSetter
		CollectionBehavior As AppleWindowCollectionBehavior
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F77E280997320636F6C6F722073706163652E
		#tag Getter
			Get
			  return AppleColorSpace.MakeFromPtr(AppKitFramework.getcolorSpace(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcolorSpace mid, nilptr(value)
			End Set
		#tag EndSetter
		ColorSpace As AppleColorSpace
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F77E280997320636F6E74656E7420766965772C2074686520686967686573742061636365737369626C65204E5356696577206F626A65637420696E207468652077696E646F77E28099732076696577206869657261726368792E
		#tag Getter
			Get
			  return appleclipview.MakefromPtr(AppKitFramework.getcontentView(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcontentView mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ContentView As AppleClipView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleViewController.MakefromPtr(AppKitFramework.getcontentViewController(mid))
			End Get
		#tag EndGetter
		ContentViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206170706C69636174696F6EE280997320446F636B2074696C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDockTile.MakeFromPtr(AppKitFramework.getdockTile(mid))
			  
			End Get
		#tag EndGetter
		DockTile As AppleDockTile
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656666656374697665206170706572616E6365206F66207468652077696E646F772028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31302E
		#tag Getter
			Get
			  return AppleAppearance.MakeFromPtr(AppKitFramework.geteffectiveappearance (id))
			  
			End Get
		#tag EndGetter
		EffectiveAppearance As AppleAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F772069732072656D6F7665642066726F6D207468652073637265656E207768656E20697473206170706C69636174696F6E206265636F6D657320696E6163746976652E
		#tag Getter
			Get
			  return gethidesOnDeactivate (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethidesOnDeactivate mid, value
			End Set
		#tag EndSetter
		HidesOnDeactivate As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F77206973206F6E207468652063757272656E746C79206163746976652073706163652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getOnActiveSpace (mid)
			End Get
		#tag EndGetter
		OnActiveSpace As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F7720646576696365207468652077696E646F77206D616E61676573206973206672656564207768656E206974E28099732072656D6F7665642066726F6D207468652073637265656E206C6973742E
		#tag Getter
			Get
			  return getOneShot (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setOneShot mid, value
			End Set
		#tag EndSetter
		OneShot As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F772069732072656C6561736564207768656E2069742072656365697665732074686520636C6F7365206D6573736167652E
		#tag Getter
			Get
			  return getReleasedWhenClosed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setReleasedWhenClosed mid, value
			End Set
		#tag EndSetter
		ReleasedWhenClosed As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F66207468652077696E646F772C20696E20616E204E53417070656172616E6365206F626A6563742E
		#tag Getter
			Get
			  return new AppleWindowStyleMask(getstyleMask(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setstyleMask mid, value.id
			End Set
		#tag EndSetter
		StyleMask As AppleWindowStyleMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F772069732076697369626C65206F6E73637265656E20286576656E207768656E206974E2809973206F62736375726564206279206F746865722077696E646F7773292E
		#tag Getter
			Get
			  return getVisible (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setVisible mid, value
			End Set
		#tag EndSetter
		Visible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F772069732061626C6520746F2072656365697665206B6579626F61726420616E64206D6F757365206576656E7473206576656E207768656E20736F6D65206F746865722077696E646F77206973206265696E672072756E206D6F64616C6C792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getworksWhenModal (mid)
			End Get
		#tag EndGetter
		WorksWhenModal As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kNSWindowWillCloseNotification, Type = Text, Dynamic = False, Default = \"NSWindowWillCloseNotification", Scope = Public
	#tag EndConstant


	#tag Enum, Name = NSBackingStoreType, Type = UInteger, Flags = &h0
		Retained = 0
		  NonRetained = 1
		Buffered = 2
	#tag EndEnum

	#tag Enum, Name = NSWindowOrderingMode, Type = Integer, Flags = &h0
		Above = 1
		  Below= -1
		Out = 0
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanHide"
			Group="Behavior"
			Type="Boolean"
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
			Name="HidesOnDeactivate"
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
			Name="OnActiveSpace"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OneShot"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReleasedWhenClosed"
			Group="Behavior"
			Type="Boolean"
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
			Name="Visible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WorksWhenModal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
