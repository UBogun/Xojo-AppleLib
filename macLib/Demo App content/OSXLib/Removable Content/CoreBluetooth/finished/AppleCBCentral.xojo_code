#tag Class
Protected Class AppleCBCentral
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getmaximumUpdateValueLength Lib CoreBluetoothLibName Selector "maximumUpdateValueLength" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCBCentral
		  return if (aptr = nil, nil, new AppleCBCentral(aPtr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBCentral")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055554944206173736F6369617465642077697468207468652063656E7472616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleUUID.MakefromPtr(AppleCBPeripheral.getidentifier(id))
			  #endif
			End Get
		#tag EndGetter
		Identifier As AppleUUID
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20616D6F756E74206F6620646174612C20696E2062797465732C2074686174207468652063656E7472616C2063616E207265636569766520696E20612073696E676C65206E6F74696669636174696F6E206F7220696E6469636174696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getmaximumUpdateValueLength (id)
			  #endif
			End Get
		#tag EndGetter
		MaximumUpdateValueLength As Uinteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055554944206F66207468652063656E7472616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleUUID.MakeFromPtr(CoreBluetoothFramework.getuuid(id))
			  #endif
			End Get
		#tag EndGetter
		UUID As AppleUUID
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumUpdateValueLength"
			Group="Behavior"
			Type="Uinteger"
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
