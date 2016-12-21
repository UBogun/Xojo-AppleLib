#tag Module
Protected Module AudioToolboxFramework
	#tag Structure, Name = AudioComponentDescription, Flags = &h1
		componentFlags as UInt32
		  componentFlagsMask as UInt32
		  componentManufacturer As OSType
		  componentSubtype as OSType
		componentType As OSType
	#tag EndStructure

	#tag Structure, Name = AudioComponentInstantiationOptions, Flags = &h1
		value as uint32
	#tag EndStructure


	#tag Enum, Name = AudioComponentInstantiationOptionsConstants, Type = Uint32, Flags = &h0
		LoadInProgress = 2
		LoadOutOfProgress = 1
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
End Module
#tag EndModule
