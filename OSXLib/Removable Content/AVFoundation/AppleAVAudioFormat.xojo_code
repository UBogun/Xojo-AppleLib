#tag Class
Protected Class AppleAVAudioFormat
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Settings as AppleDictionary)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithSettings(alloc(classptr), Settings.id))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Description as AVFoundationFramework.AudioStreamBasicDescription)
		  Super.Constructor (initWithStreamDescription(alloc(classptr), Description))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Description as AVFoundationFramework.AudioStreamBasicDescription, layout as AVFoundationFramework.AudioChannelLayout)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor
		  Super.Constructor (initWithStreamDescriptionAndLayout(alloc(classptr), Description, layout))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Format as avFoundationframework.AVAudioCommonFormat, SampleRate as Double, Layout as AudioChannelLayout, Interleaved as Boolean)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initCommonFormatLayout(alloc(classptr), Format, SampleRate, Interleaved, layout))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Format as avFoundationframework.AVAudioCommonFormat, SampleRate as Double, Channels as UInt32, Interleaved as Boolean)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initCommonFormat(alloc(classptr), Format, SampleRate, channels, Interleaved))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SampleRate as Double, Layout as AudioChannelLayout)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initStandardFormatWithSampleRate(alloc(classptr), SampleRate, layout))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SampleRate as Double, channels as UInt32)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initStandardFormatWithChannels(alloc(classptr), SampleRate, channels))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getCommonFormat Lib AVFoundationLibname Selector "commonFormat" (id as ptr) As AVFoundationFramework.AVAudioCommonFormat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getSettings Lib AVFoundationLibname Selector "settings" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getStreamDescription Lib AVFoundationLibname Selector "commonFormat" (id as ptr) As AVFoundationFramework.AudioStreamBasicDescription
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initCommonFormat Lib AVFoundationLibname Selector "initWithCommonFormat:sampleRate:channels:interleaved:" (id as ptr, Format as avFoundationframework . AVAudioCommonFormat, SampleRate as Double, Channels as UInt32, Interleave as Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initCommonFormatLayout Lib AVFoundationLibname Selector "initWithCommonFormat:sampleRate:interleaved:channelLayout:" (id as ptr, Format as avFoundationframework . AVAudioCommonFormat, SampleRate as Double, Interleave as Boolean, LAyout as AudioChannelLayout) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initStandardFormatWithChannels Lib AVFoundationLibname Selector "initStandardFormatWithSampleRate:channels:" (id as ptr, SampleRate as Double, Channels as UInt32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initStandardFormatWithSampleRate Lib AVFoundationLibname Selector "initStandardFormatWithSampleRate:channelLayout:" (id as ptr, SampleRate as Double, ChannelLayout as AudioChannelLayout) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithSettings Lib AVFoundationLibname Selector "initWithSettings:" (id as ptr, settings as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithStreamDescription Lib AVFoundationLibname Selector "initWithStreamDescription:" (id as ptr, description as AVFoundationFramework . AudioStreamBasicDescription) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithStreamDescriptionAndLayout Lib AVFoundationLibname Selector "initWithStreamDescription:channelLayout:" (id as ptr, description as AVFoundationFramework . AudioStreamBasicDescription, layout as AVFoundationFramework . AudioChannelLayout) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function isEqual(anObject as AppleGeneralObject) As Boolean
		  return AVFoundationFramework.isEqual (id, anObject.GeneralID)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isInterleaved Lib AVFoundationLibname Selector "isInterleaved" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isStandard Lib AVFoundationLibname Selector "isStandard" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioFormat
		  return if (aptr = nil, nil, new AppleAVAudioFormat(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status
		done, but needs better constructor for initWithStreamDescription (uncertain about the coding yet)
		
	#tag EndNote


	#tag Property, Flags = &h0
		#tag Note
			return AVFoundationFramework.getChannelCount (id)
		#tag EndNote
		ChannelCount As UInt32
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			return AVFoundationFramework.getlayout(id)
		#tag EndNote
		ChannelLayout As AudioChannelLayout
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioFormat")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getCommonFormat (id)
			End Get
		#tag EndGetter
		CommonFormat As AVFoundationFramework.AVAudioCommonFormat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return isInterleaved (id)
			End Get
		#tag EndGetter
		Interleaved As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AVFoundationFramework.getSampleRate (id)
			End Get
		#tag EndGetter
		Samplerate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr (getSettings(id))
			End Get
		#tag EndGetter
		Settings As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return isStandard (id)
			End Get
		#tag EndGetter
		Standard As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getStreamDescription (id)
			End Get
		#tag EndGetter
		StreamDescription As AVFoundationFramework.AudioStreamBasicDescription
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ChannelCount"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CommonFormat"
			Group="Behavior"
			Type="AVFoundationFramework.AVAudioCommonFormat"
			EditorType="Enum"
			#tag EnumValues
				"0 - OtherFormat"
				"1 - PCMSingle"
				"2 - PCMDouble"
				"3 - PCMInt16"
				"4 - PCMInt32"
			#tag EndEnumValues
		#tag EndViewProperty
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
			Name="Interleaved"
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
			Name="Samplerate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Standard"
			Group="Behavior"
			Type="Boolean"
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
