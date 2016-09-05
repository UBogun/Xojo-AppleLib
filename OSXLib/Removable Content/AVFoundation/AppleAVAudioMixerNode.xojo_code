#tag Class
Protected Class AppleAVAudioMixerNode
Inherits AppleAVAudioNode
	#tag ExternalMethod, Flags = &h21
		Private Declare Function getoutputVolume Lib AVFoundationLibname Selector "outputVolume" (id as ptr) As single
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function makefromPtr(aPtr as Ptr) As AppleAVAudioMixerNode
		  return if (aptr = nil, nil, new AppleAVAudioMixerNode(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setoutputVolume Lib AVFoundationLibname Selector "setOutputVolume:" (id as ptr, value as single)
	#tag EndExternalMethod


	#tag Note, Name = Status
		fully implemented, untested
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioMixerNode")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getnextAvailableInputBus (id)
			End Get
		#tag EndGetter
		NextAvailableInputBus As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getobstruction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setobstruction (id, value)
			End Set
		#tag EndSetter
		Obstruction As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getOcclusion (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setOcclusion (id, value)
			End Set
		#tag EndSetter
		Occlusion As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getoutputVolume (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setoutputVolume (id, value)
			End Set
		#tag EndSetter
		OutputVolume As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getPan (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPan (id, value)
			End Set
		#tag EndSetter
		Pan As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getPosition (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPosition (id, value)
			End Set
		#tag EndSetter
		Position As AVAudio3DPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getrenderingAlgorithm (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setrenderingAlgorithm (id, value)
			End Set
		#tag EndSetter
		RenderingAlgorithms As AVAudio3DMixingRenderingAlgorithm
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getreverbBlend (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setreverbBlend (id, value)
			End Set
		#tag EndSetter
		ReverbBlend As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getvolume (id)
			End Get
		#tag EndGetter
		Volume As Single
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
			Name="NextAvailableInputBus"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfInputs"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfOutputs"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Obstruction"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Occlusion"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputVolume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pan"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingAlgorithms"
			Group="Behavior"
			Type="AVAudio3DMixingRenderingAlgorithm"
			EditorType="Enum"
			#tag EnumValues
				"0 - EqualPowerPanning"
				"1 - SphericalHead"
				"2 - HRTF"
				"3 - SoundField"
				"5 - StereoPassThrough"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReverbBlend"
			Group="Behavior"
			Type="Single"
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
			Name="Volume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
