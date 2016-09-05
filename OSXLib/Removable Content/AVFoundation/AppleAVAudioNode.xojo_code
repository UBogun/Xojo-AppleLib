#tag Class
Protected Class AppleAVAudioNode
Inherits AppleObject
	#tag Method, Flags = &h1
		Protected Sub AVAudioNodeTapBlockTemplate(BufferPtr as ptr, AVAudioTime as Ptr)
		  #pragma StackOverflowChecking false
		  #pragma BreakOnExceptions false
		  #pragma backgroundtasks false
		  #pragma NilObjectChecking false
		  
		  // A Template for A TapBlock to be used with AppleAVAudioNodes.
		  
		  
		  // You should just foward both ptrs to app properties and start the analyze on the main thread.
		  // You convert the properties with:
		  // dim Buffer as new AppleAVAudioPCMBuffer (bufferptr)
		  // dim time as new AppleAVAudioTime (AVAudioTime)
		  
		  #pragma unused bufferptr
		  #pragma unused AVAudioTime
		  
		  // Please note this block may be called on a different than the main thread. You should not manipulate the UI from here therefore.
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getEngine Lib AVFoundationLibname Selector "engine" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getinputFormat Lib AVFoundationLibname Selector "inputFormatForBus:" (id as ptr, Bus as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getlastRenderTime Lib AVFoundationLibname Selector "lastRenderTime" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getNameForBus Lib AVFoundationLibname Selector "nameForInputBus:" (id as ptr, Bus as UInteger) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getNameForOutBus Lib AVFoundationLibname Selector "nameForOutputBus:" (id as ptr, Bus as UInteger) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getnextAvailableInputBus Lib AVFoundationLibname Selector "nextAvailableInputBus" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getnumberOfInputs Lib AVFoundationLibname Selector "numberOfInputs" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getnumberOfOutputs Lib AVFoundationLibname Selector "numberOfOutputs" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getobstruction Lib AVFoundationLibname Selector "obstruction" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getOcclusion Lib AVFoundationLibname Selector "occlusion" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getoutputFormat Lib AVFoundationLibname Selector "outputFormatForBus:" (id as ptr, Bus as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPan Lib AVFoundationLibname Selector "pan" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPosition Lib AVFoundationLibname Selector "position" (id as ptr) As AVAudio3DPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrate Lib AVFoundationLibname Selector "rate" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrenderingAlgorithm Lib AVFoundationLibname Selector "renderingAlgorithm" (id as ptr) As AVAudio3DMixingRenderingAlgorithm
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreverbBlend Lib AVFoundationLibname Selector "reverbBlend" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvolume Lib AVFoundationLibname Selector "volume" (id as ptr) As single
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function InputBusName(Bus as UInteger) As text
		  return getNameForBus (id, bus)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InputBusName(Bus as UInteger, assigns value as CFStringRef)
		  setNameForBus id, bus, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InputFormat(Bus as UInteger) As AppleAVAudioFormat
		  return AppleAVAudioFormat.MakefromPtr(getinputFormat(id, bus))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InputFormat(Bus as UInteger, assigns value as AppleAVAudioFormat)
		  setinputFormat (id, bus, value.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4F6E6C79206F6E6520746170206D617920626520696E7374616C6C6564206F6E20616E79206275732E2054617073206D617920626520736166656C7920696E7374616C6C656420616E642072656D6F766564207768696C652074686520656E67696E652069732072756E6E696E672E
		Sub InstallTap(Bus As UInteger, BufferSize As UInt32, Format As AppleAVAudioFormat, CallBackBlock As AppleBlock)
		  installTapOnBus (id, Bus, BufferSize, if (format = nil, nil,  format.id), CallBackBlock.Handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub installTapOnBus Lib AVFoundationLibname Selector "installTapOnBus:bufferSize:format:block:" (id as ptr, Bus as UInteger, BufferSize as UInt32, Format as Ptr, Block as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function MakeFromPtr(aPtr as Ptr) As AppleAVAudioNode
		  return if (aptr = nil, nil, new AppleAVAudioNode(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OutputBusName(Bus as UInteger) As text
		  return getNameForOutBus (id, bus)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OutputBusName(Bus as UInteger, assigns value as CFStringRef)
		  setNameForOutputBus id, bus, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OutputFormat(Bus as UInteger) As AppleAVAudioFormat
		  return AppleAVAudioFormat.MakefromPtr(getoutputFormat(id, bus))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OutputFormat(Bus as UInteger, assigns value as AppleAVAudioFormat)
		  setoutputFormat (id, bus, value.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4F6E6C79206F6E6520746170206D617920626520696E7374616C6C6564206F6E20616E79206275732E2054617073206D617920626520736166656C7920696E7374616C6C656420616E642072656D6F766564207768696C652074686520656E67696E652069732072756E6E696E672E
		Sub RemoveTap(Bus As UInteger)
		  removeTapOnBus (id, Bus)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub removeTapOnBus Lib AVFoundationLibname Selector "removeTapOnBus:" (id as ptr, Bus as UInteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  AVFoundationFramework.reset id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setinputFormat Lib AVFoundationLibname Selector "setInputFormat:forBus:" (id as ptr, Bus as UInteger, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setNameForBus Lib AVFoundationLibname Selector "setName:forInputBus:" (id as ptr, Bus as UInteger, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setNameForOutputBus Lib AVFoundationLibname Selector "setName:forOutputBus:" (id as ptr, Bus as UInteger, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setobstruction Lib AVFoundationLibname Selector "setObstruction:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setOcclusion Lib AVFoundationLibname Selector "setOcclusion:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setoutputFormat Lib AVFoundationLibname Selector "setInputFormat:forBus:" (id as ptr, Bus as UInteger, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPan Lib AVFoundationLibname Selector "setPan:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPosition Lib AVFoundationLibname Selector "setPosition:" (id as ptr, value as AVAudio3DPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrate Lib AVFoundationLibname Selector "setRate:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrenderingAlgorithm Lib AVFoundationLibname Selector "setRenderingAlgorithm:" (id as ptr, value as AVAudio3DMixingRenderingAlgorithm)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setreverbBlend Lib AVFoundationLibname Selector "setReverbBlend:" (id as ptr, value as single)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioNode")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioEngine.MakeFromPtr(getEngine(id))
			End Get
		#tag EndGetter
		Engine As AppleAVAudioEngine
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioTime.MakeFromPtr(getlastRenderTime(id))
			End Get
		#tag EndGetter
		LastRenderTime As AppleAVAudioTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getnumberOfInputs (id)
			End Get
		#tag EndGetter
		NumberOfInputs As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getnumberOfOutputs (id)
			End Get
		#tag EndGetter
		NumberOfOutputs As UInteger
	#tag EndComputedProperty


	#tag Enum, Name = AVAudio3DMixingRenderingAlgorithm, Flags = &h0
		EqualPowerPanning = 0
		  SphericalHead = 1
		  HRTF = 2
		  SoundField = 3
		StereoPassThrough = 5
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
