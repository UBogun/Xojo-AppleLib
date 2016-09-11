#tag Class
Protected Class AppleSKEmitterNode
Inherits AppleSKNode
	#tag Method, Flags = &h0, Description = 416476616E6365732074686520656D6974746572207061727469636C652073696D756C6174696F6E2E
		Sub AdvanceSimulationTime(Seconds As Double)
		  advanceSimulationTime mid, Seconds
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub advanceSimulationTime Lib SpriteKitLibName Selector "advanceSimulationTime:" (id as ptr, value as Double)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720656D69747465724E6F64652E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getemissionAngle Lib SpriteKitLibName Selector "emissionAngle" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getemissionAngleRange Lib SpriteKitLibName Selector "emissionAngleRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumParticlesToEmit Lib SpriteKitLibName Selector "numParticlesToEmit" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleAction Lib SpriteKitLibName Selector "particleAction" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleAlpha Lib SpriteKitLibName Selector "particleAlpha" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleAlphaRange Lib SpriteKitLibName Selector "particleAlphaRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleAlphaSequence Lib SpriteKitLibName Selector "particleAlphaSequence" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleAlphaSpeed Lib SpriteKitLibName Selector "particleAlphaSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleBirthRate Lib SpriteKitLibName Selector "particleBirthRate" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleBlendMode Lib SpriteKitLibName Selector "particleBlendMode" (id as ptr) As SKBlendMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColor Lib SpriteKitLibName Selector "particleColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorAlphaRange Lib SpriteKitLibName Selector "particleColorAlphaRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorAlphaSpeed Lib SpriteKitLibName Selector "particleColorAlphaSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorBlendFactor Lib SpriteKitLibName Selector "particleColorBlendFactor" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorBlendFactorRange Lib SpriteKitLibName Selector "particleColorBlendFactorRange" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorBlendFactorSequence Lib SpriteKitLibName Selector "particleColorBlendFactorSequence" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorBlendFactorSpeed Lib SpriteKitLibName Selector "particleColorBlendFactorSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorBlueRange Lib SpriteKitLibName Selector "particleColorBlueRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorBlueSpeed Lib SpriteKitLibName Selector "particleColorBlueSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorGreenRange Lib SpriteKitLibName Selector "particleColorGreenRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorGreenSpeed Lib SpriteKitLibName Selector "particleColorGreenSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorRedRange Lib SpriteKitLibName Selector "particleColorRedRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorRedSpeed Lib SpriteKitLibName Selector "particleColorRedSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleColorSequence Lib SpriteKitLibName Selector "particleColorSequence" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleLifetime Lib SpriteKitLibName Selector "particleLifetime" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleLifetimeRange Lib SpriteKitLibName Selector "particleLifetimeRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticlePosition Lib SpriteKitLibName Selector "particlePosition" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticlePositionRange Lib SpriteKitLibName Selector "particlePositionRange" (id as ptr) As FoundationFrameWork.cgvector
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleRenderOrder Lib SpriteKitLibName Selector "particleRenderOrder" (id as ptr) As SKParticleRenderOrder
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleRotation Lib SpriteKitLibName Selector "particleRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleRotationRange Lib SpriteKitLibName Selector "particleRotationRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleRotationSpeed Lib SpriteKitLibName Selector "particleRotationSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleScale Lib SpriteKitLibName Selector "particleScale" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleScaleRange Lib SpriteKitLibName Selector "particleScaleRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleScaleSequence Lib SpriteKitLibName Selector "particleScaleSequence" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleScaleSpeed Lib SpriteKitLibName Selector "particleScaleSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleSize Lib SpriteKitLibName Selector "particleSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleSpeed Lib SpriteKitLibName Selector "particleSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleSpeedRange Lib SpriteKitLibName Selector "particleSpeedRange" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleTexture Lib SpriteKitLibName Selector "particleTexture" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparticleZPosition Lib SpriteKitLibName Selector "particleZPosition" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettargetNode Lib SpriteKitLibName Selector "targetNode" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getxAcceleration Lib SpriteKitLibName Selector "xAcceleration" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getyAcceleration Lib SpriteKitLibName Selector "yAcceleration" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C206578697374696E67207061727469636C657320616E64207265737461727473207468652073696D756C6174696F6E2E
		Sub ResetSimulation()
		  resetSimulation mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub resetSimulation Lib SpriteKitLibName Selector "resetSimulation" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setemissionAngle Lib SpriteKitLibName Selector "setEmissionAngle:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setemissionAngleRange Lib SpriteKitLibName Selector "setEmissionAngleRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setnumParticlesToEmit Lib SpriteKitLibName Selector "setNumParticlesToEmit:" (id as ptr, value as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleAction Lib SpriteKitLibName Selector "setParticleAction:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleAlpha Lib SpriteKitLibName Selector "setParticleAlpha:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleAlphaRange Lib SpriteKitLibName Selector "setParticleAlphaRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleAlphaSequence Lib SpriteKitLibName Selector "setParticleAlphaSequence:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleAlphaSpeed Lib SpriteKitLibName Selector "setParticleAlphaSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleBirthRate Lib SpriteKitLibName Selector "setParticleBirthRate:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleBlendMode Lib SpriteKitLibName Selector "setParticleBlendMode:" (id as ptr, valiue as SKBlendMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColor Lib SpriteKitLibName Selector "setParticleColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorAlphaRange Lib SpriteKitLibName Selector "setParticleColorAlphaRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorAlphaSpeed Lib SpriteKitLibName Selector "setParticleColorAlphaSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorBlendFactor Lib SpriteKitLibName Selector "setParticleColorBlendFactor:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorBlendFactorRange Lib SpriteKitLibName Selector "setParticleColorBlendFactorRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorBlendFactorSequence Lib SpriteKitLibName Selector "setParticleColorBlendFactorSequence:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorBlendFactorSpeed Lib SpriteKitLibName Selector "setParticleColorBlendFactorSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorBlueRange Lib SpriteKitLibName Selector "setParticleColorBlueRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorBlueSpeed Lib SpriteKitLibName Selector "setParticleColorBlueSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorGreenRange Lib SpriteKitLibName Selector "setParticleColorGreenRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorGreenSpeed Lib SpriteKitLibName Selector "setParticleColorGreenSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorRedRange Lib SpriteKitLibName Selector "setParticleColorRedRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorRedSpeed Lib SpriteKitLibName Selector "setParticleColorRedSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleColorSequence Lib SpriteKitLibName Selector "setParticleColorSequence:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleLifetime Lib SpriteKitLibName Selector "setParticleLifetime:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleLifetimeRange Lib SpriteKitLibName Selector "setParticleLifetimeRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticlePosition Lib SpriteKitLibName Selector "setParticlePosition:" (id as ptr, value as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticlePositionRange Lib SpriteKitLibName Selector "setParticlePositionRange:" (id as ptr, value as FoundationFrameWork . CGVEctor)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleRenderOrder Lib SpriteKitLibName Selector "setParticleRenderOrder:" (id as ptr, value as SKParticleRenderOrder)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleRotation Lib SpriteKitLibName Selector "setParticleRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleRotationRange Lib SpriteKitLibName Selector "setParticleRotationRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleRotationSpeed Lib SpriteKitLibName Selector "setParticleRotationSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleScale Lib SpriteKitLibName Selector "setParticleScale:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleScaleRange Lib SpriteKitLibName Selector "setParticleScaleRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleScaleSequence Lib SpriteKitLibName Selector "setParticleScaleSequence:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleScaleSpeed Lib SpriteKitLibName Selector "setParticleScaleSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleSize Lib SpriteKitLibName Selector "setParticleSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleSpeed Lib SpriteKitLibName Selector "setParticleSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleSpeedRange Lib SpriteKitLibName Selector "setParticleSpeedRange:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleTexture Lib SpriteKitLibName Selector "setParticleTexture:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setparticleZPosition Lib SpriteKitLibName Selector "setParticleZPosition:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settargetNode Lib SpriteKitLibName Selector "setTargetNode:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setxAcceleration Lib SpriteKitLibName Selector "setXAcceleration:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setyAcceleration Lib SpriteKitLibName Selector "setYAcceleration:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKEmitterNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206176657261676520696E697469616C20646972656374696F6E206F662061207061727469636C652C2065787072657373656420617320616E20616E676C6520696E2072616469616E732E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getemissionAngle(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setEmissionAngle mid, value
			  
			End Set
		#tag EndSetter
		EmissionAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E280997320696E697469616C2073706565642C2065787072657373656420617320616E20616E676C6520696E2072616469616E732E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getemissionAngleRange(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setEmissionAngleRange mid, value
			  
			End Set
		#tag EndSetter
		EmissionAngleRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F72696573206F662070687973696373206669656C64732063616E20657865727420666F72636573206F6E20746865207061727469636C65732E2044656661756C7420616C6C206269747320636C6561722E
		#tag Getter
			Get
			  return SpriteKitFramework.getfieldBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setFieldBitMask mid, value
			End Set
		#tag EndSetter
		FieldBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320616E20616374696F6E206578656375746564206279206E6577207061727469636C65732E
		#tag Getter
			Get
			  Return AppleSKAction.MakeFromPtr (getparticleAction(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleAction mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		ParticleAction As AppleSKAction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061766572616765207374617274696E6720616C7068612076616C756520666F722061207061727469636C652E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getparticleAlpha (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleAlpha mid, value
			End Set
		#tag EndSetter
		ParticleAlpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E2809973207374617274696E6720616C7068612076616C75652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleAlphaRange (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleAlphaRange mid, value
			End Set
		#tag EndSetter
		ParticleAlphaRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073657175656E6365207573656420746F20737065636966792074686520616C7068612076616C7565206F662061207061727469636C65206F76657220697473206C69666574696D652E2044656661756C74204E696C2E0A49662061206E6F6E2D6E696C2076616C7565206973207370656369666965642C207468656E20746865207061727469636C65416C7068612C207061727469636C65416C70686152616E67652C20616E64207061727469636C65416C70686153706565642070726F70657274696573206172652069676E6F7265642E20496E73746561642C207468652073657175656E6365206973207573656420746F20737065636966792074686520616C7068612076616C75652E
		#tag Getter
			Get
			  return AppleSKKeyframeSequence.MakeFromPtr(getparticleAlphaSequence(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleAlphaSequence mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ParticleAlphaSequence As AppleSKKeyframeSequence
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652061742077686963682074686520616C7068612076616C7565206F662061207061727469636C65206368616E67657320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleAlphaSpeed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleAlphaSpeed mid, value
			End Set
		#tag EndSetter
		ParticleAlphaSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072617465206174207768696368206E6577207061727469636C65732061726520637265617465642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleBirthRate(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleBirthRate mid, value
			  
			End Set
		#tag EndSetter
		ParticleBirthRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C656E64696E67206D6F6465207573656420746F20626C656E64207061727469636C657320696E746F20746865206672616D656275666665722E2044656661756C7420416C7068612E
		#tag Getter
			Get
			  return getparticleBlendMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleBlendMode mid, value
			End Set
		#tag EndSetter
		ParticleBlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206176657261676520696E697469616C20636F6C6F7220666F722061207061727469636C652E2044656661756C74204170706C65436F6C6F722E436C656172436F6C6F722E0A41207061727469636C65E280997320636F6C6F7220697320626C656E6465642077697468207468652074657874757265207573696E672069747320626C656E6420636F6C6F7220666163746F722E
		#tag Getter
			Get
			  Return AppleColor.MakeFromPtr (getparticleColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleColor mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		ParticleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722074686520616C70686120636F6D706F6E656E74206F662061207061727469636C65E280997320696E697469616C20636F6C6F722E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorAlphaRange (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorAlphaRange mid, value
			End Set
		#tag EndSetter
		ParticleColorAlphaRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652061742077686963682074686520616C70686120636F6D706F6E656E74206F662061207061727469636C65E280997320636F6C6F72206368616E67657320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorAlphaSpeed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorAlphaSpeed mid, value
			End Set
		#tag EndSetter
		ParticleColorAlphaSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061766572616765207374617274696E672076616C756520666F722074686520636F6C6F7220626C656E6420666163746F722E2044656661756C7420302E30203D206F6E6C792075736520546578747572652E
		#tag Getter
			Get
			  return getparticleColorBlendFactor (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorBlendFactor mid, value
			End Set
		#tag EndSetter
		ParticleColorBlendFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E2809973207374617274696E6720636F6C6F7220626C656E6420666163746F722E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorBlendFactorRange (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorBlendFactorRange mid, value
			End Set
		#tag EndSetter
		ParticleColorBlendFactorRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073657175656E6365207573656420746F20737065636966792074686520636F6C6F7220626C656E6420666163746F72206F662061207061727469636C65206F76657220697473206C69666574696D652E2044656661756C74206E696C2E200A49662061206E6F6E2D6E696C2076616C7565206973207370656369666965642C207468656E20746865207061727469636C65436F6C6F72426C656E64466163746F722C207061727469636C65436F6C6F72426C656E64466163746F7252616E67652C20616E64207061727469636C65436F6C6F72426C656E64466163746F7253706565642070726F70657274696573206172652069676E6F7265642E20496E73746561642C207468652073657175656E6365206973207573656420746F20737065636966792074686520636F6C6F7220626C656E6420666163746F722E
		#tag Getter
			Get
			  return AppleSKKeyframeSequence.MakeFromPtr(getparticleColorBlendFactorSequence(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorBlendFactorSequence mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ParticleColorBlendFactorSequence As AppleSKKeyframeSequence
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652061742077686963682074686520636F6C6F7220626C656E6420666163746F72206368616E67657320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorBlendFactorSpeed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorBlendFactorSpeed mid, value
			End Set
		#tag EndSetter
		ParticleColorBlendFactorSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722074686520626C756520636F6D706F6E656E74206F662061207061727469636C65E280997320696E697469616C20636F6C6F722E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorBlueRange (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorBlueRange mid, value
			End Set
		#tag EndSetter
		ParticleColorBlueRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652061742077686963682074686520626C756520636F6D706F6E656E74206F662061207061727469636C65E280997320636F6C6F72206368616E67657320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorBlueSpeed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorBlueSpeed mid, value
			End Set
		#tag EndSetter
		ParticleColorBlueSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722074686520677265656E20636F6D706F6E656E74206F662061207061727469636C65E280997320696E697469616C20636F6C6F722E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorGreenRange(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleColorGreenRange mid, value
			  
			End Set
		#tag EndSetter
		ParticleColorGreenRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652061742077686963682074686520677265656E20636F6D706F6E656E74206F662061207061727469636C65E280997320636F6C6F72206368616E67657320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorGreenSpeed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorGreenSpeed mid, value
			End Set
		#tag EndSetter
		ParticleColorGreenSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F72207468652072656420636F6D706F6E656E74206F662061207061727469636C65E280997320696E697469616C20636F6C6F722E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorRedRange (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorRedRange mid, value
			End Set
		#tag EndSetter
		ParticleColorRedRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072617465206174207768696368207468652072656420636F6D706F6E656E74206F662061207061727469636C65E280997320636F6C6F72206368616E67657320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleColorRedSpeed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorRedSpeed mid, value
			End Set
		#tag EndSetter
		ParticleColorRedSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073657175656E6365207573656420746F20737065636966792074686520636F6C6F7220636F6D706F6E656E7473206F662061207061727469636C65206F76657220697473206C69666574696D652E2044656661756C74204E696C2E0A49662061206E6F6E2D6E696C2076616C7565206973207370656369666965642C207468656E20746865207061727469636C65436F6C6F722C207061727469636C65436F6C6F72416C70686152616E67652C207061727469636C65436F6C6F7252656452616E67652C207061727469636C65436F6C6F72477265656E52616E67652C207061727469636C65436F6C6F72426C756552616E67652C207061727469636C65436F6C6F72416C70686153706565642C207061727469636C65436F6C6F7252656453706565642C207061727469636C65436F6C6F72477265656E53706565642C20616E64207061727469636C65436F6C6F72426C756553706565642070726F70657274696573206172652069676E6F7265642E20496E73746561642C207468652073657175656E6365206973207573656420746F207370656369667920746865207061727469636C6520636F6C6F722E
		#tag Getter
			Get
			  return AppleSKKeyframeSequence.MakeFromPtr(getparticleColorSequence(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColorSequence mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ParticleColorSequence As AppleSKKeyframeSequence
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061766572616765206C69666574696D65206F662061207061727469636C652C20696E207365636F6E64732E2044656661756C7420302E30203D20456E646C657373
		#tag Getter
			Get
			  return getparticleLifetime(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleLifetime mid, value
			  
			End Set
		#tag EndSetter
		ParticleLifetime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E2809973206C69666574696D652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleLifetimeRange(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleLifetimeRange mid, value
			  
			End Set
		#tag EndSetter
		ParticleLifetimeRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061766572616765207374617274696E6720706F736974696F6E20666F722061207061727469636C652E2044656661756C742028302E302C20302E3029
		#tag Getter
			Get
			  return getparticlePosition (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticlePosition mid, value
			  
			End Set
		#tag EndSetter
		ParticlePosition As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E280997320706F736974696F6E2E
		#tag Getter
			Get
			  return getparticlePositionRange (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticlePositionRange mid, value
			End Set
		#tag EndSetter
		ParticlePositionRange As FoundationFramework.CGVector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7264657220696E2077686963682074686520656D6974746572E2809973207061727469636C6573206172652072656E64657265642E20417661696C61626C652073696E6365204F53582031302E31312E2044656661756C74204F6C646573744C6173742E
		#tag Getter
			Get
			  if RespondsToSelector ("particleRenderOrder", classptr) then return getparticleRenderOrder (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setParticleRenderOrder:", classptr) then setparticleRenderOrder mid, value
			End Set
		#tag EndSetter
		ParticleRenderOrder As SKParticleRenderOrder
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206176657261676520696E697469616C20726F746174696F6E206F662061207061727469636C652C2065787072657373656420617320616E20616E676C6520696E2072616469616E732E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleRotation(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleRotation mid, value
			  
			End Set
		#tag EndSetter
		ParticleRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E280997320696E697469616C20726F746174696F6E2C2065787072657373656420617320616E20616E676C6520696E2072616469616E732E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleRotationRange(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleRotationRange mid, value
			  
			End Set
		#tag EndSetter
		ParticleRotationRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073706565642061742077686963682061207061727469636C6520726F74617465732C2065787072657373656420696E2072616469616E7320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleRotationSpeed(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleRotationSpeed mid, value
			  
			End Set
		#tag EndSetter
		ParticleRotationSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206176657261676520696E697469616C207363616C6520666163746F72206F662061207061727469636C652E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getparticleScale (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleScale mid, value
			End Set
		#tag EndSetter
		ParticleScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E280997320696E697469616C207363616C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleScaleRange (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleScaleRange mid, value
			End Set
		#tag EndSetter
		ParticleScaleRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073657175656E6365207573656420746F207370656369667920746865207363616C6520666163746F72206F662061207061727469636C65206F76657220697473206C69666574696D652E
		#tag Getter
			Get
			  return AppleSKKeyframeSequence.MakeFromPtr(getparticleScaleSequence(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleScaleSequence mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ParticleScaleSequence As AppleSKKeyframeSequence
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652061742077686963682061207061727469636C65E2809973207363616C6520666163746F72206368616E67657320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleScaleSpeed (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleScaleSpeed mid, value
			End Set
		#tag EndSetter
		ParticleScaleSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374617274696E672073697A65206F662065616368207061727469636C652E2044656661756C742069732028302E302C302E3029206F72207468652073697A65206F6620746865205061727469636C65546578747572652E20496620796F752061737369676E6564206E6F20746578747572652C20796F75206D75737420646566696E6520746869732076616C75652E0A
		#tag Getter
			Get
			  return getparticleSize (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleSize mid, value
			End Set
		#tag EndSetter
		ParticleSize As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206176657261676520696E697469616C207370656564206F662061206E6577207061727469636C6520696E20706F696E747320706572207365636F6E642E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getparticleSpeed(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleSpeed mid, value
			  
			End Set
		#tag EndSetter
		ParticleSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F6620616C6C6F7765642072616E646F6D2076616C75657320666F722061207061727469636C65E280997320696E697469616C2073706565642E2044656661756C7420302C302E
		#tag Getter
			Get
			  return getparticleSpeedRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleSpeedRange mid, value
			  
			End Set
		#tag EndSetter
		ParticleSpeedRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207061727469636C65732074686520656D69747465722073686F756C6420656D6974206265666F72652073746F7070696E672E2044656661756C742030203D20456E646C6573732E
		#tag Getter
			Get
			  return getnumParticlesToEmit (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setNumParticlesToEmit mid, value
			  
			End Set
		#tag EndSetter
		ParticlesToEmit As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787475726520746F2075736520746F2072656E6465722061207061727469636C652E2044656661756C74204E696C203D20636F6C6F7265642072656374616E676C652E
		#tag Getter
			Get
			  return AppleSKTexture.MakeFromPtr (getparticleTexture (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleTexture id, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		ParticleTexture As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061766572616765207374617274696E67206465707468206F662061207061727469636C652E
		#tag Getter
			Get
			  return getparticleZPosition(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleZPosition mid, value
			  
			End Set
		#tag EndSetter
		ParticleZPosition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120637573746F6D20736861646572207573656420746F2064657465726D696E6520686F77207061727469636C6573206172652072656E64657265642E
		#tag Getter
			Get
			  return AppleSKShader.MakeFromPtr (getshader (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShader mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		Shader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746172676574206E6F64652077686963682072656E646572732074686520656D6974746572E2809973207061727469636C65732E
		#tag Getter
			Get
			  return AppleSKNode.MakeFromPtr (gettargetNode (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTargetNode mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		TargetNode As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616363656C65726174696F6E20746F206170706C7920746F2061207061727469636C65E280997320686F72697A6F6E74616C2076656C6F636974792E2044656661756C7420302E302E0A
		#tag Getter
			Get
			  return getxAcceleration(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setXAcceleration mid, value
			  
			End Set
		#tag EndSetter
		XAcceleration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616363656C65726174696F6E20746F206170706C7920746F2061207061727469636C65E280997320766572746963616C2076656C6F636974792E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getyAcceleration(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setYAcceleration mid, value
			  
			End Set
		#tag EndSetter
		YAcceleration As Double
	#tag EndComputedProperty


	#tag Enum, Name = SKParticleRenderOrder, Type = Integer, Flags = &h0
		OldestLast
		  OldestFirst
		DontCare
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmissionAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmissionAngleRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldBitMask"
			Group="Behavior"
			Type="UInt32"
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
			Name="ParticleAlpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAlphaRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAlphaSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleBirthRate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleBlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorAlphaRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorAlphaSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlendFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlendFactorRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlendFactorSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlueRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlueSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorGreenRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorGreenSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorRedRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorRedSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleLifetime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleLifetimeRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleRenderOrder"
			Group="Behavior"
			Type="SKParticleRenderOrder"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleRotationRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleRotationSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleScaleRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleScaleSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleSpeedRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticlesToEmit"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
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
			Name="XAcceleration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YAcceleration"
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
