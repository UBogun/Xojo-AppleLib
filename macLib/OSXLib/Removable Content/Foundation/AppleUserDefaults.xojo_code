#tag Class
Protected Class AppleUserDefaults
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 496E7365727473207468652073706563696669656420646F6D61696E206E616D6520696E746F20746865207265636569766572E280997320736561726368206C6973742E
		Sub AddSuite(SuiteName as CFStringRef)
		  addSuiteNamed id, SuiteName
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addSuiteNamed Lib FoundationLibName Selector "addSuiteNamed:" (id as ptr, suitename as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206172726179206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function ArrayValue(Key as CFStringRef) As AppleArray
		  return AppleArray.MakeFromPtr(getarrayforkey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AttachNotificationCenter()
		  dim ChangeBlock as new AppleBlock (addressof DefaultsChangeBlock)
		  NotificationObjects.Append AppleNotificationCenter.AddObserver (NSUserDefaultsDidChangeNotification, id, AppleOperationQueue.MainQueue, ChangeBlock.Handle)
		  dim AppleOwnerwindow as  AppleWindow = AppleResponder.getOwnerAppleWindow(me)
		  if AppleOwnerwindow <> nil then
		    NotificationObjects.Append AppleNotificationCenter.AddObserver ("NSWindowWillCloseNotification", AppleOwnerwindow, _
		    AppleOperationQueue.MainQueue, new appleblock (Addressof informonWindowWillClose))
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520426F6F6C65616E2076616C7565206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function BooleanValue(Key as CFStringRef) As Boolean
		  return getboolForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520426F6F6C65616E2076616C7565206173736F63696174656420776974682074686520737065636966696564206B65792E
		Sub BooleanValue(Key as CFStringRef, assigns value as boolean)
		  setboolForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E535573657244656661756C7473206F626A65637420696E697469616C697A65642077697468207468652064656661756C747320666F72207468652063757272656E742075736572206163636F756E742E
		Sub Constructor()
		  super.Constructor(StandardUserDefaults.id, true, true)
		  xojo.core.timer.CallLater 1, addressof raiseopen
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E535573657244656661756C7473206F626A65637420696E697469616C697A65642077697468207468652064656661756C747320666F722074686520737065636966696564206170702067726F75702E
		Sub Constructor(SuiteName as cfstringref)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  super.Constructor(initWithSuiteName(alloc(classptr), SuiteName), true)
		  xojo.core.timer.CallLater 1, addressof raiseopen
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E5344617461206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function DataValue(Key as CFStringRef) As AppleData
		  return Appledata.MakeFromPtr(getdataForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub DefaultsChangeBlock(Notificationptr as ptr)
		  if me <> nil then RaiseEvent DefaultsChanged ()
		  #pragma unused Notificationptr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064696374696F6E617279206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function DictionaryValue(Key as CFStringRef) As AppleDictionary
		  return AppleDictionary.MakeFromPtr(getdictionaryForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520646F75626C652076616C7565206173736F63696174656420776974682074686520737065636966696564206B65792E2E
		Function DoubleValue(Key as CFStringRef) As Double
		  return getdoubleForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F6620746865207370656369666965642064656661756C74206B657920746F2074686520646F75626C652076616C75652E
		Sub DoubleValue(Key as CFStringRef,  assigns value as double)
		  setdoubleForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getarrayForKey Lib FoundationLibName Selector "arrayForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getboolForKey Lib FoundationLibName Selector "boolForKey:" (id as ptr, key as CFStringRef) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdataForKey Lib FoundationLibName Selector "dataForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdictionaryForKey Lib FoundationLibName Selector "dictionaryForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdictionaryRepresentation Lib FoundationLibName Selector "dictionaryRepresentation" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdoubleForKey Lib FoundationLibName Selector "doubleForKey:" (id as ptr, key as CFStringRef) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getfloatForKey Lib FoundationLibName Selector "floatForKey:" (id as ptr, key as CFStringRef) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getintegerForKey Lib FoundationLibName Selector "integerForKey:" (id as ptr, key as CFStringRef) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectForKey Lib FoundationLibName Selector "objectForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectIsForcedForKey Lib FoundationLibName Selector "objectIsForcedForKey:" (id as ptr, key as CFStringRef) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectIsForcedForKeyInDomain Lib FoundationLibName Selector "objectIsForcedForKey:inDomain:" (id as ptr, key as CFStringRef, domainname as cfstringref) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpersistentDomainForName Lib FoundationLibName Selector "persistentDomainForName:" (id as ptr, name as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getStandardUserDefaults Lib FoundationLibName Selector "standardUserDefaults" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getstringArrayForKey Lib FoundationLibName Selector "stringArrayForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getstringForKey Lib FoundationLibName Selector "stringForKey:" (id as ptr, key as CFStringRef) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLForKey Lib FoundationLibName Selector "URLForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getvolatileDomainForName Lib FoundationLibName Selector "volatileDomainForName:" (id as ptr, domainname as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getvolatileDomainNames Lib FoundationLibName Selector "volatileDomainNames" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWindowWillClose()
		  RaiseEvent Close
		  RemoveNotifications
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithSuiteName Lib FoundationLibName Selector "initWithSuiteName:" (id as ptr, SUitename as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E74656765722076616C7565206173736F63696174656420776974682074686520737065636966696564206B65792E2E
		Function IntegerValue(Key as CFStringRef) As Integer
		  return getintegerForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F6620746865207370656369666965642064656661756C74206B657920746F207468652073706563696669656420696E74656765722076616C75652E
		Sub IntegerValue(Key as CFStringRef, assigns value as integer)
		  setintegerForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520737065636966696564206B6579206973206D616E6167656420627920616E2061646D696E6973747261746F722E
		Function KeyIsManagedByAdmin(Key as CFStringRef) As Boolean
		  return getobjectIsForcedForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865206B657920696E207468652073706563696669656420646F6D61696E206973206D616E6167656420627920616E2061646D696E6973747261746F722E
		Function KeyIsManagedByAdmin(Key as CFStringRef, DomainName as CFStringRef) As Boolean
		  return getobjectIsForcedForKeyinDomain (id, key, domainName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206F626A656374206173736F636961746564207769746820746865206669727374206F6363757272656E6365206F6620746865207370656369666965642064656661756C742E
		Function ObjectValue(Key as CFStringRef) As AppleObject
		  return AppleObject.MakeFromPtr(getobjectForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F6620746865207370656369666965642064656661756C74206B657920696E20746865207374616E64617264206170706C69636174696F6E20646F6D61696E2E
		Sub ObjectValue(Key as CFStringRef, value as AppleGeneralObject)
		  setobjectForKey(id, if (value = nil, nil, value.GeneralID), key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612064696374696F6E61727920636F6E7461696E696E6720746865206B65797320616E642076616C75657320696E20746865207370656369666965642070657273697374656E7420646F6D61696E2E
		Function PersistentDomain(DomainName as CFStringRef) As AppleDictionary
		  return AppleDictionary.MakeFromPtr(getpersistentDomainForName (id, DomainName))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652064696374696F6E61727920666F7220746865207370656369666965642070657273697374656E7420646F6D61696E2E
		Sub PersistentDomain(DomainName as CFStringRef, assigns value as AppleDictionary)
		  setpersistentDomain (id, if (value = nil, nil, value.id), DomainName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub raiseopen()
		  RaiseEvent open
		  AttachNotificationCenter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416464732074686520636F6E74656E7473206F6620746865207370656369666965642064696374696F6E61727920746F2074686520726567697374726174696F6E20646F6D61696E2E
		Sub RegisterDefaults(Defaults As AppleDictionary)
		  registerDefaults (id, Defaults.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub registerDefaults Lib FoundationLibName Selector "registerDefaults:" (id as ptr, Dict as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub RemoveNotifications()
		  for each o as AppleNotificationObject in NotificationObjects
		    AppleNotificationCenter.RemoveObserver o
		  next
		  redim NotificationObjects(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652076616C7565206F6620746865207370656369666965642064656661756C74206B657920696E20746865207374616E64617264206170706C69636174696F6E20646F6D61696E2E
		Sub RemoveObject(Key as CFStringRef)
		  RemoveObjectForKey (id, key)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeObjectForKey Lib FoundationLibName Selector "removeObjectForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemovePersistentDomain(DomainName as CFStringRef)
		  removepersistentDomainForName (id, DomainName)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removePersistentDomainForName Lib FoundationLibName Selector "removePersistentDomainForName:" (id as ptr, name as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420646F6D61696E206E616D652066726F6D20746865207265636569766572E280997320736561726368206C6973742E
		Sub RemoveSuite(SuiteName as CFStringRef)
		  removeSuiteNamed id, SuiteName
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeSuiteNamed Lib FoundationLibName Selector "removeSuiteNamed:" (id as ptr, suitename as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420766F6C6174696C6520646F6D61696E2066726F6D207468652075736572E28099732064656661756C74732E
		Sub RemoveVolatileDomain(DomainName as CFStringRef)
		  removeVolatileDomainForName (id, DomainName)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeVolatileDomainForName Lib FoundationLibName Selector "removeVolatileDomainForName:" (id as ptr, Domainname as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Sub ResetStandardDefaults()
		  resetStandardUserDefaults (classptr)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub resetStandardUserDefaults Lib FoundationLibName Selector "resetStandardUserDefaults" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setboolForKey Lib FoundationLibName Selector "setBool:forKey:" (id as ptr, value as boolean, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setdoubleForKey Lib FoundationLibName Selector "setdouble:forKey:" (id as ptr, value as double, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setfloatForKey Lib FoundationLibName Selector "setFloat:forKey:" (id as ptr, value as single, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setintegerForKey Lib FoundationLibName Selector "setInteger:forKey:" (id as ptr, value as integer, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setobjectForKey Lib FoundationLibName Selector "setObject:forKey:" (id as ptr, value as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setPersistentDomain Lib FoundationLibName Selector "setPersistentDomain:forName:" (id as ptr, value as ptr, name as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setstringForKey Lib FoundationLibName Selector "setObject:forKey:" (id as ptr, value as cfstringref, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setURLForKey Lib FoundationLibName Selector "setURL:forKey:" (id as ptr, value as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setVolatileDomain Lib FoundationLibName Selector "setVolatileDomain:forName:" (id as ptr, domain as ptr, Domainname as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666C6F6174696E672D706F696E742076616C7565206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function SingleValue(Key as CFStringRef) As Single
		  return getfloatForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F6620746865207370656369666965642064656661756C74206B657920746F207468652073706563696669656420666C6F6174696E672D706F696E742076616C75652E
		Sub SingleValue(Key as CFStringRef, assigns value as single)
		  setfloatForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206172726179206F6620737472696E6773206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function StringArrayValue(Key as CFStringRef) As AppleArray
		  return AppleArray.MakeFromPtr(getstringArrayForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57726974657320616E79206D6F64696669636174696F6E7320746F207468652070657273697374656E7420646F6D61696E7320746F206469736B20616E64207570646174657320616C6C20756E6D6F6469666965642070657273697374656E7420646F6D61696E7320746F2077686174206973206F6E206469736B2E2052657475726E732074686520737563636573732E20557375616C6C7920756E6E656365737361727920746F2063616C6C2062656361757365207468652044656661756C747343656E7465722073796E6368726F6E697A657320726567756C61726C79206175746F6D61746963616C6C792E
		Function Synchronize() As Boolean
		  return synchronize (id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function synchronize Lib FoundationLibName Selector "synchronize" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520737472696E67206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function TextValue(Key as CFStringRef) As Text
		  return getstringForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextValue(Key as CFStringRef, assigns value as cfstringref)
		  setstringForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E5355524C20696E7374616E6365206173736F63696174656420776974682074686520737065636966696564206B65792E
		Function URLValue(Key as CFStringRef) As AppleURL
		  return AppleURL.MakeFromPtr(getURLForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F6620746865207370656369666965642064656661756C74206B657920746F20746865207370656369666965642055524C2E
		Sub URLValue(Key as CFStringRef, assigns Value as AppleURL)
		  setURLForKey(id, if (value = nil, nil, value.id), key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064696374696F6E61727920666F72207468652073706563696669656420766F6C6174696C6520646F6D61696E2E
		Function VolatileDomain(DomainName as CFStringRef) As AppleDictionary
		  return AppleDictionary.MakeFromPtr (getvolatileDomainForName (id, DomainName))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652064696374696F6E61727920666F72207468652073706563696669656420766F6C6174696C6520646F6D61696E2E
		Sub VolatileDomain(DomainName as CFStringRef, assigns value as AppleDictionary)
		  setVolatileDomain (id, if (value = nil, nil, value.id),DomainName)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206368616E6765206973206D61646520746F2064656661756C747320696E20612070657273697374656E7420646F6D61696E2E
		Event DefaultsChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Note, Name = Status Completed
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSUserDefaults")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E617279207468617420636F6E7461696E73206120756E696F6E206F6620616C6C206B65792D76616C756520706169727320696E2074686520646F6D61696E7320696E2074686520736561726368206C6973742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.makefromptr (getdictionaryRepresentation(id))
			End Get
		#tag EndGetter
		DictionaryRepresentation As AppleDictionary
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private hasInited As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NotificationObjects() As AppleNotificationObject
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new AppleUserDefaults (getStandardUserDefaults(classptr))
			  result.RetainClassObject
			  return result
			End Get
		#tag EndGetter
		Shared StandardUserDefaults As AppleUserDefaults
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E7420766F6C6174696C6520646F6D61696E206E616D65732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getvolatileDomainNames (id))
			End Get
		#tag EndGetter
		VolatileDomainNames As AppleArray
	#tag EndComputedProperty


	#tag Constant, Name = NSArgumentDomain, Type = Text, Dynamic = False, Default = \"NSArgumentDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSGlobalDomain, Type = Text, Dynamic = False, Default = \"NSGlobalDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSRegistrationDomain, Type = Text, Dynamic = False, Default = \"NSRegistrationDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSUserDefaultsDidChangeNotification, Type = Text, Dynamic = False, Default = \"NSUserDefaultsDidChangeNotification", Scope = Private
	#tag EndConstant


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
