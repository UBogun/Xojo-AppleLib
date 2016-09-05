#tag Class
Protected Class AppleAVAudioTime
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(TimeStamp As AudioTimeStamp, SampleRate As Double)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithAudioTimeStamp(alloc(classptr), TimeStamp, SampleRate))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SampleTime As Int64, SampleRate As Double)
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithSampleTime(alloc(classptr), SampleTime, SampleRate))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(HostTime As UInt64)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithHostTime(alloc(classptr), HostTime))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(HostTime As UInt64, SampleTime As Int64, SampleRate As Double)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithHostTimeSampleRate(alloc(classptr), HostTime, SampleTime, SampleRate))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExtrapolateTime(AnchorTime As AppleAVAudioTime) As AppleAVAudioTime
		  return new AppleAVAudioTime (extrapolateTimeFromAnchor (id, AnchorTime.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function extrapolateTimeFromAnchor Lib AVFoundationLibname Selector "extrapolateTimeFromAnchor:" (id as ptr, anchorTime As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getaudioTimeStamp Lib AVFoundationLibname Selector "audioTimeStamp" (id as Ptr) As AudioTimeStamp
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getHostTime Lib AVFoundationLibname Selector "hostTime" (id as Ptr) As UInt64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getHostTimeValid Lib AVFoundationLibname Selector "isHostTimeValid" (id as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getSampleTime Lib AVFoundationLibname Selector "sampleTime" (id as Ptr) As Int64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getSampleTimeValid Lib AVFoundationLibname Selector "isSampleTimeValid" (id as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function hostTimeForSeconds Lib AVFoundationLibname Selector "hostTimeForSeconds:" (id as Ptr, seconds as Double) As UInt64
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function HostTimeToSeconds(HostTime As UInt64) As double
		  return secondsForHostTime (classptr, HostTime)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithAudioTimeStamp Lib AVFoundationLibname Selector "initWithAudioTimeStamp:sampleRate:" (id as ptr, TimeStamp As AudioTimeStamp, SampleRate As Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithHostTime Lib AVFoundationLibname Selector "initWithHostTime:" (id as ptr, HostTime As UInt64) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithHostTimeSampleRate Lib AVFoundationLibname Selector "initWithHostTime:sampleTime:atRate:" (id as ptr, HostTime As UInt64, sampleTime As Int64, sampleRate As Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithSampleTime Lib AVFoundationLibname Selector "initWithSampleTime:atRate:" (id as ptr, SampleTime As UInt64, sampleRate As Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithSampleTime1 Lib AVFoundationLibname Selector "initWithSampleTime:atRate:" (id as ptr, SampleTime As UInt64, sampleRate As Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioTime
		  return if (aptr = nil, nil, new AppleAVAudioTime(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function secondsForHostTime Lib AVFoundationLibname Selector "hostTimeForSeconds:" (id as Ptr, hosttime as uint64) As double
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function SecondsToHostTime(Seconds As Double) As UInt64
		  return hostTimeForSeconds (classptr, seconds)
		End Function
	#tag EndMethod


	#tag Note, Name = Status
		
		Fully implemented, untested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getaudioTimeStamp (id)
			End Get
		#tag EndGetter
		AudioTimeStamp As audioTimeStamp
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioTime")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getHostTime (id)
			End Get
		#tag EndGetter
		HostTime As UInt64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getHostTimeValid (id)
			End Get
		#tag EndGetter
		HostTimeValid As Boolean
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
			  return getSampleTime (id)
			End Get
		#tag EndGetter
		SampleTime As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getSampleTimeValid (id)
			End Get
		#tag EndGetter
		SampleTimeValid As Boolean
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
			Name="HostTime"
			Group="Behavior"
			Type="UInt64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HostTimeValid"
			Group="Behavior"
			Type="Boolean"
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
			Name="Samplerate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SampleTime"
			Group="Behavior"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SampleTimeValid"
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
