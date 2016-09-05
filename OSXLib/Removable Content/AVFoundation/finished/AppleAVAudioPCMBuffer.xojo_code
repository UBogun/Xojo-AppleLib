#tag Class
Protected Class AppleAVAudioPCMBuffer
Inherits AppleAVAudioBuffer
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Format as AppleAVAudioFormat, Capacity as UInt32)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithPCMFormat(alloc(classptr), Format.id, Capacity))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getfloatChannelData Lib AVFoundationLibname Selector "floatChannelData" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getframeCapacity Lib AVFoundationLibname Selector "frameCapacity" (id as ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getFrameLength Lib AVFoundationLibname Selector "frameLength" (id as ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getint16ChannelData Lib AVFoundationLibname Selector "int16ChannelData" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getint32ChannelData Lib AVFoundationLibname Selector "int32ChannelData" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getstride Lib AVFoundationLibname Selector "stride" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithPCMFormat Lib AVFoundationLibname Selector "initWithPCMFormat:frameCapacity:" (id as ptr, format as ptr, capacity as uint32) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioPCMBuffer
		  return if (aptr = nil, nil, new AppleAVAudioPCMBuffer(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioPCMBuffer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			The floatChannelData property returns pointers to the buffer’s audio samples, if the buffer’s format is 32-bit float. It returns nil if it is another format.
			
			The returned pointer is to format.channelCount pointers to float. Each of these pointers is to frameLength valid samples, which are spaced by stride samples.
			
			If the format is not interleaved, as with the standard deinterleaved float format, then the pointers will be to separate chunks of memory and the stride property value is 1.
			
			If the format is interleaved, then the pointers will refer to the same buffer of interleaved samples, each offset by 1 frame, and the stride property value is the number of interleaved channels.
		#tag EndNote
		#tag Getter
			Get
			  Return getfloatChannelData (id)
			End Get
		#tag EndGetter
		FloatChannelData As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getframeCapacity (id)
			End Get
		#tag EndGetter
		FrameCapacity As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getFrameLength (id)
			End Get
		#tag EndGetter
		FrameLength As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			The int16ChannelData property returns the buffer's audio samples if the buffer's format has 2-byte integer samples, or nil if it is another format.
			
			See floatChannelData for more information.
		#tag EndNote
		#tag Getter
			Get
			  Return getint16ChannelData (id)
			End Get
		#tag EndGetter
		Int16ChannelData As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			The int32ChannelData property returns the buffer's audio samples if the buffer's format has 4-byte integer samples, or nil if it is another format.
			
			See floatChannelData for more information.
		#tag EndNote
		#tag Getter
			Get
			  Return getint32ChannelData (id)
			End Get
		#tag EndGetter
		Int32ChannelData As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getstride (id)
			End Get
		#tag EndGetter
		Stride As UInteger
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameCapacity"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameLength"
			Group="Behavior"
			Type="UInt32"
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
			Name="Stride"
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
