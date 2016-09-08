#tag Class
Protected Class AppleSKFieldNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CustomField(Block as AppleBlock) As AppleSKFieldNode
		  Declare function customFieldWithEvaluationBlock lib spritekitlibname selector "customFieldWithEvaluationBlock:" (id as ptr, block as ptr) as ptr
		  dim result as new AppleSKFieldNode (customFieldWithEvaluationBlock (ClassPtr, block.Handle))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DragField() As AppleSKFieldNode
		  Declare function dragField lib spritekitlibname selector "dragField" (id as ptr) as ptr
		  dim result as new AppleSKFieldNode (dragField (ClassPtr))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ElectricField() As AppleSKFieldNode
		  Declare function electricField lib spritekitlibname selector "electricField" (id as ptr) as ptr
		  dim result as new AppleSKFieldNode (electricField (ClassPtr))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function LinearGravityField(Direction as Vector_Float3) As AppleSKFieldNode
		  Declare function linearGravityFieldWithVector lib spritekitlibname selector "linearGravityFieldWithVector:" (id as ptr, Direction as Vector_Float3) as ptr
		  dim result as new AppleSKFieldNode (linearGravityFieldWithVector (ClassPtr, Direction))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MagneticField() As AppleSKFieldNode
		  Declare function magneticField lib spritekitlibname selector "magneticField" (id as ptr) as ptr
		  dim result as new AppleSKFieldNode (magneticField (ClassPtr))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function NoiseField(Smoothness as Double, AnimationSpeed as Double) As AppleSKFieldNode
		  #if Target64Bit
		    Declare function noiseFieldWithSmoothness lib spritekitlibname selector "noiseFieldWithSmoothness:animationSpeed:" _
		    (id as ptr, Smoothness as double, AnimationSpeed as double) as ptr
		  #elseif Target32Bit
		    Declare function noiseFieldWithSmoothness lib spritekitlibname selector "noiseFieldWithSmoothness:animationSpeed:" _
		    (id as ptr, Smoothness as single, AnimationSpeed as single) as ptr
		  #endif
		  dim result as new AppleSKFieldNode (noiseFieldWithSmoothness (ClassPtr, Smoothness, AnimationSpeed))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function RadialGravityField() As AppleSKFieldNode
		  Declare function radialGravityField lib spritekitlibname selector "radialGravityField" (id as ptr) as ptr
		  dim result as new AppleSKFieldNode (radialGravityField (ClassPtr))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SKFieldForceEvaluatorBlockTemplate(Position as Vector_Float3, velocity as Vector_Float3, Mass as Single, Charge as Single, Time as Double) As single
		  // This is a template for the CustomField constructor.
		  // Use it to calculate your field's force from the values the block gets and return it as a single value.
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SpringField() As AppleSKFieldNode
		  Declare function springField lib spritekitlibname selector "springField" (id as ptr) as ptr
		  dim result as new AppleSKFieldNode (springField (ClassPtr))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TurbulenceField(Smoothness as Double, AnimationSpeed as Double) As AppleSKFieldNode
		  #if Target64Bit
		    Declare function turbulenceFieldWithSmoothness lib spritekitlibname selector "turbulenceFieldWithSmoothness:animationSpeed:" _
		    (id as ptr, Smoothness as double, AnimationSpeed as double) as ptr
		  #elseif Target32Bit
		    Declare function turbulenceFieldWithSmoothness lib spritekitlibname selector "turbulenceFieldWithSmoothness:animationSpeed:" _
		    (id as ptr, Smoothness as single, AnimationSpeed as single) as ptr
		  #endif
		  dim result as new AppleSKFieldNode (turbulenceFieldWithSmoothness (ClassPtr, Smoothness, AnimationSpeed))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function VelocityField(Texture as AppleSKTexture) As AppleSKFieldNode
		  Declare function velocityFieldWithTexture lib spritekitlibname selector "velocityFieldWithTexture:" (id as ptr, texture as Ptr) as ptr
		  dim result as new AppleSKFieldNode (velocityFieldWithTexture (ClassPtr, texture.id))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function VelocityField(Vector as Vector_Float3) As AppleSKFieldNode
		  Declare function velocityFieldWithVector lib spritekitlibname selector "velocityFieldWithVector:" (id as ptr, Vector as Vector_Float3) as ptr
		  dim result as new AppleSKFieldNode (velocityFieldWithVector (ClassPtr, Vector))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function VortexField() As AppleSKFieldNode
		  Declare function vortexField lib spritekitlibname selector "vortexField" (id as ptr) as ptr
		  dim result as new AppleSKFieldNode (vortexField (ClassPtr))
		  result.RetainClassObject
		  Return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function animationSpeed lib spritekitlibname selector "animationSpeed" (id as ptr) as single
			  return animationSpeed (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setAnimationSpeed lib spritekitlibname selector "setAnimationSpeed:" (id as ptr, value as Single)
			  setAnimationSpeed(id, value)
			  
			End Set
		#tag EndSetter
		AnimationSpeed As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function categoryBitMask lib spritekitlibname selector "categoryBitMask" (id as ptr) as UInt32
			  return categoryBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setCategoryBitMask lib spritekitlibname selector "setCategoryBitMask:" (id as ptr, value as UInt32)
			  setCategoryBitMask id, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
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
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKFieldNode")
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
			  declare function direction lib spritekitlibname selector "direction" (id as ptr) as Vector_Float3
			  return direction (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setDirection lib spritekitlibname selector "setDirection:" (id as ptr, value as Vector_Float3)
			  setDirection(id, value)
			  
			End Set
		#tag EndSetter
		Direction As Vector_Float3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function enabled lib spritekitlibname selector "enabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setEnabled lib spritekitlibname selector "setEnabled:" (id as ptr, value as Boolean)
			  setenabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isExclusive lib spritekitlibname selector "isExclusive" (id as ptr) as Boolean
			  return isExclusive (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setExclusive lib spritekitlibname selector "setExclusive:" (id as ptr, value as Boolean)
			  setExclusive id, value
			End Set
		#tag EndSetter
		Exclusive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function falloff lib spritekitlibname selector "falloff" (id as ptr) as single
			  return falloff (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setFalloff lib spritekitlibname selector "setFalloff:" (id as ptr, value as Single)
			  setFalloff(id, value)
			  
			End Set
		#tag EndSetter
		Falloff As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function minimumRadius lib spritekitlibname selector "minimumRadius" (id as ptr) as Single
			  return minimumRadius (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setMinimumRadius lib spritekitlibname selector "setMinimumRadius:" (id as ptr, value as single)
			  setMinimumRadius id, value
			End Set
		#tag EndSetter
		MinimumRadius As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function region lib spritekitlibname selector "region" (id as ptr) as ptr
			  return AppleSKRegion.MakefromPtr (region (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setRegion lib spritekitlibname selector "setRegion:" (id as ptr, value as ptr)
			  setRegion (id, value.id)
			  
			End Set
		#tag EndSetter
		Region As AppleSKRegion
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function smoothness lib spritekitlibname selector "smoothness" (id as ptr) as single
			  return smoothness (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setSmoothness lib spritekitlibname selector "setSmoothness:" (id as ptr, value as Single)
			  setSmoothness(id, value)
			  
			End Set
		#tag EndSetter
		Smoothness As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function strength lib spritekitlibname selector "strength" (id as ptr) as Single
			  return strength (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setStrength lib spritekitlibname selector "setStrength:" (id as ptr, value as single)
			  setStrength id, value
			End Set
		#tag EndSetter
		Strength As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function texture lib spritekitlibname selector "texture" (id as ptr) as ptr
			  return AppleSKTexture.MakefromPtr (texture (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setTexture lib spritekitlibname selector "setTexture:" (id as ptr, value as ptr)
			  setTexture (id, value.id)
			  
			End Set
		#tag EndSetter
		Texture As AppleSKTexture
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimationSpeed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Exclusive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Falloff"
			Group="Behavior"
			Type="Single"
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
			Name="MinimumRadius"
			Group="Behavior"
			Type="Single"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Smoothness"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Strength"
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
