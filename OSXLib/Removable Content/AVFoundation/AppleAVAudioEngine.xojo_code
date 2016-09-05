#tag Class
Protected Class AppleAVAudioEngine
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AttachNode(Node as AppleAVAudioNode)
		  attachNode id, node.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub attachNode Lib AVFoundationLibname Selector "attachNode:" (id as ptr, node as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub ConnectNodes(Node as appleavaudionode, SecondNode as appleavaudionode, format as AppleAVAudioFormat = nil)
		  connectto id, Node.id, SecondNode.id, if (format = nil, nil, format.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConnectNodes(Node as appleavaudionode, SecondNode as appleavaudionode, FromBus as UInteger, ToBus As UInteger, format as AppleAVAudioFormat = nil)
		  connecttobus id, Node.id, SecondNode.id, FromBus, ToBus, if (format = nil, nil, format.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub connectto Lib AVFoundationLibname Selector "connect:to:format:" (id as ptr, node as ptr, anothernode as ptr, format as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub connecttobus Lib AVFoundationLibname Selector "connect:to:fromBus:toBus:format:" (id as ptr, node as ptr, anothernode as ptr, frombus as uinteger, toBus as uinteger, format as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (Init(Alloc(classptr)))
		  MHasOwnership = true
		  
		  // Install self as observer for ConfigurationChanged Notifications.
		  dim block as new AppleBlock (AddressOf NotificationBlock)
		  NotificationObject = AppleNotificationCenter.AddObserver (kAVAudioEngineConfigurationChangeNotification,  self, AppleOperationQueue.MainQueue, block)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub destructor()
		  if NotificationObject <> nil then AppleNotificationCenter.removeObserver (NotificationObject)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DetachNode(Node as AppleAVAudioNode)
		  detachNode id, node.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub detachNode Lib AVFoundationLibname Selector "detachNode:" (id as ptr, node as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub DisconnectNodeInput(Node As AppleAVAudioNode)
		  disconnectNodeInput id, node.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisconnectNodeInput(Node As AppleAVAudioNode, bus as uinteger)
		  disconnectNodeInputBus id, node.id, bus
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub disconnectNodeInput Lib AVFoundationLibname Selector "disconnectNodeInput:" (id as ptr, node as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub disconnectNodeInputBus Lib AVFoundationLibname Selector "disconnectNodeInput:bus:" (id as ptr, node as ptr, bus as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub DisconnectNodeOutput(Node As AppleAVAudioNode)
		  disconnectNodeoutput id, node.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisconnectNodeOutput(Node As AppleAVAudioNode, bus as uinteger)
		  disconnectNodeoutputBus id, node.id, bus
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub disconnectNodeOutput Lib AVFoundationLibname Selector "disconnectNodeOutput:" (id as ptr, node as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub disconnectNodeOutputBus Lib AVFoundationLibname Selector "disconnectNodeOutput:bus:" (id as ptr, node as ptr, bus as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getinputNode Lib AVFoundationLibname Selector "inputNode" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmainMixerNode Lib AVFoundationLibname Selector "mainMixerNode" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmusicSequence Lib AVFoundationLibname Selector "musicSequence" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getoutputNode Lib AVFoundationLibname Selector "outputNode" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioEngine
		  return if (aptr = nil, nil, new AppleAVAudioEngine(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NotificationBlock(NotificationPtr as Ptr)
		  // if self <> NIL then RaiseEvent ReceivedNotification (new NSNotification (notificationptr))
		  if self <> nil then
		    RaiseEvent ConfigurationChanged
		  end if
		  #pragma unused NotificationPtr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  AVFoundationFramework.pause(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Prepare()
		  Prepare id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub Prepare Lib AVFoundationLibname Selector "prepare" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Start(byref anError as AppleError) As Boolean
		  dim p as ptr = anError.Id
		  dim result as boolean = startAndReturnError (id, p)
		  anError = AppleError.MakefromPtr(p)
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function startAndReturnError Lib AVFoundationLibname Selector "startAndReturnError:" (id as ptr, byref anError as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  AVFoundationFramework.stop(id)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ConfigurationChanged()
	#tag EndHook


	#tag Note, Name = Status
		
		completed, untested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioEngine")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioInputNode.MakeFromPtr (getinputNode(id))
			End Get
		#tag EndGetter
		InputNode As AppleAVAudioInputNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioMixerNode.MakeFromPtr (getmainMixerNode(id))
			End Get
		#tag EndGetter
		MainMixerNode As AppleAVAudioMixerNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getmusicSequence (id)
			End Get
		#tag EndGetter
		MusicSequenceRef As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private NotificationObject As AppleNotificationObject
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVAudioOutputNode.MakeFromPtr (getoutputNode(id))
			End Get
		#tag EndGetter
		OutputNode As AppleAVAudioOutputNode
	#tag EndComputedProperty


	#tag Constant, Name = kAVAudioEngineConfigurationChangeNotification, Type = Text, Dynamic = False, Default = \"AVAudioEngineConfigurationChangeNotification", Scope = Protected
	#tag EndConstant


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
