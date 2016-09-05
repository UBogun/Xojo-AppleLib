#tag Class
Protected Class AppleAVAudioSessionChannelDescription
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getchannelLAbel Lib AVFoundationLibname Selector "channelLabel" (id as ptr) As Uint32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getchannelName Lib AVFoundationLibname Selector "channelName" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getchannelNumber Lib AVFoundationLibname Selector "channelNumber" (id as ptr) As Uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getowningPortUID Lib AVFoundationLibname Selector "owningPortUID" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleAVAudioSessionChannelDescription
		  return if (aptr = nil, nil, new AppleAVAudioSessionChannelDescription(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status finished
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 41206465736372697074696F6E206F662074686520706879736963616C206C6F636174696F6E206F662074686973206368616E6E656C2028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return getchannelLAbel (mid)
			End Get
		#tag EndGetter
		ChannelLabel As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206465736372697074697665206E616D6520666F7220746865206368616E6E656C2028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return getchannelName (mid)
			End Get
		#tag EndGetter
		ChannelName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F662074686973206368616E6E656C20696E20697473206F776E696E6720706F7274E2809973206172726179206F66206368616E6E656C732028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return getchannelNumber (mid)
			End Get
		#tag EndGetter
		ChannelNumber As Uinteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr 
			  if mClassPtr = nil then mclassptr = FoundationFramework.NSClassFromString ("AVAudioSessionChannelDescription")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E69717565206964656E74696669657220285549442920666F722074686973206368616E6E656CE2809973206F776E696E6720706F72742028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return getowningPortUID (mid)
			End Get
		#tag EndGetter
		OwningPortUID As Text
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
