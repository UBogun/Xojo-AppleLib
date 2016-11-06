#tag Module
Protected Module SceneKitFrameWork
	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addAnimation Lib SceneKitLibname Selector "addAnimation:forKey:" (id as ptr, animation as ptr, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addAudioPlayer Lib SceneKitLibname Selector "addAudioPlayer:" (id as ptr, player as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyForce Lib SceneKitLibname Selector "applyForce:impulse:" (id as ptr, direction as SCNVector3, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyForceAtPosition Lib SceneKitLibname Selector "applyForce:atPosition:impulse:" (id as ptr, direction as SCNVector3, position as SCNVector3, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyTorque Lib SceneKitLibname Selector "applyTorque:impulse:" (id as ptr, torue as SCNVector4, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getactionForKey Lib SceneKitLibname Selector "actionForKey:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getactionKeys Lib SceneKitLibname Selector "actionKeys" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaffectedByGravity Lib SceneKitLibname Selector "isAffectedByGravity" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsResting Lib SceneKitLibname Selector "allowsResting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularDamping Lib SceneKitLibname Selector "angularDamping" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularVelocity Lib SceneKitLibname Selector "angularVelocity" (id as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularVelocityFactor Lib SceneKitLibname Selector "angularVelocityFactor" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimationForKey Lib SceneKitLibname Selector "animationForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimationKeys Lib SceneKitLibname Selector "animationKeys" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAttributeForKey Lib SceneKitLibname Selector "attributeForKey:" (id as ptr, key as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaudioEngine Lib SceneKitLibname Selector "audioEngine" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaudioListener Lib SceneKitLibname Selector "audioListener" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoenablesDefaultLighting Lib SceneKitLibname Selector "autoenablesDefaultLighting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBoundingBoxMin Lib SceneKitLibname Selector "getBoundingBoxMin:max:" (id as ptr, min as SCNVector3, max as scnvector3) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBoundingSphereCenter Lib SceneKitLibname Selector "getBoundingSphereCenter:radius:" (id as ptr, center as SCNVector3, radius as cgfloat) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getcamera Lib SceneKitLibname Selector "camera" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcastsShadow Lib SceneKitLibname Selector "castsShadow" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcategoryBitMask Lib SceneKitLibname Selector "categoryBitMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getCharge Lib SceneKitLibname Selector "charge" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcollisionBitMask Lib SceneKitLibname Selector "collisionBitMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactTestBitMask Lib SceneKitLibname Selector "contactTestBitMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getdamping Lib SceneKitLibname Selector "damping" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdebugOptions Lib SceneKitLibname Selector "debugOptions" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getduration Lib SceneKitLibname Selector "duration" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfilters Lib SceneKitLibname Selector "filters" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfresnelExponent Lib SceneKitLibname Selector "fresnelExponent" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfriction Lib SceneKitLibname Selector "friction" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getGeometry Lib SceneKitLibname Selector "geometry" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasActions Lib SceneKitLibname Selector "hasActions" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getHidden Lib SceneKitLibname Selector "isHidden" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisAnimationForKeyPaused Lib SceneKitLibname Selector "isAnimationForKeyPaused:" (id as ptr, key as CFStringRef) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getJitteringEnabled Lib SceneKitLibname Selector "isJitteringEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlight Lib SceneKitLibname Selector "light" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getloops Lib SceneKitLibname Selector "autoenablesDefaultLighting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getMass Lib SceneKitLibname Selector "mass" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmomentOfInertia Lib SceneKitLibname Selector "momentOfInertia" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmorpher Lib SceneKitLibname Selector "morpher" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnode Lib SceneKitLibname Selector "node" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getopacity Lib SceneKitLibname Selector "opacity" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getoptions Lib SceneKitLibname Selector "options" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getorientation Lib SceneKitLibname Selector "orientation" (id as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getorthographicScale Lib SceneKitLibname Selector "orthographicScale" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPaused Lib SceneKitLibname Selector "isPaused" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getphysicsBody Lib SceneKitLibname Selector "physicsBody" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getphysicsField Lib SceneKitLibname Selector "physicsField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpivot Lib SceneKitLibname Selector "pivot" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPlaying Lib SceneKitLibname Selector "isPlaying" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpointOfView Lib SceneKitLibname Selector "pointOfView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrate Lib SceneKitLibname Selector "rate" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrendererDelegate Lib SceneKitLibname Selector "rendererDelegate" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrenderingAPI Lib SceneKitLibname Selector "renderingAPI" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrenderingOrder Lib SceneKitLibname Selector "renderingOrder" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getResting Lib SceneKitLibname Selector "isResting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getrestitution Lib SceneKitLibname Selector "restitution" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreverbBlend Lib SceneKitLibname Selector "reverbBlend" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getrollingFriction Lib SceneKitLibname Selector "rollingFriction" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrootNode Lib SceneKitLibname Selector "rootNode" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getRotation Lib SceneKitLibname Selector "rotation" (id as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getscale Lib SceneKitLibname Selector "scale" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscene Lib SceneKitLibname Selector "scene" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsceneTime Lib SceneKitLibname Selector "sceneTime" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getSCNVector3Value Lib SceneKitLibname Selector "SCNVector3Value" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldStream Lib SceneKitLibname Selector "shouldStream" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsStatistics Lib SceneKitLibname Selector "showsStatistics" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getskinner Lib SceneKitLibname Selector "skinner" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsourceObject Lib SceneKitLibname Selector "sourceObject" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getspeed Lib SceneKitLibname Selector "speed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettransform Lib SceneKitLibname Selector "transform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettransforms Lib SceneKitLibname Selector "transforms" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesDefaultMomentOfInertia Lib SceneKitLibname Selector "usesDefaultMomentOfInertia" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getvelocity Lib SceneKitLibname Selector "velocity" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getvelocityFactor Lib SceneKitLibname Selector "velocityFactor" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvolume Lib SceneKitLibname Selector "volume" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getworldTransform Lib SceneKitLibname Selector "worldTransform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function hitTest Lib SceneKitLibname Selector "hitTest:options:" (id as ptr, point as FoundationFrameWork . NSPoint, options as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isNodeInsideFrustum Lib SceneKitLibname Selector "isNodeInsideFrustum:withPointOfView:" (id as ptr, node as ptr, pov as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub load Lib SceneKitLibname Selector "load" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E204170706C6576616C756520636F6E7461696E6720612053434E766563746F7233
		Function MakeAppleValue(value as SCNVector3) As applevalue
		  return new AppleValue(valueWithSCNVector3(AppleValue.ClassPtr, value), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function nodesInsideFrustumWithPointOfView Lib SceneKitLibname Selector "nodesInsideFrustumWithPointOfView:" (id as ptr, pov as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub pauseAnimationForKey Lib SceneKitLibname Selector "pauseAnimationForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function prepareObject Lib SceneKitLibname Selector "prepareObject:shouldAbortBlock:" (id as ptr, obj as ptr, block as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub prepareObjects Lib SceneKitLibname Selector "prepareObjects:withCompletionHandler:" (id as ptr, obj as ptr, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function presentScene Lib SceneKitLibname Selector "presentScene:withTransition:incomingPointOfView:completionHandler:" (id as ptr, scene as ptr, trasnsition as ptr, view as ptr, completion as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function projectPoint Lib SceneKitLibname Selector "projectPoint:" (id as ptr, point as SCNVector3) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeActionForKey Lib SceneKitLibname Selector "removeActionForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllActions Lib SceneKitLibname Selector "removeAllActions" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllAnimations Lib SceneKitLibname Selector "removeAllAnimations" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllParticleSystems Lib Scenekitlibname Selector "removeAllParticleSystems" (id as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAnimationForKey Lib SceneKitLibname Selector "removeAnimationForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub removeAnimationForKeyFadeOut Lib SceneKitLibname Selector "removeAnimationForKey:fadeOutDuration:" (id as ptr, key as CFStringRef, Duration as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeParticleSystem Lib Scenekitlibname Selector "removeParticleSystem:" (id as Ptr, partsys as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub resetTransform Lib SceneKitLibname Selector "resetTransform" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub resumeAnimationForKey Lib SceneKitLibname Selector "resumeAnimationForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runAction Lib SceneKitLibname Selector "runAction:" (id as ptr, action as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionCompletion Lib SceneKitLibname Selector "runAction:completionHandler:" (id as ptr, action as ptr, completion as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionforKey Lib SceneKitLibname Selector "runAction:forKey:" (id as ptr, action as ptr, forKey as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionforKeyCompletion Lib SceneKitLibname Selector "runAction:forKey:completionHandler:" (id as ptr, action as ptr, forKey as cfstringRef, completion as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function SCNVector3Make(x as double, y as double, z as double) As SCNVector3
		  dim result as SCNVector3
		  result.x = x
		  result.y = y
		  result.z = z
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SCNVector4Make(x as double, y as double, z as double, w as double) As SCNVector4
		  dim result as SCNVector4
		  result.x = x
		  result.y = y
		  result.z = z
		  result.w = w
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setaffectedByGravity Lib SceneKitLibname Selector "setAffectedByGravity:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsResting Lib SceneKitLibname Selector "setAllowsResting:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularDamping Lib SceneKitLibname Selector "setAngularDamping:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularVelocity Lib SceneKitLibname Selector "setAngularVelocity:" (id as ptr, value as SCNVector4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularVelocityFactor Lib SceneKitLibname Selector "setAngularVelocityFactor:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAttributeForKey Lib SceneKitLibname Selector "setAttribute:forKey:" (id as ptr, attribute as ptr, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setaudioListener Lib SceneKitLibname Selector "setAudioListener:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoenablesDefaultLighting Lib SceneKitLibname Selector "setAutoenablesDefaultLighting:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBoundingBoxMin Lib SceneKitLibname Selector "setBoundingBoxMin:max:" (id as ptr, min as SCNVector3, max as scnvector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcastsShadow Lib SceneKitLibname Selector "setCastsShadow:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcategoryBitMask Lib SceneKitLibname Selector "setCategoryBitMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setcharge Lib SceneKitLibname Selector "setCharge:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcollisionBitMask Lib SceneKitLibname Selector "setCollisionBitMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontactTestBitMask Lib SceneKitLibname Selector "setContactTestBitMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setdamping Lib SceneKitLibname Selector "setDamping:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdebugOptions Lib SceneKitLibname Selector "setDebugOptions:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setduration Lib SceneKitLibname Selector "setDuration:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfilters Lib SceneKitLibname Selector "setFilters:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfresnelExponent Lib SceneKitLibname Selector "setFresnelExponent:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfriction Lib SceneKitLibname Selector "setFriction:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setGeometry Lib SceneKitLibname Selector "setGeometry:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setHidden Lib SceneKitLibname Selector "setHidden:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setJitteringEnabled Lib SceneKitLibname Selector "setJitteringEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setloops Lib SceneKitLibname Selector "setLoops:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setMass Lib SceneKitLibname Selector "setMass:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setmomentOfInertia Lib SceneKitLibname Selector "setMomentOfInertia:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setMorpher Lib SceneKitLibname Selector "setMorpher:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setopacity Lib SceneKitLibname Selector "setOpacity:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setorientation Lib SceneKitLibname Selector "setOrientation:" (id as ptr, value as SCNVector4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setorthographicScale Lib SceneKitLibname Selector "setOrthographicScale:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPaused Lib SceneKitLibname Selector "setPaused:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setphysicsBody Lib SceneKitLibname Selector "setPhysicsBody:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setphysicsField Lib SceneKitLibname Selector "setPhysicsField:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpivot Lib SceneKitLibname Selector "setPivot:" (id as ptr, value as SCNMatrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPlaying Lib SceneKitLibname Selector "setPlaying:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpointOfView Lib SceneKitLibname Selector "setPointOfView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrate Lib SceneKitLibname Selector "setRate:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrendererDelegate Lib SceneKitLibname Selector "setRendererDelegate:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrenderingOrder Lib SceneKitLibname Selector "setRenderingOrder:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setrestitution Lib SceneKitLibname Selector "setRestitution:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setreverbBlend Lib SceneKitLibname Selector "setReverbBlend:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setrollingFriction Lib SceneKitLibname Selector "setRollingFriction:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setRotation Lib SceneKitLibname Selector "setRotation:" (id as ptr, value as SCNVector4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setscale Lib SceneKitLibname Selector "setScale:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setScene Lib SceneKitLibname Selector "setScene:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSceneTime Lib SceneKitLibname Selector "setSceneTime:" (id as ptr, value as Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldStream Lib SceneKitLibname Selector "setShouldStream:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsStatistics Lib SceneKitLibname Selector "setShowsStatistics:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setSkinner Lib SceneKitLibname Selector "setSkinner:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setspeed Lib SceneKitLibname Selector "setSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setspeedforAnimation Lib SceneKitLibname Selector "setSpeed:forAnimationKey:" (id as ptr, value as CGFloat, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settransform Lib SceneKitLibname Selector "setTransform:" (id as ptr, value as SCNMatrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesDefaultMomentOfInertia Lib SceneKitLibname Selector "setUsesDefaultMomentOfInertia:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setvelocity Lib SceneKitLibname Selector "setVelocity:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setvelocityFactor Lib SceneKitLibname Selector "setVelocityFactor:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setvolume Lib SceneKitLibname Selector "setVolume:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function unprojectPoint Lib SceneKitLibname Selector "unprojectPoint:" (id as ptr, point as SCNVector3) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function valueWithSCNVector3 Lib SceneKitLibname Selector "valueWithSCNVector3:" (id as ptr, value as SCNVector3) As ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticBoneIndices as text = SystemConstantName("SCNGeometrySourceSemanticBoneIndices", SceneKitPath)
			  return mkSCNGeometrySourceSemanticBoneIndices
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticBoneIndices As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticBoneWeights as text = SystemConstantName("SCNGeometrySourceSemanticBoneWeights", SceneKitPath)
			  return mkSCNGeometrySourceSemanticBoneWeights
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticBoneWeights As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticColor as text = SystemConstantName("SCNGeometrySourceSemanticColor", SceneKitPath)
			  return mkSCNGeometrySourceSemanticColor
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticColor As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticEdgeCrease as text = SystemConstantName("SCNGeometrySourceSemanticEdgeCrease", SceneKitPath)
			  return mkSCNGeometrySourceSemanticEdgeCrease
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticEdgeCrease As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticTexcoord as text = SystemConstantName("SCNGeometrySourceSemanticTexcoord", SceneKitPath)
			  return mkSCNGeometrySourceSemanticTexcoord
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticTexcoord As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticVertex as text = SystemConstantName("SCNGeometrySourceSemanticVertex", SceneKitPath)
			  return mkSCNGeometrySourceSemanticVertex
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticVertex As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticVertexCrease as text = SystemConstantName("SCNGeometrySourceSemanticVertexCrease", SceneKitPath)
			  return mkSCNGeometrySourceSemanticVertexCrease
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticVertexCrease As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestBackFaceCullingKey as text = SystemConstantName("SCNHitTestBackFaceCullingKey", SceneKitPath)
			  return mkSCNHitTestBackFaceCullingKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestBackFaceCullingKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestBoundingBoxOnlyKey as text = SystemConstantName("SCNHitTestBoundingBoxOnlyKey", SceneKitPath)
			  return mkSCNHitTestBoundingBoxOnlyKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestBoundingBoxOnlyKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestClipToZRangeKey as text = SystemConstantName("SCNHitTestClipToZRangeKey", SceneKitPath)
			  return mkSCNHitTestClipToZRangeKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestClipToZRangeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestFirstFoundOnlyKey as text = SystemConstantName("SCNHitTestFirstFoundOnlyKey", SceneKitPath)
			  return mkSCNHitTestFirstFoundOnlyKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestFirstFoundOnlyKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestIgnoreChildNodesKey as text = SystemConstantName("SCNHitTestIgnoreChildNodesKey", SceneKitPath)
			  return mkSCNHitTestIgnoreChildNodesKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestIgnoreChildNodesKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestIgnoreHiddenNodesKey as text = SystemConstantName("SCNHitTestIgnoreHiddenNodesKey", SceneKitPath)
			  return mkSCNHitTestIgnoreHiddenNodesKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestIgnoreHiddenNodesKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestRootNodeKey as text = SystemConstantName("SCNHitTestRootNodeKey", SceneKitPath)
			  return mkSCNHitTestRootNodeKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestRootNodeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestSortResultsKey as text = SystemConstantName("SCNHitTestSortResultsKey", SceneKitPath)
			  return mkSCNHitTestSortResultsKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestSortResultsKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticNormal as text = SystemConstantName("SCNGeometrySourceSemanticNormal", SceneKitPath)
			  return mkSCNGeometrySourceSemanticNormal
			End Get
		#tag EndGetter
		Protected SCNGeometrySourceSemanticNormalk As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as  SCNMatrix4
			  result.m11 = 1.0
			  result.m22 = 1.0
			  result.m33 = 1.0
			  result.m44 = 1.0
			  return result
			End Get
		#tag EndGetter
		SCNMatrix4Identity As SCNMatrix4
	#tag EndComputedProperty


	#tag Constant, Name = kBlockPreparationEnded, Type = Text, Dynamic = False, Default = \"BlockPreparationEnded", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kRendererUpdateAtTime, Type = Text, Dynamic = False, Default = \"RendererUpdateAtTime", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNPreferredRenderingAPIKey, Type = Text, Dynamic = False, Default = \"SCNPreferredRenderingAPIKey", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNRenderingAPIMetal, Type = Text, Dynamic = False, Default = \"SCNRenderingAPIMetal", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNRenderingAPIOpenGLCore32, Type = Text, Dynamic = False, Default = \"SCNRenderingAPIOpenGLCore32", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNRenderingAPIOpenGLCore41, Type = Text, Dynamic = False, Default = \"SCNRenderingAPIOpenGLCore41", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNRenderingAPIOpenGLES2, Type = Text, Dynamic = False, Default = \"SCNRenderingAPIOpenGLES2", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNRenderingAPIOpenGLLegacy, Type = Text, Dynamic = False, Default = \"SCNRenderingAPIOpenGLLegacy", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = SceneKitLibName, Type = Text, Dynamic = False, Default = \"SceneKit.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SceneKitPath, Type = Text, Dynamic = False, Default = \"com.apple.SceneKit", Scope = Public
	#tag EndConstant


	#tag Structure, Name = SCNMatrix4, Flags = &h0
		m11 as single
		  m12 as single
		  m13 as single
		  m14 as single
		  m21 as single
		  m22 as single
		  m23 as single
		  m24 as single
		  m31 as single
		  m32 as single
		  m33 as single
		  m34 as single
		  m41 as single
		  m42 as single
		  m43 as single
		m44 as single
	#tag EndStructure

	#tag Structure, Name = SCNVector3, Flags = &h0
		x as CGFloat
		  y as CGFloat
		z as CGFloat
	#tag EndStructure

	#tag Structure, Name = SCNVector4, Flags = &h0
		x as CGFloat
		  y as CGFloat
		  z as CGFloat
		w as CGFloat
	#tag EndStructure


	#tag Enum, Name = SCNAntialiasingMode, Type = UInteger, Flags = &h0
		None
		  Multi2X
		Multi4X
	#tag EndEnum

	#tag Enum, Name = SCNRenderingAPIiOS, Type = UInteger, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Metal
		OpenGLES2
	#tag EndEnum

	#tag Enum, Name = SCNRenderingAPIMacOS, Type = UInteger, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit))
		Metal
		  OpenGLLegacy
		  OpenGLCore32
		OpenGLCore41
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
End Module
#tag EndModule
