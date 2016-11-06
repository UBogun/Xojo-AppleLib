#tag Class
Protected Class AppleSCNAudioPlayer
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub AddBlocks()
		  dim finishblock as new AppleBlock (AddressOf DidFinishBlock)
		  dim willbeginBlock as new AppleBlock (AddressOf WillStartBlock)
		  setwillStartPlayback id , willbeginBlock.Handle
		  setdidFinishPlayback id, finishblock.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E697469616C697A657320616E20617564696F20706C6179657220666F7220706C6179696E672074686520737065636966696564204156466F756E646174696F6E20617564696F206E6F64652E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E20617564696F20706C6179657220666F7220706C6179696E672074686520737065636966696564204156466F756E646174696F6E20617564696F206E6F64652E
		Sub Constructor(Node As AppleAVAudioNode)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(initWithAVAudioNode(alloc(ClassPtr), node.Id))
		  MHasOwnership = true
		  AddBlocks
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E20617564696F20706C6179657220666F7220706C6179696E6720746865207370656369666965642073696D706C6520617564696F20736F757263652E
		Sub Constructor(Source As AppleSCNAudioSource)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(initWithSource(alloc(ClassPtr), source.Id))
		  MHasOwnership = true
		  AddBlocks
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DidFinishBlock()
		  if me <> nil then RaiseEvent Finished
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getaudioNode Lib SceneKitLibname Selector "audioNode" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getaudioSource Lib SceneKitLibname Selector "audioSource" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function initWithAVAudioNode Lib SceneKitLibname Selector "initWithAVAudioNode:" (id as ptr, audioNode as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function initWithSource Lib SceneKitLibname Selector "initWithSource:" (id as ptr, source as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNAudioPlayer
		  return if (aptr = nil, nil, new ApplescnAudioPlayer(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setdidFinishPlayback Lib SceneKitLibname Selector "setDidFinishPlayback:" (id as ptr, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setwillStartPlayback Lib SceneKitLibname Selector "setWillStartPlayback:" (id as ptr, block as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub WillStartBlock()
		  if me <> nil then RaiseEvent WillPlay
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520506C617965722066696E697368656420706C61796261636B2E
		Event Finished()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520506C617965722069732061626F757420746F20626567696E20706C61796261636B2E
		Event WillPlay()
	#tag EndHook


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F206E6F6465205363656E654B6974207573657320666F72206D6978696E6720617564696F2066726F6D207468697320706C617965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleAVAudioNode.MakeFromPtr(getaudioNode(mid))
			End Get
		#tag EndGetter
		AudioNode As AppleAVAudioNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736F75726365206F6620617564696F20706C61796564206279207468697320706C617965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSCNAudioSource.MakeFromPtr(getaudioSource(id))
			End Get
		#tag EndGetter
		AudioSource As AppleSCNAudioSource
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412073686F727463757420666F7220636865636B696E672069662074686520636C61737320697320617661696C61626C65206F6E207468652063757272656E742064657669636520616E6420694F532076657273696F6E2E
		#tag Getter
			Get
			  return (ClassPtr <> nil)
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNAudioPlayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
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
