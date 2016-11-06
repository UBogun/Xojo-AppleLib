#tag Class
Protected Class AppleSCNFloor
Inherits AppleSCNGeometry
	#tag Method, Flags = &h0, Description = 43726561746573206120666C6F6F722067656F6D657472792E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Sources as AppleArray, Elements as AppleArray) -- From AppleSCNGeometry
		  // Constructor() -- From AppleSCNGeometry
		  // Constructor(Contents as AppleGeneralObject) -- From AppleSCNAnimatableObject
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function floor Lib SceneKitLibname selector "floor" (id as ptr) as ptr
		  Super.Constructor(floor(ClassPtr))
		  retainclassobject
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOs 9.2
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNFloor")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D2074686520666C6F6F72206174207768696368207363656E6520636F6E74656E747320617265206E6F206C6F6E676572207265666C65637465642E20416E696D617461626C652E2044656661756C7420302E30203D206E6F2066616C6C6F66662E
		#tag Getter
			Get
			  return getreflectionFalloffEnd(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setReflectionFalloffEnd id, value
			End Set
		#tag EndSetter
		ReflectionFalloffEnd As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D2074686520666C6F6F72206174207768696368207363656E6520636F6E74656E747320617265207265666C65637465642061742066756C6C20696E74656E736974792E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getreflectionFalloffStart(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setReflectionFalloffStart id, value
			End Set
		#tag EndSetter
		ReflectionFalloffStart As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265736F6C7574696F6E207363616C6520666163746F72206F6620746865206F666673637265656E206275666665722074686174205363656E654B6974207573657320746F2072656E646572207265666C656374696F6E732E2044656661756C7420302E352E
		#tag Getter
			Get
			  return getreflectionResolutionScaleFactor(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setReflectionResolutionScaleFactor id, value
			End Set
		#tag EndSetter
		ReflectionResolutionScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E74656E73697479206F6620746865207363656E65E2809973207265666C656374696F6E206F6E2074686520666C6F6F722E20416E696D617461626C652E
		#tag Getter
			Get
			  return getReflectivity(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setReflectivity id, value
			End Set
		#tag EndSetter
		Reflectivity As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
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
			Name="ReflectionFalloffEnd"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReflectionFalloffStart"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReflectionResolutionScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Reflectivity"
			Group="Behavior"
			Type="Double"
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
