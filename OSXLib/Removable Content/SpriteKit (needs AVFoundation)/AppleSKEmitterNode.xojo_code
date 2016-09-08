#tag Class
Protected Class AppleSKEmitterNode
Inherits AppleSKNode
	#tag Method, Flags = &h0
		Sub AdvanceSimulationTime(Seconds As Double)
		  Declare Sub advanceSimulationTime lib spritekitlibname selector "advanceSimulationTime:" (id as ptr, time as double)
		  advanceSimulationTime id, Seconds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
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

	#tag Method, Flags = &h0
		Sub ResetSimulation()
		  Declare Sub resetSimulation lib spritekitlibname selector "resetSimulation" (id as ptr)
		  resetSimulation id
		End Sub
	#tag EndMethod


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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function emissionAngle lib spritekitlibname selector "emissionAngle" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function emissionAngle lib spritekitlibname selector "emissionAngle" (id as ptr) as single
			  #endif
			  return emissionAngle(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setEmissionAngle lib spritekitlibname selector "setEmissionAngle:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setEmissionAngle lib spritekitlibname selector "setEmissionAngle:" (id as ptr, value as single)
			  #endif
			  setEmissionAngle id, value
			  
			End Set
		#tag EndSetter
		EmissionAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function emissionAngleRange lib spritekitlibname selector "emissionAngleRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function emissionAngleRange lib spritekitlibname selector "emissionAngleRange" (id as ptr) as single
			  #endif
			  return emissionAngleRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setEmissionAngleRange lib spritekitlibname selector "setEmissionAngleRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setEmissionAngleRange lib spritekitlibname selector "setEmissionAngleRange:" (id as ptr, value as single)
			  #endif
			  setEmissionAngleRange id, value
			  
			End Set
		#tag EndSetter
		EmissionAngleRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function fieldBitMask lib spritekitlibname selector "fieldBitMask" (id as ptr) as UInt32
			  return fieldBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setFieldBitMask lib spritekitlibname selector "setFieldBitMask:" (id as ptr, value as UInt32)
			  setFieldBitMask id, value
			End Set
		#tag EndSetter
		FieldBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function particleAction lib spritekitlibname selector "particleAction" (id as ptr) as Ptr
			  Return AppleSKAction.MakeFromPtr (particleAction(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setParticleAction lib spritekitlibname selector "setParticleAction:" (id as ptr, value as Ptr)
			  setParticleAction id, value.id
			  
			End Set
		#tag EndSetter
		ParticleAction As AppleSKAction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleAlpha lib spritekitlibname selector "particleAlpha" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleAlpha lib spritekitlibname selector "particleAlpha" (id as ptr) as single
			  #endif
			  return particleAlpha(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleAlpha lib spritekitlibname selector "setParticleAlpha:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleAlpha lib spritekitlibname selector "setParticleAlpha:" (id as ptr, value as single)
			  #endif
			  setParticleAlpha id, value
			  
			End Set
		#tag EndSetter
		ParticleAlpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleAlphaRange lib spritekitlibname selector "particleAlphaRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleAlphaRange lib spritekitlibname selector "particleAlphaRange" (id as ptr) as single
			  #endif
			  return particleAlphaRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleAlphaRange lib spritekitlibname selector "setParticleAlphaRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleAlphaRange lib spritekitlibname selector "setParticleAlphaRange:" (id as ptr, value as single)
			  #endif
			  setParticleAlphaRange id, value
			  
			End Set
		#tag EndSetter
		ParticleAlphaRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleAlphaSpeed lib spritekitlibname selector "particleAlphaSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleAlphaSpeed lib spritekitlibname selector "particleAlphaSpeed" (id as ptr) as single
			  #endif
			  return particleAlphaSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleAlphaSpeed lib spritekitlibname selector "setParticleAlphaSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleAlphaSpeed lib spritekitlibname selector "setParticleAlphaSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleAlphaSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleAlphaSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleBirthRate lib spritekitlibname selector "particleBirthRate" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleBirthRate lib spritekitlibname selector "particleBirthRate" (id as ptr) as single
			  #endif
			  return particleBirthRate(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleBirthRate lib spritekitlibname selector "setParticleBirthRate:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleBirthRate lib spritekitlibname selector "setParticleBirthRate:" (id as ptr, value as single)
			  #endif
			  setParticleBirthRate id, value
			  
			End Set
		#tag EndSetter
		ParticleBirthRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function particleBlendMode lib spritekitlibname selector "particleBlendMode" (id as ptr) as SKBlendMode
			  return particleBlendMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setParticleBlendMode lib spritekitlibname selector "setParticleBlendMode:" (id as ptr, value as SKBlendMode)
			  setParticleBlendMode (id, value)
			End Set
		#tag EndSetter
		ParticleBlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function particleColor lib spritekitlibname selector "particleColor" (id as ptr) as Ptr
			  Return AppleColor.MakeFromPtr (particleColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setParticleColor lib spritekitlibname selector "setParticleColor:" (id as ptr, value as Ptr)
			  setParticleColor id, value.id
			  
			End Set
		#tag EndSetter
		ParticleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorAlphaRange lib spritekitlibname selector "particleColorAlphaRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorAlphaRange lib spritekitlibname selector "particleColorAlphaRange" (id as ptr) as single
			  #endif
			  return particleColorAlphaRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorAlphaRange lib spritekitlibname selector "setParticleColorAlphaRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorAlphaRange lib spritekitlibname selector "setParticleColorAlphaRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorAlphaRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorAlphaRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorAlphaSpeed lib spritekitlibname selector "particleColorAlphaSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorAlphaSpeed lib spritekitlibname selector "particleColorAlphaSpeed" (id as ptr) as single
			  #endif
			  return particleColorAlphaSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorAlphaSpeed lib spritekitlibname selector "setParticleColorAlphaSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorAlphaSpeed lib spritekitlibname selector "setParticleColorAlphaSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorAlphaSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorAlphaSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlendFactor lib spritekitlibname selector "particleColorBlendFactor" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlendFactor lib spritekitlibname selector "particleColorBlendFactor" (id as ptr) as single
			  #endif
			  return particleColorBlendFactor(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlendFactor lib spritekitlibname selector "setParticleColorBlendFactor:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlendFactor lib spritekitlibname selector "setParticleColorBlendFactor:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlendFactor id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlendFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlendFactorRange lib spritekitlibname selector "particleColorBlendFactorRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlendFactorRange lib spritekitlibname selector "particleColorBlendFactorRange" (id as ptr) as single
			  #endif
			  return particleColorBlendFactorRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlendFactorRange lib spritekitlibname selector "setParticleColorBlendFactorRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlendFactorRange lib spritekitlibname selector "setParticleColorBlendFactorRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlendFactorRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlendFactorRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlendFactorSpeed lib spritekitlibname selector "particleColorBlendFactorSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlendFactorSpeed lib spritekitlibname selector "particleColorBlendFactorSpeed" (id as ptr) as single
			  #endif
			  return particleColorBlendFactorSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlendFactorSpeed lib spritekitlibname selector "setParticleColorBlendFactorSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlendFactorSpeed lib spritekitlibname selector "setParticleColorBlendFactorSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlendFactorSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlendFactorSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlueRange lib spritekitlibname selector "particleColorBlueRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlueRange lib spritekitlibname selector "particleColorBlueRange" (id as ptr) as single
			  #endif
			  return particleColorBlueRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlueRange lib spritekitlibname selector "setParticleColorBlueRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlueRange lib spritekitlibname selector "setParticleColorBlueRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlueRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlueRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlueSpeed lib spritekitlibname selector "particleColorBlueSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlueSpeed lib spritekitlibname selector "particleColorBlueSpeed" (id as ptr) as single
			  #endif
			  return particleColorBlueSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlueSpeed lib spritekitlibname selector "setParticleColorBlueSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlueSpeed lib spritekitlibname selector "setParticleColorBlueSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlueSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlueSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorGreenRange lib spritekitlibname selector "particleColorGreenRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorGreenRange lib spritekitlibname selector "particleColorGreenRange" (id as ptr) as single
			  #endif
			  return particleColorGreenRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorGreenRange lib spritekitlibname selector "setParticleColorGreenRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorGreenRange lib spritekitlibname selector "setParticleColorGreenRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorGreenRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorGreenRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorGreenSpeed lib spritekitlibname selector "particleColorGreenSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorGreenSpeed lib spritekitlibname selector "particleColorGreenSpeed" (id as ptr) as single
			  #endif
			  return particleColorGreenSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorGreenSpeed lib spritekitlibname selector "setParticleColorGreenSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorGreenSpeed lib spritekitlibname selector "setParticleColorGreenSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorGreenSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorGreenSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorRedRange lib spritekitlibname selector "particleColorRedRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorRedRange lib spritekitlibname selector "particleColorRedRange" (id as ptr) as single
			  #endif
			  return particleColorRedRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorRedRange lib spritekitlibname selector "setParticleColorRedRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorRedRange lib spritekitlibname selector "setParticleColorRedRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorRedRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorRedRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorRedSpeed lib spritekitlibname selector "particleColorRedSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorRedSpeed lib spritekitlibname selector "particleColorRedSpeed" (id as ptr) as single
			  #endif
			  return particleColorRedSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorRedSpeed lib spritekitlibname selector "setParticleColorRedSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorRedSpeed lib spritekitlibname selector "setParticleColorRedSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorRedSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorRedSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleLifetime lib spritekitlibname selector "particleLifetime" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleLifetime lib spritekitlibname selector "particleLifetime" (id as ptr) as single
			  #endif
			  return particleLifetime(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleLifetime lib spritekitlibname selector "setParticleLifetime:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleLifetime lib spritekitlibname selector "setParticleLifetime:" (id as ptr, value as single)
			  #endif
			  setParticleLifetime id, value
			  
			End Set
		#tag EndSetter
		ParticleLifetime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleLifetimeRange lib spritekitlibname selector "particleLifetimeRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleLifetimeRange lib spritekitlibname selector "particleLifetimeRange" (id as ptr) as single
			  #endif
			  return particleLifetimeRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleLifetimeRange lib spritekitlibname selector "setParticleLifetimeRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleLifetimeRange lib spritekitlibname selector "setParticleLifetimeRange:" (id as ptr, value as single)
			  #endif
			  setParticleLifetimeRange id, value
			  
			End Set
		#tag EndSetter
		ParticleLifetimeRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particlePosition lib spritekitlibname selector "particlePosition" (id as ptr) as FoundationFramework.NSPoint
			    return particlePosition (id)
			  #elseif Target32Bit
			    declare function particlePosition lib spritekitlibname selector "particlePosition" (id as ptr) as FoundationFramework.NSPoint32Bit
			    return particlePosition(id).toNSPoint
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticlePosition lib spritekitlibname selector "setParticlePosition:" (id as ptr, value as FoundationFramework.NSPoint)
			    setParticlePosition id, value
			  #elseif Target32Bit
			    declare sub setParticlePosition lib spritekitlibname selector "setParticlePosition:" (id as ptr, value as FoundationFramework.NSPoint32Bit)
			    setParticlePosition id, value.toNSPoint32
			  #endif
			  
			End Set
		#tag EndSetter
		ParticlePosition As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particlePositionRange lib spritekitlibname selector "particlePositionRange" (id as ptr) as FoundationFramework.CGVector
			    return particlePositionRange (id)
			  #elseif Target32Bit
			    declare function particlePositionRange lib spritekitlibname selector "particlePositionRange" (id as ptr) as FoundationFramework.CGVector32Bit
			    return particlePositionRange(id).toCGVector
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticlePositionRange lib spritekitlibname selector "setParticlePositionRange:" (id as ptr, value as FoundationFramework.CGVector)
			    setParticlePositionRange id, value
			  #elseif Target32Bit
			    declare sub setParticlePositionRange lib spritekitlibname selector "setParticlePositionRange:" (id as ptr, value as FoundationFramework.CGVector32Bit)
			    setParticlePositionRange id, value.toCGVector32
			  #endif
			  
			End Set
		#tag EndSetter
		ParticlePositionRange As FoundationFramework.CGVector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleRotation lib spritekitlibname selector "particleRotation" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleRotation lib spritekitlibname selector "particleRotation" (id as ptr) as single
			  #endif
			  return particleRotation(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleRotation lib spritekitlibname selector "setParticleRotation:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleRotation lib spritekitlibname selector "setParticleRotation:" (id as ptr, value as single)
			  #endif
			  setParticleRotation id, value
			  
			End Set
		#tag EndSetter
		ParticleRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleRotationRange lib spritekitlibname selector "particleRotationRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleRotationRange lib spritekitlibname selector "particleRotationRange" (id as ptr) as single
			  #endif
			  return particleRotationRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleRotationRange lib spritekitlibname selector "setParticleRotationRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleRotationRange lib spritekitlibname selector "setParticleRotationRange:" (id as ptr, value as single)
			  #endif
			  setParticleRotationRange id, value
			  
			End Set
		#tag EndSetter
		ParticleRotationRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleRotationSpeed lib spritekitlibname selector "particleRotationSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleRotationSpeed lib spritekitlibname selector "particleRotationSpeed" (id as ptr) as single
			  #endif
			  return particleRotationSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleRotationSpeed lib spritekitlibname selector "setParticleRotationSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleRotationSpeed lib spritekitlibname selector "setParticleRotationSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleRotationSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleRotationSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleScale lib spritekitlibname selector "particleScale" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleScale lib spritekitlibname selector "particleScale" (id as ptr) as single
			  #endif
			  return particleScale(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleScale lib spritekitlibname selector "setParticleScale:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleScale lib spritekitlibname selector "setParticleScale:" (id as ptr, value as single)
			  #endif
			  setParticleScale id, value
			  
			End Set
		#tag EndSetter
		ParticleScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleScaleRange lib spritekitlibname selector "particleScaleRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleScaleRange lib spritekitlibname selector "particleScaleRange" (id as ptr) as single
			  #endif
			  return particleScaleRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleScaleRange lib spritekitlibname selector "setParticleScaleRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleScaleRange lib spritekitlibname selector "setParticleScaleRange:" (id as ptr, value as single)
			  #endif
			  setParticleScaleRange id, value
			  
			End Set
		#tag EndSetter
		ParticleScaleRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleScaleSpeed lib spritekitlibname selector "particleScaleSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleScaleSpeed lib spritekitlibname selector "particleScaleSpeed" (id as ptr) as single
			  #endif
			  return particleScaleSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleScaleSpeed lib spritekitlibname selector "setParticleScaleSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleScaleSpeed lib spritekitlibname selector "setParticleScaleSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleScaleSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleScaleSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleSize lib spritekitlibname selector "particleSize" (id as ptr) as FoundationFramework.NSSize
			    return particleSize (id)
			  #elseif Target32Bit
			    declare function particleSize lib spritekitlibname selector "particleSize" (id as ptr) as FoundationFramework.NSSize32Bit
			    return particleSize(id).toNSSize
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleSize lib spritekitlibname selector "setParticleSize:" (id as ptr, value as FoundationFramework.NSSize)
			    setParticleSize id, value
			  #elseif Target32Bit
			    declare sub setParticleSize lib spritekitlibname selector "setParticleSize:" (id as ptr, value as FoundationFramework.NSSize32Bit)
			    setParticleSize id, value.toNSSize32
			  #endif
			  
			End Set
		#tag EndSetter
		ParticleSize As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleSpeed lib spritekitlibname selector "particleSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleSpeed lib spritekitlibname selector "particleSpeed" (id as ptr) as single
			  #endif
			  return particleSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleSpeed lib spritekitlibname selector "setParticleSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleSpeed lib spritekitlibname selector "setParticleSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleSpeedRange lib spritekitlibname selector "particleSpeedRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleSpeedRange lib spritekitlibname selector "particleSpeedRange" (id as ptr) as single
			  #endif
			  return particleSpeedRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleSpeedRange lib spritekitlibname selector "setParticleSpeedRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleSpeedRange lib spritekitlibname selector "setParticleSpeedRange:" (id as ptr, value as single)
			  #endif
			  setParticleSpeedRange id, value
			  
			End Set
		#tag EndSetter
		ParticleSpeedRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function numParticlesToEmit lib spritekitlibname selector "numParticlesToEmit" (id as ptr) as UInteger
			  return numParticlesToEmit (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setNumParticlesToEmit lib spritekitlibname selector "setNumParticlesToEmit:" (id as ptr, value as uinteger)
			  setNumParticlesToEmit id, value
			  
			End Set
		#tag EndSetter
		ParticlesToEmit As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function particleTexture lib spritekitlibname selector "particleTexture" (id as ptr) as ptr
			  return AppleSKTexture.MakeFromPtr (particleTexture (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setParticleTexture lib spritekitlibname selector "setParticleTexture:" (id as ptr, value as ptr)
			  setParticleTexture id, value.id
			  
			End Set
		#tag EndSetter
		ParticleTexture As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleZPosition lib spritekitlibname selector "particleZPosition" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleZPosition lib spritekitlibname selector "particleZPosition" (id as ptr) as single
			  #endif
			  return particleZPosition(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleZPosition lib spritekitlibname selector "setParticleZPosition:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleZPosition lib spritekitlibname selector "setParticleZPosition:" (id as ptr, value as single)
			  #endif
			  setParticleZPosition id, value
			  
			End Set
		#tag EndSetter
		ParticleZPosition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleZPositionRange lib spritekitlibname selector "particleZPositionRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleZPositionRange lib spritekitlibname selector "particleZPositionRange" (id as ptr) as single
			  #endif
			  return particleZPositionRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleZPositionRange lib spritekitlibname selector "setParticleZPositionRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleZPositionRange lib spritekitlibname selector "setParticleZPositionRange:" (id as ptr, value as single)
			  #endif
			  setParticleZPositionRange id, value
			  
			End Set
		#tag EndSetter
		ParticleZPositionRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleZPositionSpeed lib spritekitlibname selector "particleZPositionSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleZPositionSpeed lib spritekitlibname selector "particleZPositionSpeed" (id as ptr) as single
			  #endif
			  return particleZPositionSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleZPositionSpeed lib spritekitlibname selector "setParticleZPositionSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleZPositionSpeed lib spritekitlibname selector "setParticleZPositionSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleZPositionSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleZPositionSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function shader lib spritekitlibname selector "shader" (id as ptr) as ptr
			  return AppleSKShader.MakeFromPtr (shader (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShader lib spritekitlibname selector "setShader:" (id as ptr, value as ptr)
			  setShader id, value.id
			  
			End Set
		#tag EndSetter
		Shader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function targetNode lib spritekitlibname selector "targetNode" (id as ptr) as ptr
			  return AppleSKNode.MakeFromPtr (targetNode (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setTargetNode lib spritekitlibname selector "setTargetNode:" (id as ptr, value as ptr)
			  setTargetNode id, value.id
			  
			End Set
		#tag EndSetter
		TargetNode As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function xAcceleration lib spritekitlibname selector "xAcceleration" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function xAcceleration lib spritekitlibname selector "xAcceleration" (id as ptr) as single
			  #endif
			  return xAcceleration(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setXAcceleration lib spritekitlibname selector "setXAcceleration:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setXAcceleration lib spritekitlibname selector "setXAcceleration:" (id as ptr, value as single)
			  #endif
			  setXAcceleration id, value
			  
			End Set
		#tag EndSetter
		XAcceleration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function yAcceleration lib spritekitlibname selector "yAcceleration" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function yAcceleration lib spritekitlibname selector "yAcceleration" (id as ptr) as single
			  #endif
			  return yAcceleration(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setYAcceleration lib spritekitlibname selector "setYAcceleration:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setYAcceleration lib spritekitlibname selector "setYAcceleration:" (id as ptr, value as single)
			  #endif
			  setYAcceleration id, value
			  
			End Set
		#tag EndSetter
		YAcceleration As Double
	#tag EndComputedProperty


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
			Name="ParticleZPositionRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleZPositionSpeed"
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
