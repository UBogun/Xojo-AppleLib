#tag Class
Protected Class AppleCBService
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcharacteristics Lib CoreBluetoothLibName Selector "characteristics" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getincludedServices Lib CoreBluetoothLibName Selector "includedServices" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisPrimary Lib CoreBluetoothLibName Selector "isPrimary" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getperipheral Lib CoreBluetoothLibName Selector "peripheral" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCBService
		  return if (aptr = nil, nil, new AppleCBService(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F662063686172616374657269737469637320746861742068617665206265656E20646973636F766572656420696E207468697320736572766963652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(getcharacteristics(id))
			  #endif
			End Get
		#tag EndGetter
		Characteristics As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBService")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F6620696E636C7564656420736572766963657320746861742068617665206265656E20646973636F766572656420696E207468697320736572766963652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(getincludedServices(id))
			  #endif
			End Get
		#tag EndGetter
		IncludedServices As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520696E6469636174696E672077686574686572207468652074797065206F662073657276696365206973207072696D617279206F72207365636F6E646172792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisPrimary (id)
			  #endif
			End Get
		#tag EndGetter
		IsPrimary As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207065726970686572616C20746F207768696368207468697320736572766963652062656C6F6E67732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCBPeripheral.MakeFromPtr(Getperipheral(id))
			  #endif
			End Get
		#tag EndGetter
		Peripheral As AppleCBPeripheral
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520426C7565746F6F74682D73706563696669632055554944206F662074686520736572766963652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCBUUID.MakeFromPtr(CoreBluetoothFramework.getuuid(id))
			  #endif
			End Get
		#tag EndGetter
		UUID As AppleCBUUID
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsPrimary"
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
