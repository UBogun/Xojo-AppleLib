#tag Class
Protected Class AppleSCNShape
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320612073686170652067656F6D6574727920776974682074686520737065636966696564207061746820616E6420657874727573696F6E2064657074682E
		Sub Constructor(Path As AppleBezierpath, extrusionDepth As Double)
		  #if Target64Bit
		    Declare function shapeWithPath Lib SceneKitLibname selector "shapeWithPath:extrusionDepth:" (id as ptr, Path as ptr, extrusionDepth as double) as ptr
		  #elseif Target32Bit
		    Declare function shapeWithPath Lib SceneKitLibname selector "shapeWithPath:extrusionDepth:" (id as ptr, Path as Ptr, extrusionDepth as single) as ptr
		  #endif
		  Super.Constructor (shapeWithPath (ClassPtr, path.id, extrusionDepth))
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getchamferMode Lib SceneKitLibname Selector "chamferMode" (id as ptr) As SCNChamferMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setchamferMode Lib SceneKitLibname Selector "setChamferMode:" (id as ptr, value as SCNChamferMode)
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 4120636F6E7374616E742073706563696679696E6720776869636820656E6473206F6620746865206578747275646564207368617065E28099732070726F66696C6520617265206368616D66657265642E2044656661756C7420426F74682E
		#tag Getter
			Get
			  return getchamferMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setchamferMode id, value
			End Set
		#tag EndSetter
		ChamferMode As SCNChamferMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207061746820746861742064657465726D696E6573207468652063726F73732D73656374696F6E616C20636F6E746F7572206F662065616368206368616D666572656420656467652E
		#tag Getter
			Get
			  return AppleBezierPath.MakefromPtr(getchamferProfile(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setchamferProfile id, if (value = nil,nil, value.id)
			End Set
		#tag EndSetter
		ChamferProfile As AppleBezierPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468206F72206465707468206F662065616368206368616D666572656420656467652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getchamferRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setChamferRadius id, value
			End Set
		#tag EndSetter
		ChamferRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNShape")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746869636B6E657373206F662074686520657874727564656420736861706520616C6F6E6720746865207A2D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getextrusionDepth(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setExtrusionDepth id, value
			End Set
		#tag EndSetter
		ExtrusionDepth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074776F2D64696D656E73696F6E616C207061746820666F726D696E6720746865206261736973206F66207468652073686170652E
		#tag Getter
			Get
			  return AppleBezierPath.MakefromPtr(getpath(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpath id, if (value = nil,nil, value.id)
			End Set
		#tag EndSetter
		Path As AppleBezierPath
	#tag EndComputedProperty


	#tag Enum, Name = SCNChamferMode, Type = Integer, Flags = &h0
		Both
		  Front
		Back
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ChamferMode"
			Group="Behavior"
			Type="SCNChamferMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Both"
				"1 - Front"
				"2 - Back"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ChamferRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtrusionDepth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryElementCount"
			Group="Behavior"
			Type="Integer"
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
			Name="SubdivisionLevel"
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
