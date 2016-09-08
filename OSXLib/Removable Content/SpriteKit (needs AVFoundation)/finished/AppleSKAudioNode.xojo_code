#tag Class
Protected Class AppleSKAudioNode
Inherits AppleSKNode
	#tag Method, Flags = &h0, Description = 4372656174657320616E20617564696F206E6F64652066726F6D20616E20415620466F756E646174696F6E20617564696F206E6F64652E
		Sub Constructor(Node As AppleAVAudioNode)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, own as Boolean) -- From AppleObject
		  Super.Constructor(initWithAVAudioNode(alloc(Classptr), node.Id))
		  MHasOwnership = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20617564696F206E6F64652066726F6D20616E20617564696F206173736574207769746820746865207370656369666965642055524C2E
		Sub Constructor(URL As AppleURL)
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, own as Boolean) -- From AppleObject
		  Super.Constructor(AVFoundationFramework.initWithURL(alloc(Classptr), url.Id))
		  MHasOwnership = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20617564696F206E6F64652066726F6D20616E20617564696F206173736574207769746820746865207370656369666965642066696C656E616D652E
		Sub Constructor(Filename As CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, own as Boolean) -- From AppleObject
		  Super.Constructor(initWithFileNamed(alloc(Classptr), Filename))
		  MHasOwnership = True
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoplayLooped Lib SpriteKitLibName Selector "autoplayLooped" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getavAudioNode Lib SpriteKitLibName Selector "avAudioNode" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPositional Lib SpriteKitLibName Selector "isPositional" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithAVAudioNode Lib SpriteKitLibName Selector "initWithAVAudioNode:" (id as ptr, node as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithFileNamed Lib SpriteKitLibName Selector "initWithFileNamed:" (id as ptr, fname as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoplayLooped Lib SpriteKitLibName Selector "setAutoplayLooped:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setavAudioNode Lib SpriteKitLibName Selector "setAvAudioNode:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPositional Lib SpriteKitLibName Selector "setPositional:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
		Caution: Class exists since OSX 10.11!
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F2073686F756C6420706C617920696E2061206C6F6F70207768656E20746865206E6F646520697320616464656420746F20746865207363656E652E
		#tag Getter
			Get
			  return getautoplayLooped (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautoplayLooped mid, value
			End Set
		#tag EndSetter
		AutoplayLooped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F206E6F6465E28099732063757272656E7420617564696F2061737365742E
		#tag Getter
			Get
			  return AppleAVAudioNode.MakeFromPtr(getavAudioNode(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setavAudioNode mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AVAudioNode As AppleAVAudioNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKAudioNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206E6F6465E280997320617564696F20697320616C7465726564206261736564206F6E2074686520706F736974696F6E206F6620746865206E6F64652E
		#tag Getter
			Get
			  return getPositional (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpositional mid, value
			End Set
		#tag EndSetter
		Positional As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoplayLooped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Positional"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
