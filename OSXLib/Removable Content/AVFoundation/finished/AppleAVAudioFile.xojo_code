#tag Class
Protected Class AppleAVAudioFile
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function AVFileFormat Lib AVFoundationLibname Selector "fileFormat" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function AVframePosition Lib AVFoundationLibname Selector "framePosition" (id as ptr) As Int64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function AVLength Lib AVFoundationLibname Selector "length" (id as ptr) As Int64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function AVProcessingFormat Lib AVFoundationLibname Selector "processingFormat" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function AVURL Lib AVFoundationLibname Selector "url" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor(fileURL as AppleURL, settings as appledictionary, error as AppleError= nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (InitForWritingError(alloc(ClassPtr), fileURL.Id, settings.id, if (error = nil, nil, error.Id)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(fileURL as AppleURL, settings as appledictionary, commonFormat as AVFoundationFramework.AVAudioCommonFormat, Interleaved as boolean, error as AppleError= nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (InitForWritingCommonFormat(alloc(ClassPtr), fileURL.Id, settings.id, commonFormat, Interleaved, if (error = nil, nil,error.Id)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(fileURL as AppleURL, error as AppleError= nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (InitForReadingError(alloc(ClassPtr), fileURL.Id, if (error = nil, nil, error.Id)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(fileURL as AppleURL, commonFormat as AVFoundationFramework.AVAudioCommonFormat, Interleaved as boolean, error as AppleError = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (InitForReadingCommonFormat(alloc(ClassPtr), fileURL.Id, commonFormat, Interleaved, if (error = nil, nil,error.Id)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function InitForReadingCommonFormat Lib AVFoundationLibname Selector "initForReading:commonFormat:interleaved:error:" (id as ptr, fileURL as ptr, commonFormat as AVFoundationFramework . AVAudioCommonFormat, Interleaved as boolean, error as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function InitForReadingError Lib AVFoundationLibname Selector "initForReading:error:" (id as ptr, fileURL as ptr, error as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function InitForWritingCommonFormat Lib AVFoundationLibname Selector "initForWriting:settings:commonFormat:interleaved:error:" (id as ptr, fileURL as ptr, settings as ptr, commonFormat as AVFoundationFramework . AVAudioCommonFormat, Interleaved as boolean, error as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function InitForWritingError Lib AVFoundationLibname Selector "initForWriting:settings:error:" (id as ptr, fileURL as ptr, settings as ptr, error as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Read(Buffer as AppleAVAudioPCMBuffer, error as AppleError= nil) As Boolean
		  return ReadIntoBuffer (id, buffer.id, if (error = nil, nil, error.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadFrames(Buffer as AppleAVAudioPCMBuffer, Frames as UInt32, error as AppleError = nil) As Boolean
		  return ReadIntoBufferFrames (id, buffer.id, frames, if (error = nil, nil, error.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function ReadIntoBuffer Lib AVFoundationLibname Selector "readIntoBuffer:error:" (id as ptr, buffer as ptr, error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function ReadIntoBufferFrames Lib AVFoundationLibname Selector "readIntoBuffer:frameCount:error:" (id as ptr, buffer as ptr, framecount as UInt32, error as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Write(Buffer as AppleAVAudioPCMBuffer, error as AppleError= nil) As Boolean
		  return WriteFromBuffer (id, buffer.id, if (error = nil, nil, error.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function WriteFromBuffer Lib AVFoundationLibname Selector "writeFromBuffer:error:" (id as ptr, buffer as ptr, error as ptr) As Boolean
	#tag EndExternalMethod


	#tag Note, Name = Status
		macOS 10.12
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr =nil then mClassPtr = FoundationFramework.NSClassFromString ("AVAudioFile")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioFormat.MakefromPtr (AVFileFormat(id))
			End Get
		#tag EndGetter
		FileFormat As AppleAVAudioFormat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AVFramePosition (id)
			End Get
		#tag EndGetter
		FramePosition As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AVLength (id)
			End Get
		#tag EndGetter
		Length As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioFormat.MakefromPtr (AVProcessingFormat(id))
			End Get
		#tag EndGetter
		ProcessingFormat As AppleAVAudioFormat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleURL.MakefromPtr (AVURL(id))
			End Get
		#tag EndGetter
		URL As AppleURL
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FramePosition"
			Group="Behavior"
			Type="Int64"
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
			Name="Length"
			Group="Behavior"
			Type="Int64"
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
