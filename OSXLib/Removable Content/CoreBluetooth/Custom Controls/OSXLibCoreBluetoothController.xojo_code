#tag Class
Protected Class OSXLibCoreBluetoothController
Inherits OSXLibCBCentralManager
	#tag Event
		Sub Close()
		  raiseevent close
		  for each entry as xojo.Core.DictionaryEntry in ConnectedPeripherals
		    dim p as AppleCBPeripheral = entry.Value
		    p.PeripheralDelegate = nil
		  next 
		  mConnectedPeripherals.RemoveAll
		  AppleObject.CBCentralManagerDelegate = nil
		  mPeripheralManager.Removecontrol 
		  mPeripheralManager = nil
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub CreatePane()
		  mConnectedPeripherals= new xojo.Core.Dictionary
		  mPeripheralManager = new AppleCBPeripheralManagerForControl
		  mPeripheralManager.registerControl self
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 5075626C69736865732061207365727669636520616E6420616E79206F6620697473206173736F6369617465642063686172616374657269737469637320616E642063686172616374657269737469632064657363726970746F727320746F20746865206C6F63616C20474154542064617461626173652E
		Sub AddService(Service as AppleCBMutableService)
		  PeripheralManager.AddService service
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 45737461626C69736865732061206C6F63616C20636F6E6E656374696F6E20746F2061207065726970686572616C2E0A5468652073797374656D2073686F756C6420646973706C6179206120646973636F6E6E656374696F6E20616C65727420666F72206120676976656E207065726970686572616C20696620746865206170702069732073757370656E646564206174207468652074696D65206F662074686520646973636F6E6E656374696F6E20696620796F75207061737320547275652E0A53657473207468652064656C6567617465206F6620746865207065726970686572616C20746F2073656C6620616E64206164647320746865207065726970686572616C20746F2074686520636F6E6E65637465645065726970686572616C732064696374696F6E61727920746F206175746F2D72656D6F766520616E792064656C6567617465206C696E6B73206F6E2074686520636C6F7365206576656E74206175746F6D61746963616C6C792E
		Sub Connect(Peripheral As AppleCBPeripheral, NotifyOnDisconnect as boolean = false)
		  ConnectedPeripherals.Value(Peripheral)= Peripheral
		  Peripheral.PeripheralDelegate = me.AppleObject
		  AppleObject.Connect (Peripheral, NotifyOnDisconnect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061206C6F63616C20636F6E6E656374696F6E2066726F6D2061207065726970686572616C20616E64207365747320746865207065726970686572616CE28099732064656C656761746520746F204E696C2C2072656D6F76696E672069742066726F6D2074686520636F6E6E65637465645065726970686572616C732064696374696F6E6172792E
		Sub Disconnect(Peripheral As AppleCBPeripheral)
		  AppleObject.Disconnect(peripheral)
		  Peripheral.PeripheralDelegate = nil
		  ConnectedPeripherals.Remove(Peripheral)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C207075626C69736865642073657276696365732066726F6D20746865206C6F63616C20474154542064617461626173652E
		Sub RemoveAllServices()
		  PeripheralManager.removeAllServices
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573206120737065636966696564207075626C697368656420736572766963652066726F6D20746865206C6F63616C20474154542064617461626173652E
		Sub RemoveService(Service as AppleCBMutableService)
		  PeripheralManager.removeService  service
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573706F6E647320746F20612072656164206F7220777269746520726571756573742066726F6D206120636F6E6E65637465642063656E7472616C2E
		Sub RespondToRequest(Request as AppleCBATTRequest, result as CoreBluetoothFramework.CBATTError)
		  PeripheralManager.respondToRequest request, result
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206C697374206F6620746865207065726970686572616C732028636F6E7461696E696E6720616E79206F662074686520737065636966696564207365727669636573292063757272656E746C7920636F6E6E656374656420746F207468652073797374656D2E
		Function RetrieveConnectedPeripherals(Paramarray PeripheralServiceCBUUIDs() as AppleCBUUID) As AppleCBPeripheral()
		  dim ApArray as  AppleMutableArray=AppleMutableArray.fromAppleObjects(PeripheralServiceCBUUIDs)
		  dim result as AppleArray = me.AppleObject.RetrieveConnectedPeripherals(ApArray)
		  return result.CBPeripheralsToXojoArray
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363616E7320666F72207065726970686572616C73207468617420617265206164766572746973696E672073657276696365732E200A5065726970686572616C4342555549447320697320616E206172726179206F6620434255554944206F626A656374732074686174207468652061707020697320696E746572657374656420696E2E20496E207468697320636173652C206561636820434255554944206F626A65637420726570726573656E7473207468652055554944206F662061207365727669636520746861742061207065726970686572616C206973206164766572746973696E672E0A416C6C6F774475706C6963617465732064697361626C65732066696C746572696E6720616E64206120646973636F76657279206576656E742069732067656E65726174656420656163682074696D65207468652063656E7472616C20726563656976657320616E206164766572746973696E67207061636B65742C206E6F74206F6E6C79207468652066697273742074696D652E0A536572766963654342555549447320697320616E20617272617920206F662073657276696365205555494473207468617420796F752077616E7420746F207363616E20666F722E2053706563696679696E672074686973207363616E206F7074696F6E20636175736573207468652063656E7472616C206D616E6167657220746F20616C736F207363616E20666F72207065726970686572616C7320736F6C69636974696E6720616E79206F662074686520736572766963657320636F6E7461696E656420696E207468652061727261792E
		Sub Scan(PeripheralCBUUIDs() as appleCBuuid =nil, allowDuplicates as Boolean, ServiceCBUUIDs() as applecbuuid = nil)
		  AppleObject.Scan (PeripheralCBUUIDs.toAppleArray, allowDuplicates, ServiceCBUUIDs.toAppleArray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206465736972656420636F6E6E656374696F6E206C6174656E637920666F7220616E206578697374696E6720636F6E6E656374696F6E20746F20612063656E7472616C206465766963652E
		Sub SetDesiredConnectionLatency(ForCentral as AppleCBCentral, latency as AppleCBPeripheralManagerforControl.CBPeripheralManagerConnectionLatency)
		  me.PeripheralManager.SetConnectionLatency  (forcentral, latency)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41647665727469736573207065726970686572616C206D616E6167657220646174612E
		Sub StartAdvertising(AdvertisementData As AppleDictionary = nil)
		  PeripheralManager.StartAdvertising AdvertisementData
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F64207768656E20796F75206E6F206C6F6E6765722077616E7420746F20616476657274697365207065726970686572616C206D616E6167657220646174612E
		Sub StopAdvertising()
		  PeripheralManager.stopAdvertising
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F7073207363616E6E696E6720666F72207065726970686572616C732E
		Sub StopScan()
		  AppleObject.StopScan
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53656E647320616E20757064617465642063686172616374657269737469632076616C756520746F206F6E65206F72206D6F726520737562736372696265642063656E7472616C732C207669612061206E6F74696669636174696F6E206F7220696E6469636174696F6E2E2052657475726E732073656E6420737563636573732E
		Function UpdateValue(Characteristic as AppleCBMutableCharacteristic, subscribedCentrals as AppleArray = nil, value as AppleData) As Boolean
		  return  PeripheralManager.updateValue( Characteristic,nil, value)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.State
			End Get
		#tag EndGetter
		CentralManagerState As AppleCBCentralManager.CBCentralManagerState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mConnectedPeripherals
			End Get
		#tag EndGetter
		ConnectedPeripherals As xojo.Core.Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207065726970686572616C206D616E616765722069732063757272656E746C79206164766572746973696E6720646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return PeripheralManager.IsAdvertising
			End Get
		#tag EndGetter
		IsAdvertising As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mConnectedPeripherals As xojo.Core.Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPeripheralManager As AppleCBPeripheralManagerForControl
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mPeripheralManager
			End Get
		#tag EndGetter
		PeripheralManager As AppleCBPeripheralManagerForControl
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207374617465206F6620746865207065726970686572616C206D616E616765722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return PeripheralManager.State
			End Get
		#tag EndGetter
		PeripheralManagerState As AppleCBPeripheralManagerforControl.CBPeripheralManagerState
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CentralManagerState"
			Group="Behavior"
			Type="AppleCBCentralManager.CBCentralManagerState"
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
			Name="Handle"
			Group="Behavior"
			InitialValue="0"
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
			Name="MouseX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MouseY"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PeripheralManagerState"
			Group="Behavior"
			Type="AppleCBPeripheralManagerforControl.CBPeripheralManagerState"
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
			Name="State"
			Group="Behavior"
			Type="applecbcentralmanager.CBCentralManagerState"
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
			Name="TabPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Window"
			Group="Behavior"
			InitialValue="0"
			Type="Window"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mInitialParent"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mWindow"
			Group="Behavior"
			InitialValue="0"
			Type="Window"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
