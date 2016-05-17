#tag Class
Protected Class AppleCBPeripheralManager
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 5075626C69736865732061207365727669636520616E6420616E79206F6620697473206173736F6369617465642063686172616374657269737469637320616E642063686172616374657269737469632064657363726970746F727320746F20746865206C6F63616C20474154542064617461626173652E
		Sub AddService(Service as AppleCBMutableService)
		  AddService id, service.id
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub addService Lib CoreBluetoothLibName Selector "addService:" (id as ptr, service as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor(AlertIfPoweredOff as Boolean = false, RestoreIdentifier as text = "")
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  dim tempId as Ptr = init(alloc(classptr))
		  if AlertIfPoweredOff or not RestoreIdentifier.empty then
		    dim dict as new AppleMutableDictionary(2)
		    dict.setValue(kCBPeripheralManagerOptionShowPowerAlertKey, new AppleNumber(AlertIfPoweredOff))
		    dict.setValue(kCBPeripheralManagerOptionRestoreIdentifierKey, restoreIdentifier)
		    super.Constructor(AppleCBCentralManager.initWithDelegateOptions(Alloc(classptr), tempId, nil, dict.Id))
		  else
		    super.Constructor(AppleCBCentralManager.initWithDelegate(Alloc(classptr), tempId, nil))
		  end if
		  MHasownership = true
		  release tempid
		  if XojoControls = nil then XojoControls = new xojo.Core.Dictionary
		  CBPeripheralManagerDelegate = self
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getauthorizationStatus Lib CoreBluetoothLibName Selector "authorizationStatus" (id as ptr) As CBPeripheralManagerAuthorizationStatus
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getisAdvertising Lib CoreBluetoothLibName Selector "isAdvertising" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getstate Lib CoreBluetoothLibName Selector "state" (id as ptr) As CBPeripheralManagerState
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidDiscoverServices(pid as ptr, sel as ptr, peripheral as ptr, error as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidDiscoverServices (AppleCBPeripheral.MakeFromPtr(peripheral), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagercentraldidSubscribeToCharacteristic(pid as ptr, sel as ptr, manager as ptr, central as ptr, characteristic as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnperipheralManagercentraldidSubscribeToCharacteristic (applecbcentral.MakefromPtr(central), applecbcharacteristic.MakefromPtr(characteristic))
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagercentraldidUnsubscribeFromCharacteristic(pid as ptr, sel as ptr, manager as ptr, central as ptr, characteristic as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnperipheralManagercentraldidUnSubscribefromCharacteristic (applecbcentral.MakefromPtr(central), applecbcharacteristic.MakefromPtr(characteristic))
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagerdidAddService(pid as ptr, sel as ptr, manager as ptr, service as ptr, error as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheralManagerDidAddService (AppleCBService.MakefromPtr(service), AppleError.MakefromPtr(error))
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagerdidReceiveReadRequest(pid as ptr, sel as ptr, manager as ptr, request as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheralManagerdidReceiveReadRequest (AppleCBATTRequest.MakeFromPtr(request))
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagerdidReceiveWriteRequest(pid as ptr, sel as ptr, manager as ptr, request as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheralManagerdidReceiveWriteRequest (AppleCBATTRequest.MakeFromPtr(request))
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagerDidStartAdvertising(pid as ptr, sel as ptr,  manager as ptr, error as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheralDidStartAdvertising (appleerror.MakefromPtr(error))
		  #pragma unused sel
		  #pragma unused manager
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagerDidUpdateState(pid as ptr, sel as ptr, manager as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheralManagerDidUpdateState 
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagerIsReadyToUpdateSubscribers(pid as ptr, sel as ptr, manager as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheralManagerIsReadyToUpdateSubscribers
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralManagerwillRestoreState(pid as ptr, sel as ptr, manager as ptr, state as ptr)
		  dim cm as AppleCBPeripheralManager = AppleCBPeripheralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheralManagerwillRestoreState (AppleDictionary.MakeFromPtr(state))
		  #pragma unused manager
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverServices(Peripheral as AppleCBPeripheral, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidDiscoverServices(Peripheral, error)
		  else
		    RaiseEvent PeripheralDiscoveredServices (Peripheral, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralDidStartAdvertising(error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralDidStartAdvertising(error)
		  else
		    RaiseEvent StartedAdvertising (error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralManagercentraldidSubscribeToCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
		  if parentcontrol <> nil then
		    parentcontrol.informOnperipheralManagercentraldidSubscribeToCharacteristic(central, characteristic)
		  else
		    RaiseEvent SubscribedToCharacteristic (central, characteristic)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralManagercentraldidUnSubscribefromCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
		  if parentcontrol <> nil then
		    parentcontrol.informOnperipheralManagercentraldidUnSubscribefromCharacteristic(central, characteristic)
		  else
		    RaiseEvent UnsubscribedFromCharacteristic (central, characteristic)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerDidAddService(Service as AppleCBService, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralManagerDidAddService(Service, error)
		  else
		    RaiseEvent ServiceAdded (Service, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerdidReceiveReadRequest(Request as AppleCBATTRequest)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralManagerdidReceiveReadRequest(Request)
		  else
		    RaiseEvent ReadRequest (Request)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerdidReceiveWriteRequest(Request as AppleCBATTRequest)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralManagerdidReceiveWriteRequest(Request)
		  else
		    RaiseEvent WriteRequest (Request)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerDidUpdateState()
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralManagerDidUpdateState
		  else
		    RaiseEvent StateChanged
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerIsReadyToUpdateSubscribers()
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralManagerIsReadyToUpdateSubscribers
		  else
		    RaiseEvent ReadyToUpdateSubscribers
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerwillRestoreState(StateDictionary as AppleDictionary)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralManagerwillRestoreState(Statedictionary)
		  else
		    RaiseEvent WillRestoreState (Statedictionary)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCBPeripheralManager
		  return if (aptr = nil, nil, new AppleCBPeripheralManager(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A205468652075736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As OSXLibCBPeripheralManager
		  dim  wr as xojo.core.weakref = XojoControls.Lookup (id, nil)  
		  return if (wr = nil, nil,  OSXLibCBPeripheralManager(wr.Value))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RegisterControl(ParentControl As control)
		  XojoControls.Value (id) = xojo.core.WeakRef.Create(ParentControl)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C207075626C69736865642073657276696365732066726F6D20746865206C6F63616C20474154542064617461626173652E
		Sub RemoveAllServices()
		  removeAllServices id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub removeAllServices Lib CoreBluetoothLibName Selector "removeAllServices" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RemoveControl()
		  XojoControls.Remove (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573206120737065636966696564207075626C697368656420736572766963652066726F6D20746865206C6F63616C20474154542064617461626173652E
		Sub RemoveService(Service as AppleCBMutableService)
		  removeService id, service.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub removeService Lib CoreBluetoothLibName Selector "removeService:" (id as ptr, service as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526573706F6E647320746F20612072656164206F7220777269746520726571756573742066726F6D206120636F6E6E65637465642063656E7472616C2E
		Sub RespondToRequest(Request as AppleCBATTRequest, result as CoreBluetoothFramework.CBATTError)
		  respondToRequest id, request.id, result
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub respondToRequest Lib CoreBluetoothLibName Selector "respondToRequest:withResult:" (id as ptr, request as ptr, result as CoreBluetoothFramework . CBATTError)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206465736972656420636F6E6E656374696F6E206C6174656E637920666F7220616E206578697374696E6720636F6E6E656374696F6E20746F20612063656E7472616C206465766963652E
		Sub SetDesiredConnectionLatency(ForCentral as AppleCBCentral, latency as CBPeripheralManagerConnectionLatency)
		  setDesiredConnectionLatency id, latency, ForCentral.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setDesiredConnectionLatency Lib CoreBluetoothLibName Selector "setDesiredConnectionLatency:forCentral:" (id as ptr, latency as CBPeripheralManagerConnectionLatency, forCentral as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 41647665727469736573207065726970686572616C206D616E6167657220646174612E
		Sub StartAdvertising(AdvertisementData As AppleDictionary = nil)
		  StartAdvertising id, if(AdvertisementData = nil, nil, AdvertisementData.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub startAdvertising Lib CoreBluetoothLibName Selector "startAdvertising:" (id as ptr, Data as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F64207768656E20796F75206E6F206C6F6E6765722077616E7420746F20616476657274697365207065726970686572616C206D616E6167657220646174612E
		Sub StopAdvertising()
		  stopAdvertising id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub stopAdvertising Lib CoreBluetoothLibName Selector "stopAdvertising" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53656E647320616E20757064617465642063686172616374657269737469632076616C756520746F206F6E65206F72206D6F726520737562736372696265642063656E7472616C732C207669612061206E6F74696669636174696F6E206F7220696E6469636174696F6E2E2052657475726E732073656E6420737563636573732E
		Function UpdateValue(Characteristic as AppleCBMutableCharacteristic, subscribedCentrals as AppleArray = nil, value as AppleData) As Boolean
		  return updateValue(id, value.id, Characteristic.id, if (subscribedCentrals = nil, nil, subscribedCentrals.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function updateValue Lib CoreBluetoothLibName Selector "updateValue:forCharacteristic:onSubscribedCentrals:" (id as ptr, value as ptr, charaacteristic as ptr, centrals as ptr) As Boolean
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event PeripheralDiscoveredServices(Peripheral as AppleCBPeripheral, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ReadRequest(Request as AppleCBATTRequest)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event ReadyToUpdateSubscribers()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ServiceAdded(Service as AppleCBService, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event StartedAdvertising(error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event StateChanged()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event SubscribedToCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event UnsubscribedFromCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event WillRestoreState(StateDictionary as appledictionary)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WriteRequest(Request as AppleCBATTRequest)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732074686520617070E280997320617574686F72697A6174696F6E2073746174757320666F722073686172696E672064617461207768696C6520696E20746865206261636B67726F756E642073746174652E
		#tag Getter
			Get
			  return getauthorizationStatus (classptr)
			End Get
		#tag EndGetter
		Shared AuthorizationStatus As CBPeripheralManagerAuthorizationStatus
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(AppKitFramework.getdelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdelegate(id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		CBPeripheralManagerDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  // static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBCentralManager")
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    //CBPeripheralManager Delegate Protocol:
			    methods.Append new TargetClassMethodHelper("peripheralManagerDidUpdateState:", AddressOf impl_peripheralManagerDidUpdateState, "v@:@")
			    methods.Append new TargetClassMethodHelper("peripheralManager:willRestoreState:", AddressOf impl_peripheralManagerwillRestoreState, "v@:@@")
			    methods.Append new TargetClassMethodHelper("peripheralManager:didAddService:error:", AddressOf impl_peripheralManagerdidAddService, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheralManagerDidStartAdvertising:error:", AddressOf impl_peripheralManagerDidStartAdvertising, "v@:@@")
			    methods.Append new TargetClassMethodHelper("peripheralManager:central:didSubscribeToCharacteristic:", AddressOf impl_peripheralManagercentraldidSubscribeToCharacteristic, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheralManager:central:didUnsubscribeFromCharacteristic:", AddressOf impl_peripheralManagercentraldidUnsubscribeFromCharacteristic, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheralManagerIsReadyToUpdateSubscribers:", AddressOf impl_peripheralManagerIsReadyToUpdateSubscribers, "v@:@")
			    methods.Append new TargetClassMethodHelper("peripheralManager:didReceiveReadRequest:", AddressOf impl_peripheralManagerdidReceiveReadRequest, "v@:@@")
			    methods.Append new TargetClassMethodHelper("peripheralManager:didReceiveWriteRequest:", AddressOf impl_peripheralManagerdidReceiveWriteRequest, "v@:@@")
			    //CBPeripheral Delegate Protocol:
			    methods.Append new TargetClassMethodHelper("peripheral:didDiscoverServices:", AddressOf impl_PeripheraldidDiscoverServices, "v@:@@")
			    
			    mClassPtr = BuildTargetClass ("CBPeripheralManager", "OSXLibCBPeripheralManager",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207065726970686572616C2069732063757272656E746C79206164766572746973696E6720646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getisAdvertising (id)
			End Get
		#tag EndGetter
		IsAdvertising As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBPeripheralManagerOptionRestoreIdentifierKey as text = SystemConstantName("CBPeripheralManagerOptionRestoreIdentifierKey", CoreBluetoothPath)
			  return mCBPeripheralManagerOptionRestoreIdentifierKey
			End Get
		#tag EndGetter
		Private Shared kCBPeripheralManagerOptionRestoreIdentifierKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBPeripheralManagerOptionShowPowerAlertKey as text = SystemConstantName("CBPeripheralManagerOptionShowPowerAlertKey", CoreBluetoothPath)
			  return mCBPeripheralManagerOptionShowPowerAlertKey
			End Get
		#tag EndGetter
		Private Shared kCBPeripheralManagerOptionShowPowerAlertKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBPeripheralManagerRestoredStateAdvertisementDataKey as text = SystemConstantName("CBPeripheralManagerRestoredStateAdvertisementDataKey", CoreBluetoothPath)
			  return mCBPeripheralManagerRestoredStateAdvertisementDataKey
			End Get
		#tag EndGetter
		Private Shared kCBPeripheralManagerRestoredStateAdvertisementDataKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBPeripheralManagerRestoredStateServicesKey as text = SystemConstantName("CBPeripheralManagerRestoredStateServicesKey", CoreBluetoothPath)
			  return mCBPeripheralManagerRestoredStateServicesKey
			End Get
		#tag EndGetter
		Private Shared kCBPeripheralManagerRestoredStateServicesKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207374617465206F6620746865207065726970686572616C206D616E616765722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getstate(id)
			End Get
		#tag EndGetter
		State As CBPeripheralManagerState
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared XojoControls As xojo.Core.Dictionary
	#tag EndProperty


	#tag Enum, Name = CBPeripheralManagerAuthorizationStatus, Type = Integer, Flags = &h0
		NotDetermined
		  Restricted
		  Denied
		Authorized
	#tag EndEnum

	#tag Enum, Name = CBPeripheralManagerConnectionLatency, Type = Integer, Flags = &h0
		Low
		  Medium
		High
	#tag EndEnum

	#tag Enum, Name = CBPeripheralManagerState, Type = Integer, Flags = &h0
		Unknown
		  Resetting
		  Unsupported
		  Unauthorized
		  PoweredOff
		PoweredOn
	#tag EndEnum


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
			Name="IsAdvertising"
			Group="Behavior"
			Type="Boolean"
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
			Type="CBPeripheralManagerState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unknown"
				"1 - Resetting"
				"2 - Unsupported"
				"3 - Unauthorized"
				"4 - PoweredOff"
				"5 - PoweredOn"
			#tag EndEnumValues
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
