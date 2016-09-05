#tag Module
Protected Module AVFoundationFramework
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAsset Lib AVFoundationLibName Selector "asset" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAVAudioFormat Lib AVFoundationLibName Selector "AVAudioFormat" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaveragePowerForChannel Lib AVFoundationLibName Selector "averagePowerForChannel:" (id as ptr, channel as Integer) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getchannelAssignments Lib AVFoundationLibname Selector "channelAssignments" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentDate Lib AVFoundationLibname Selector "currentDate" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentTime Lib AVFoundationLibname Selector "currentTime" (id as ptr) As CMTime
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentTimeAsDouble Lib AVFoundationLibname Selector "currentTime" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getData Lib AVFoundationLibName Selector "data" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdeviceCurrentTime Lib AVFoundationLibname Selector "deviceCurrentTime" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getduration Lib AVFoundationLibname Selector "duration" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function geterror Lib AVFoundationLibname Selector "error" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfChannels Lib AVFoundationLibname Selector "numberOfChannels" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpeakPowerForChannel Lib AVFoundationLibName Selector "peakPowerForChannel:" (id as ptr, channel as Integer) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getSampleRate Lib AVFoundationLibname Selector "sampleRate" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsettings Lib AVFoundationLibName Selector "settings" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithURL Lib AVFoundationLibname Selector "initWithURL:" (id as ptr, url as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isEqual Lib AVFoundationLibname Selector "isEqual:" (id as ptr, anObject as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isMeteringEnabled Lib AVFoundationLibname Selector "isMeteringEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isPlaying Lib AVFoundationLibname Selector "isPlaying" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub Pause Lib AVFoundationLibname Selector "pause" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function Play Lib AVFoundationLibname Selector "play" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function playAtTime Lib AVFoundationLibname Selector "playAtTime:" (id as ptr, atTime as Double) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function prepareToPlay Lib AVFoundationLibname Selector "prepareToPlay" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub reset Lib AVFoundationLibname Selector "reset" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub seekToTime Lib AVFoundationLibname Selector "seekToTime:completionHandler:" (id as ptr, time as AVFoundationFramework . CMTime, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub seekToTimeTolerance Lib AVFoundationLibname Selector "seekToTime:toleranceBefore:toleranceAfter:completionHandler:" (id as ptr, time as AVFoundationFramework . CMTime, ToleranceBefore as AVFoundationFramework . CMTime, ToleranceAfter as AVFoundationFramework . CMTime, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setchannelAssignments Lib AVFoundationLibname Selector "setChannelAssignments:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function setcurrentDate Lib AVFoundationLibname Selector "setCurrentDate:" (id as ptr, value as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setCurrentTime Lib AVFoundationLibname Selector "setCurrentTime:" (id as ptr, value as AVFoundationFramework . CMTime)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcurrentTimeAsDouble Lib AVFoundationLibname Selector "setCurrentTime:" (id as ptr, value as Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setMeteringEnabled Lib AVFoundationLibname Selector "setMeteringEnabled:" (id as ptr, vaLUE AS Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setVolumeFade Lib AVFoundationLibname Selector "setVolume:fadeDuration:" (id as ptr, value as Single, Duration As Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub Stop Lib AVFoundationLibname Selector "stop" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub updateMeters Lib AVFoundationLibName Selector "updateMeters" (id as ptr)
	#tag EndExternalMethod


	#tag Constant, Name = AVFoundationLibName, Type = Text, Dynamic = False, Default = \"AVFoundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResize, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResizeAspect, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResizeAspect", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResizeAspectFill, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResizeAspectFill", Scope = Public
	#tag EndConstant


	#tag Structure, Name = AudioBufferList, Flags = &h0
		NumberOfBuffers as UInt32
		BufferPtr As Ptr
	#tag EndStructure

	#tag Structure, Name = AudioChannelLayout, Flags = &h0
		LayoutTag as AudioChannelLayoutTag
		  ChannelBitMap as UINT32
		  NumberOfChannelDescriptions as UINT32
		ChannelDecriptions as Ptr
	#tag EndStructure

	#tag Structure, Name = AudioStreamBasicDescription, Flags = &h0
		SampleRate as Double
		  FormatID as UInt32
		  FormatFlags As UInt32
		  BytesPerPacket As UInt32
		  FramesPerPacket As UInt32
		  BytesPerFrame As UInt32
		  ChannelsPerFrame As UInt32
		  BitsPerChannel As UInt32
		Reserved As UInt32
	#tag EndStructure

	#tag Structure, Name = AudioTimeStamp, Flags = &h0
		SampleTime As Double
		  HostTime As UInt64
		  RateScalar As Double
		  WorldClockTime As UInt64
		  SMPTETime as SMPTETime
		  Hours As Int16
		  Minutes As Int16
		  Seconds As Int16
		Frames As Int16
	#tag EndStructure

	#tag Structure, Name = AVAudio3DPoint, Flags = &h0
		x as single
		  y as single
		z as single
	#tag EndStructure

	#tag Structure, Name = CMTime, Flags = &h1
		TimeValue As Int64
		  TimeScale As Int32
		  TimeFlags As UInt32
		TimeEpoch As Int64
	#tag EndStructure


	#tag Enum, Name = AudioChannelLayoutTag, Type = Integer, Flags = &h1
		UseChannelDescriptions = 0
		  UseChannelBitmap = &h10000
		  Mono = &h10001
		  Stereo = &h650002
		  StereoHeadphones = &h660002
		  MatrixStereo = &h670002	
		  MidSide = &h680002
		  XY = &h690002
		  Binaural = &h6A0002
		  Ambisonic_B_Format = &h6B0004
		  Quadraphonic = &h6C0004
		  Pentagonal = &h6D0005
		  Hexagonal = &h6E0006
		  Octagonal  = &h6F0008
		  Cube = &h700008
		  MPEG1 = Mono
		MPEG2 = Stereo
	#tag EndEnum

	#tag Enum, Name = AVAudioCommonFormat, Type = Integer, Flags = &h1
		OtherFormat = 0
		  PCMSingle = 1
		  PCMDouble = 2
		  PCMInt16 = 3
		PCMInt32= 4
	#tag EndEnum

	#tag Enum, Name = AVLayerGravity, Flags = &h0
		Fill
		  FitProportional
		FillProportional
	#tag EndEnum

	#tag Enum, Name = SMPTETime, Flags = &h0
		Type24 = 0
		  Type25
		  Type30Drop
		  Type30
		  Type2997
		  Type2997Drop
		  Type60
		  Type5994
		  Type60Drop
		  Type5994Drop
		  Type50
		Type2398
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
