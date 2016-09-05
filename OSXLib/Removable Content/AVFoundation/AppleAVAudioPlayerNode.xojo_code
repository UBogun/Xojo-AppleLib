#tag Class
Protected Class AppleAVAudioPlayerNode
Inherits AppleAVAudioNode
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function nodeTimeForPlayerTime Lib AVFoundationLibname Selector "nodeTimeForPlayerTime:" (id as ptr, PlayerTime as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function NodeTimeToPlayerTime(NodeTime as AppleAVAudioTime) As AppleAVAudioTime
		  return AppleAVAudioTime.MakefromPtr (playerTimeForNodeTime(id, NodeTime.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  AVFoundationFramework.pause(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Play()
		  play(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Play(atTime as AppleAVAudioTime)
		  PlayAtTime(id, atTime.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub Play Lib AVFoundationLibname Selector "play" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub PlayAtTime Lib AVFoundationLibname Selector "playAtTime:" (id as ptr, time as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function playerTimeForNodeTime Lib AVFoundationLibname Selector "playerTimeForNodeTime:" (id as ptr, NodeTime as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function PlayerTimeToNodeTime(PlayerTime as AppleAVAudioTime) As AppleAVAudioTime
		  return AppleAVAudioTime.MakefromPtr (nodeTimeForPlayerTime(id, PlayerTime.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Prepare(FrameCount as UInt32)
		  prepareWithFrameCount (id, FrameCount)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub prepareWithFrameCount Lib AVFoundationLibname Selector "prepareWithFrameCount:" (id as ptr, FrameCount as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub scheduleBuffer Lib AVFoundationLibname Selector "scheduleBuffer:completionHandler:" (id as ptr, buffer as ptr, CompletionHandler as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub scheduleBufferAtTime Lib AVFoundationLibname Selector "scheduleBuffer:atTime:options:completionHandler:" (id as ptr, buffer as ptr, atTime as Ptr, options as AVAudioPlayerNodeBufferOptions, CompletionHandler as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub scheduleFileAtTime Lib AVFoundationLibname Selector "scheduleFile:atTime:completionHandler:" (id as ptr, file as ptr, atTime as Ptr, CompletionHandler as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub SchedulePlayback(AVFile as AppleAVAudioFile, atTime as AppleAVAudioTime, completionHandler as appleblock = nil)
		  scheduleFileAtTime (id, avfile.id, atTime.id, if (completionHandler = nil, nil, completionHandler.Handle))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SchedulePlayback(Buffer as AppleAVAudioPCMBuffer, atTime as AppleAVAudioTime, options as AVAudioPlayerNodeBufferOptions, completionHandler as appleblock = nil)
		  scheduleBufferAtTime (id, buffer.id, atTime.id, options, if (completionHandler = nil, nil, completionHandler.Handle))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SchedulePlayback(Buffer as AppleAVAudioPCMBuffer, completionHandler as appleblock = nil)
		  scheduleBuffer (id, buffer.id, if (completionHandler = nil, nil, completionHandler.Handle))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScheduleSegment(AVFile as AppleAVAudioFile, StartingFrame As Int64, FrameCount As UInt32, atTime as AppleAVAudioTime, completionHandler as appleblock = nil)
		  scheduleSegmentAtTime (id, avfile.id, StartingFrame, FrameCount, atTime.id, if (completionHandler = nil, nil, completionHandler.Handle))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub scheduleSegmentAtTime Lib AVFoundationLibname Selector "scheduleSegment:startingFrame:frameCount:atTime:completionHandler:" (id as ptr, file as ptr, startFrame as Int64, frameCount as UInt32, atTime as Ptr, CompletionHandler as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  AVFoundationFramework.stop(id)
		End Sub
	#tag EndMethod


	#tag Note, Name = Status
		
		complete, untested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioPlayerNode")
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
			  return AVFoundationFramework.isPlaying (id)
			End Get
		#tag EndGetter
		Playing As Boolean
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


	#tag Enum, Name = AVAudioPlayerNodeBufferOptions, Type = UInteger, Flags = &h0
		Loops = 1
		  Interrupts = 2
		InterruptsAtLoop = 4
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
			Name="Pan"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Playing"
			Group="Behavior"
			Type="Boolean"
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
	#tag EndViewBehavior
End Class
#tag EndClass
