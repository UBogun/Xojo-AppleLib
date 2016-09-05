#tag Class
Protected Class AppleAVAudioBuffer
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function getaudioBufferList Lib AVFoundationLibname Selector "audioBufferList" (id as ptr) As AVFoundationFramework.AudioBufferList
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getFormat Lib AVFoundationLibname Selector "format" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getmutableaudioBufferList Lib AVFoundationLibname Selector "mutableAudioBufferList" (id as ptr) As AVFoundationFramework.AudioBufferList
	#tag EndExternalMethod


	#tag Note, Name = Status completed
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getaudioBufferList(id)
			  
			  // If I understood right, we should add some conversions here: Better return a MemoryBlock with NumberOfBuffers, starting from the returned pointer.
			  
			End Get
		#tag EndGetter
		AudioBufferList As AVFoundationFramework.AudioBufferList
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioBuffer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioFormat.MakefromPtr(getFormat(id))
			End Get
		#tag EndGetter
		Format As AppleAVAudioFormat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getaudioBufferList(id)
			  
			  // If I understood right, we should add some conversions here: Better return a MutableMemoryBlock with NumberOfBuffers, starting from the returned pointer.
			  
			End Get
		#tag EndGetter
		MutableAudioBufferList As AVFoundationFramework.AudioBufferList
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
