#tag Class
Protected Class AppleSCNMorpher
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcalculationMode Lib SceneKitLibname Selector "calculationMode" (id as ptr) As SCNMorpherCalculationMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTargets Lib SceneKitLibname Selector "targets" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207765696768742076616C756520666F7220746865207370656369666965642074617267657420696E6465782E
		Function GetWeight(Index as Integer) As Double
		  return getWeightForTargetAtIndex (id, index)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getWeightForTargetAtIndex Lib SceneKitLibname Selector "weightForTargetAtIndex:" (id as ptr, index as integer) As cgfloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNMorpher
		  return if (aptr = nil, nil, new AppleSCNMorpher(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcalculationMode Lib SceneKitLibname Selector "setCalculationMode:" (id as ptr, value as SCNMorpherCalculationMode)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4120436F6E76656E69656E6365206D6574686F6420666F722073657474696E6720746865206D6F72706865722074617267657473
		Sub SetTargets(Paramarray Targets as AppleSCNGeometry)
		  dim arr as AppleMutableArray = AppleMutableArray.fromAppleObjects(targets)
		  me.Targets = arr
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTargets Lib SceneKitLibname Selector "setTargets:" (id as ptr, targets as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207765696768742076616C756520666F7220746865207370656369666965642074617267657420696E6465782E
		Sub SetWeight(Index as Integer, Value as Double)
		  setWeightForTargetAtIndex (id, index, value)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setWeightForTargetAtIndex Lib SceneKitLibname Selector "setWeight:forTarget:atIndex:" (id as ptr, index as integer, value as cgfloat)
	#tag EndExternalMethod


	#tag Note, Name = Status completed and documented
		
		iOS 9.2
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520696E746572706F6C6174696F6E20666F726D756C6120666F7220626C656E64696E67206265747765656E207461726765742067656F6D6574726965732E
		#tag Getter
			Get
			  return getcalculationMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcalculationMode id, value
			End Set
		#tag EndSetter
		CalculationMode As SCNMorpherCalculationMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr= FoundationFramework.NSClassFromString ("SCNMorpher")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620616464656420746172676574732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if Targets <> nil then return targets.Count
			End Get
		#tag EndGetter
		TargetCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172726179206F66207461726765742067656F6D65747269657320746F206D6F727068206265747765656E2E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getTargets(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTargets id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Targets As AppleArray
	#tag EndComputedProperty


	#tag Enum, Name = SCNMorpherCalculationMode, Type = Integer, Flags = &h0
		Normalized
		Additive
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="CalculationMode"
			Group="Behavior"
			Type="SCNMorpherCalculationMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normalized"
				"1 - Additive"
			#tag EndEnumValues
		#tag EndViewProperty
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
			Name="TargetCount"
			Group="Behavior"
			Type="Integer"
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
