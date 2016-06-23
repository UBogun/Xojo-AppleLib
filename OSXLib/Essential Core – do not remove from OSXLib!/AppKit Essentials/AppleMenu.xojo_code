#tag Class
Protected Class AppleMenu
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 416464732061206D656E75206974656D20746F2074686520656E64206F6620746865206D656E752E
		Sub AddItem(Item As AppleNSMenuItem)
		  #If TargetMacOS then
		    addItem id, item.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577206D656E75206974656D20616E64206164647320697420746F2074686520656E64206F6620746865206D656E752E
		Sub AddItem(Title As cfstringRef, Action as ptr, keyEquivalent as CFStringRef)
		  #If TargetMacOS then
		    addItemWithTitle id, title, action, keyEquivalent
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addItem Lib appkitlibname Selector "addItem:" (id as ptr, item as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addItemWithTitle Lib appkitlibname Selector "addItemWithTitle:action:keyEquivalent:" (id as ptr, title as cfstringref, action as ptr, keyEquivalent as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4469736D697373657320746865206D656E7520616E6420656E647320616C6C206D656E7520747261636B696E672E
		Sub CancelTracking(WithoutAnimation as Boolean = false)
		  #If TargetMacOS then
		    
		    if WithoutAnimation then
		      cancelTrackingWithoutAnimation id
		    else
		      cancelTracking id
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub cancelTracking Lib appkitlibname Selector "cancelTracking" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub cancelTrackingWithoutAnimation Lib appkitlibname Selector "cancelTrackingWithoutAnimation" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E732061206D656E7520686176696E672074686520737065636966696564207469746C6520616E642077697468206175746F656E61626C696E67206F66206D656E75206974656D73207475726E6564206F6E2E
		Sub Constructor(Title As CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initWithTitle(alloc(ClassPtr), Title))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsContextMenuPlugIns Lib appkitlibname Selector "allowsContextMenuPlugIns" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoenablesItems Lib appkitlibname Selector "autoenablesItems" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethighlightedItem Lib appkitlibname Selector "highlightedItem" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getitemArray Lib appkitlibname Selector "itemArray" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmenuBarHeight Lib appkitlibname Selector "menuBarHeight" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmenuBarVisible Lib appkitlibname Selector "menuBarVisible" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getminimumWidth Lib appkitlibname Selector "minimumWidth" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfItems Lib appkitlibname Selector "numberOfItems" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpropertiesToUpdate Lib appkitlibname Selector "propertiesToUpdate" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsStateColumn Lib appkitlibname Selector "showsStateColumn" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsupermenu Lib appkitlibname Selector "supermenu" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206964656E74696679696E6720746865206C6F636174696F6E206F66206120737065636966696564206D656E75206974656D20696E20746865206D656E752E
		Function IndexOfItem(Item As AppleNSMenuItem) As Integer
		  #If TargetMacOS then
		    return indexOfItem ( id, item.id )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F6620746865206669727374206D656E75206974656D20696E20746865206D656E7520746861742068617320612073706563696669656420616374696F6E20616E64207461726765742E
		Function indexOfItem(Target As AppleObject, Action as Ptr) As Integer
		  #If TargetMacOS then
		    return indexOfItemWithTarget ( id, target.id, action)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F6620746865206669727374206D656E75206974656D20696E20746865206D656E75207468617420686173206120737065636966696564207469746C652E
		Function IndexOfItem(Title as CFStringRef) As Integer
		  #If TargetMacOS then
		    return indexOfItemWithTitle ( id, title)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F6620746865206669727374206D656E75206974656D20696E20746865206D656E75206964656E7469666965642062792061207461672E
		Function IndexOfItem(Tag as Integer) As integer
		  #If TargetMacOS then
		    return indexOfItemWithTag (id, tag)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function indexOfItem Lib appkitlibname Selector "indexOfItem:" (id as ptr, item as ptr) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F6620746865206669727374206D656E75206974656D20696E20746865206D656E75207468617420686173206120676976656E20726570726573656E746564206F626A6563742E
		Function indexOfItemWithRepresentedObject(RepresentedObject As AppleObject) As Integer
		  #If TargetMacOS then
		    return indexOfItemWithRepresentedObject ( id, RepresentedObject.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function indexOfItemWithRepresentedObject Lib appkitlibname Selector "indexOfItemWithRepresentedObject:" (id as ptr, obj as ptr) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F6620746865206D656E75206974656D20696E20746865206D656E7520776974682074686520676976656E207375626D656E752E
		Function indexOfItemWithSubmenu(Submenu As Applemenu) As Integer
		  #If TargetMacOS then
		    return indexOfItemWithSubmenu ( id, submenu.id )
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function indexOfItemWithSubmenu Lib appkitlibname Selector "indexOfItemWithSubmenu:" (id as ptr, submenu as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function indexOfItemWithTag Lib appkitlibname Selector "indexOfItemWithTag:" (id as ptr, tag as Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function indexOfItemWithTarget Lib appkitlibname Selector "indexOfItemWithTarget:andAction:" (id as ptr, target as ptr, action as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function indexOfItemWithTitle Lib appkitlibname Selector "indexOfItemWithTitle:" (id as ptr, title as cfstringref) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithTitle Lib appkitlibname Selector "initWithTitle:" (id as ptr, title as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E73657274732061206D656E75206974656D20696E746F20746865206D656E752061742061207370656369666963206C6F636174696F6E2E
		Sub InsertItem(Item As AppleNSMenuItem, Index as Integer)
		  #If TargetMacOS then
		    insertItem id, item.id, index
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E6420616464732061206D656E75206974656D206174206120737065636966696564206C6F636174696F6E20696E20746865206D656E752E
		Sub InsertItem(Title As cfstringRef, Action as ptr, keyEquivalent as CFStringRef, Index as Integer)
		  #If TargetMacOS then
		    insertItemWithTitle id, title, action, keyEquivalent, index
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub insertItem Lib appkitlibname Selector "insertItem:atIndex:" (id as ptr, item as ptr, index as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub insertItemWithTitle Lib appkitlibname Selector "insertItemWithTitle:action:keyEquivalent:atIndex:" (id as ptr, title as cfstringref, action as ptr, keyEuivalent as CFStringRef, Index as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206D656E75206974656D2061742061207370656369666963206C6F636174696F6E206F6620746865206D656E752E
		Function ItemAtIndex(Index as Integer) As AppleNSMenuItem
		  #If TargetMacOS then
		    return AppleNSMenuItem.MakefromPtr(itemAtIndex( id, Index))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function itemAtIndex Lib appkitlibname Selector "itemAtIndex:" (id as ptr, index as Integer) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206669727374206D656E75206974656D20696E20746865206D656E7520776974682074686520737065636966696564207461672E
		Function ItemWithTag(Tag as Integer) As AppleNSMenuItem
		  #If TargetMacOS then
		    return AppleNSMenuItem.MakefromPtr(itemWithTag( id, tag))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function itemWithTag Lib appkitlibname Selector "itemWithTag:" (id as ptr, tag as Integer) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206669727374206D656E75206974656D20696E20746865206D656E752077697468206120737065636966696564207469746C652E
		Function ItemWithTitle(Title as CFStringRef) As AppleNSMenuItem
		  #If TargetMacOS then
		    return AppleNSMenuItem.MakefromPtr(itemWithTitle( id, title))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function itemWithTitle Lib appkitlibname Selector "itemWithTitle:" (id as ptr, title as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleMenu
		  return if (aptr = nil, nil, new applemenu(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43617573657320746865206170706C69636174696F6E20746F2073656E642074686520616374696F6E206D657373616765206F66206120737065636966696564206D656E75206974656D20746F20697473207461726765742E
		Sub PerformActionForItem(Index as Integer)
		  #If TargetMacOS then
		    performActionForItemAtIndex ( id, Index)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub performActionForItemAtIndex Lib appkitlibname Selector "performActionForItemAtIndex:" (id as ptr, index as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 506572666F726D732074686520616374696F6E20666F7220746865206D656E75206974656D207468617420636F72726573706F6E647320746F2074686520676976656E206B6579206571756976616C656E742E2052657475726E732074727565206966207468654576656E742069732061206B6579206571756976616C656E74207468617420746865206D656E752073686F756C642068616E646C652C2066616C73652069662069742069732061206B6579206571756976616C656E74207468617420746865206D656E752073686F756C64206E6F742068616E646C652E
		Function performKeyEquivalent(KeyEvent as AppleNSEvent) As Boolean
		  #If TargetMacOS then
		    return performKeyEquivalent(id, KeyEvent.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function performKeyEquivalent Lib appkitlibname Selector "performKeyEquivalent:" (id as ptr, keyEvent as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446973706C6179732074686520636F6E7465787475616C206D656E75206F7665722061207669657720666F7220616E206576656E742E
		Sub PopUp(anevent as applensevent, view as AppleView)
		  #If TargetMacOS then
		    popUpContextMenu (classptr, id, anevent.id, view.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506F707320757020746865206D656E752061742074686520737065636966696564206C6F636174696F6E2E
		Sub PopUp(Item as AppleNSMEnuitem, location as FoundationFrameWork.NSPoint, view as appleview)
		  #If TargetMacOS then
		    popUpMenuPositioningItem (id, item.id, location, view.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446973706C617973206120636F6E7465787475616C206D656E75206F7665722061207669657720666F7220616E206576656E742E
		 Shared Sub PopUpContextMenu(menu as applemenu, anevent as applensevent, view as AppleView)
		  #If TargetMacOS then
		    popUpContextMenu (classptr, menu.id, anevent.id, view.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub popUpContextMenu Lib appkitlibname Selector "popUpContextMenu:withEvent:forView:" (id as ptr, menu as ptr, anevent as ptr, view as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub popUpMenuPositioningItem Lib appkitlibname Selector "popUpMenuPositioningItem:atLocation:inView:" (id as ptr, item as ptr, location as FoundationFrameWork . NSPoint, view as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C20746865206D656E75206974656D7320696E20746865206D656E752E
		Sub RemoveAllItems()
		  #If TargetMacOS then
		    removeAllItems id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllItems Lib appkitlibname Selector "removeAllItems" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061206D656E75206974656D2066726F6D20746865206D656E752E
		Sub RemoveItem(Item As AppleNSMenuItem)
		  #If TargetMacOS then
		    removeItem id, item.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320746865206D656E75206974656D206174206120737065636966696564206C6F636174696F6E20696E20746865206D656E752E
		Sub RemoveItem(Index as Integer)
		  #If TargetMacOS then
		    removeItemAtIndex id, index
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeItem Lib appkitlibname Selector "removeItem:" (id as ptr, item as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeItemAtIndex Lib appkitlibname Selector "removeItemAtIndex:" (id as ptr, Index as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsContextMenuPlugIns Lib appkitlibname Selector "setAllowsContextMenuPlugIns:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoenablesItems Lib appkitlibname Selector "setAutoenablesItems:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmenuBarVisible Lib appkitlibname Selector "setMenuBarVisible:" (id as ptr, title as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setminimumWidth Lib appkitlibname Selector "minimumWidth:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsStateColumn Lib appkitlibname Selector "setShowsStateColumn:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 41737369676E732061206D656E7520746F2062652061207375626D656E75206F6620746865206D656E7520636F6E74726F6C6C6564206279206120676976656E206D656E75206974656D2E
		Sub SetSubmenu(Submenu As Applemenu, Item as AppleNSMenuItem)
		  #If TargetMacOS then
		    setSubmenu ( id, submenu.id,item.Id )
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSubmenu Lib appkitlibname Selector "setSubmenu:forItem:" (id as ptr, menu as ptr, item as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 456E61626C6573206F722064697361626C657320746865206D656E75206974656D73206F6620746865206D656E75206261736564206F6E20746865204E534D656E7556616C69646174696F6E20696E666F726D616C2070726F746F636F6C20616E642073697A657320746865206D656E7520746F20666974206974732063757272656E74206D656E75206974656D73206966206E65636573736172792E
		Sub Update()
		  #If TargetMacOS then
		    update id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub update Lib appkitlibname Selector "update" (id as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		itemChanged not implemented because the standard invokes a NSMenuDidChangeItemNotification
		submenuAction
		font
		popupcontextmenu…withFont:
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520706F702D7570206D656E7520616C6C6F777320617070656E64696E67206F6620636F6E7465787475616C206D656E7520706C75672D696E206974656D732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsContextMenuPlugIns(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsContextMenuPlugIns id, value
			  #endif
			End Set
		#tag EndSetter
		AllowsContextMenuPlugIns As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206D656E75206175746F6D61746963616C6C7920656E61626C657320616E642064697361626C657320697473206D656E75206974656D732E4E6F74653A20576F6E646572206966204170706C65206D65616E7320706F696E747320696E73746561642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getautoenablesItems(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setautoenablesItems id, value
			  #endif
			End Set
		#tag EndSetter
		AutoenablesItems As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSMenu")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F6620746865206D656E752E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleObject.MakeFromPtr(AppKitFramework.getdelegate(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setdelegate(id, if (value = nil, nil, value.id))
			  #endif
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E75206261722068656967687420666F7220746865206D61696E206D656E7520696E20706978656C732E2028726561642D6F6E6C79290A4E6F74653A20576F6E646572206966204170706C65206D65616E7320706F696E747320696E73746561642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getmenuBarHeight(id)
			  #endif
			End Get
		#tag EndGetter
		HenuBarHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E746C7920686967686C696768746564206974656D20696E20746865206D656E752E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleNSMenuItem.MakeFromPtr(gethighlightedItem(id))
			  #endif
			End Get
		#tag EndGetter
		HighlightedItem As AppleNSMenuItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E6720746865206D656E75206974656D7320696E20746865206D656E752E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr( getitemArray(id))
			  #endif
			End Get
		#tag EndGetter
		ItemArray As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSMenuDidAddItemNotification as text = "NSMenuDidAddItemNotification"
			  return mNSMenuDidAddItemNotification
			End Get
		#tag EndGetter
		Shared kNSMenuDidAddItemNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSMenuDidBeginTrackingNotification as text = "NSMenuDidBeginTrackingNotification"
			  return mNSMenuDidBeginTrackingNotification
			End Get
		#tag EndGetter
		Shared kNSMenuDidBeginTrackingNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSMenuDidChangeItemNotification as text = "NSMenuDidChangeItemNotification"
			  return mNSMenuDidChangeItemNotification
			End Get
		#tag EndGetter
		Shared kNSMenuDidChangeItemNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSMenuDidEndTrackingNotification as text = "NSMenuDidEndTrackingNotification"
			  return mNSMenuDidEndTrackingNotification
			End Get
		#tag EndGetter
		Shared kNSMenuDidEndTrackingNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSMenuDidRemoveItemNotification as text = "NSMenuDidRemoveItemNotification"
			  return mNSMenuDidRemoveItemNotification
			End Get
		#tag EndGetter
		Shared kNSMenuDidRemoveItemNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSMenuDidSendActionNotification as text = "NSMenuDidSendActionNotification"
			  return mNSMenuDidSendActionNotification
			End Get
		#tag EndGetter
		Shared kNSMenuDidSendActionNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSMenuWillSendActionNotification as text = "NSMenuWillSendActionNotification"
			  return mNSMenuWillSendActionNotification
			End Get
		#tag EndGetter
		Shared kNSMenuWillSendActionNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206D656E75206261722069732076697369626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getmenuBarVisible(classptr)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setmenuBarVisible ClassPtr, value
			  #endif
			End Set
		#tag EndSetter
		Shared MenuBarVisible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D207769647468206F6620746865206D656E7520696E2073637265656E20636F6F7264696E617465732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getminimumWidth(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setminimumWidth id, value
			  #endif
			End Set
		#tag EndSetter
		MinimumWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206D656E75206974656D7320696E20746865206D656E752C20696E636C7564696E6720736570617261746F72206974656D732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getnumberOfItems(id)
			  #endif
			End Get
		#tag EndGetter
		NumberOfItems As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617661696C61626C652070726F7065727469657320666F7220746865206D656E752E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return new AppleMenuProperties(getpropertiesToUpdate(id))
			  #endif
			End Get
		#tag EndGetter
		PropertiesToUpdate As AppleMenuProperties
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206D656E7520646973706C6179732074686520737461746520636F6C756D6E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getshowsStateColumn(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setshowsStateColumn id, value
			  #endif
			End Set
		#tag EndSetter
		ShowsStateColumn As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865206D656E7520696E2073637265656E20636F6F7264696E617465732028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return FoundationFrameWork.getSize (id)
			  #endif
			End Get
		#tag EndGetter
		Size As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706172656E74206D656E75207468617420636F6E7461696E7320746865206D656E752061732061207375626D656E752E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applemenu.MakeFromPtr(getsupermenu(id))
			  #endif
			End Get
		#tag EndGetter
		Supermenu As AppleMenu
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C65206F6620746865206D656E752E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getTitle(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setTitle id, value
			  #endif
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796F757420646972656374696F6E206F66206D656E75206974656D7320696E20746865206D656E752E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getuserInterfaceLayoutDirection(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setuserInterfaceLayoutDirection id, value
			  #endif
			End Set
		#tag EndSetter
		UserInterfaceLayoutdirection As Appkitframework.NSUserInterfaceLayoutdirection
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsContextMenuPlugIns"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoenablesItems"
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
			Name="HenuBarHeight"
			Group="Behavior"
			Type="Double"
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
			Name="MinimumWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfItems"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsStateColumn"
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
			Name="Title"
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
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
