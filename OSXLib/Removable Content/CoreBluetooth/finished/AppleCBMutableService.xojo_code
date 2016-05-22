#tag Class
Protected Class AppleCBMutableService
Inherits AppleCBService
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E65776C7920696E697469616C697A6564206D757461626C65207365727669636520737065636966696564206279205555494420616E64207365727669636520747970652E
		Sub Constructor(type as AppleCBUUID, isPrimary as boolean)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCBService
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initwithtype(alloc(classptr), type.id, isPrimary))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function initWithType Lib CoreBluetoothLibName Selector "initWithType:primary:" (id as ptr, type as Ptr, isPrimary as boolean) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setcharacteristics Lib CoreBluetoothLibName Selector "setCharacteristics:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setincludedServices Lib CoreBluetoothLibName Selector "setIncludedServices:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setisPrimary Lib CoreBluetoothLibName Selector "setIsPrimary:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setUUID Lib CoreBluetoothLibName Selector "setUUID:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F6620636861726163746572697374696373206F66206120736572766963652E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getcharacteristics(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcharacteristics id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Characteristics As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBMutableService")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F6620696E636C7564656420736572766963657320696E207468697320736572766963652E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getincludedServices(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setIncludedServices id, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		IncludedServices As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520696E6469636174696E672077686574686572207468652074797065206F662073657276696365206973207072696D617279206F72207365636F6E646172792E20
		#tag Getter
			Get
			  return getisPrimary (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setisPrimary id, value
			End Set
		#tag EndSetter
		IsPrimary As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520426C7565746F6F74682D73706563696669632055554944206F662074686520736572766963652E
		#tag Getter
			Get
			  return AppleCBUUID.MakeFromPtr(CoreBluetoothFramework.getuuid(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setuuid id, value.id
			End Set
		#tag EndSetter
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
