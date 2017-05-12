#tag Class
Protected Class AppleSCNTorus
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120746F7275732067656F6D65747279207769746820746865207370656369666965642072696E672072616469757320616E642070697065207261646975732E
		Sub Constructor(RingRadius As Double, PipeRadius As Double)
		  #if Target64Bit
		    Declare function torusWithRingRadius Lib SceneKitLibname selector "torusWithRingRadius:pipeRadius:" (id as ptr, RingRadius as double, PipeRadius As Double) as ptr
		  #elseif Target32Bit
		    Declare function torusWithRingRadius Lib SceneKitLibname selector "torusWithRingRadius:pipeRadius" (id as ptr, RingRadius as single, PipeRadius As Single) as ptr
		  #endif
		  Super.Constructor (torusWithRingRadius (ClassPtr, RingRadius, PipeRadius))
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documeneted
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNTorus")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E6F7220726164697573206F662074686520746F7275732C20646566696E696E67207468652070697065207468617420656E636972636C65732074686520746F7275732072696E672E20416E696D617461626C652E
		#tag Getter
			Get
			  return getpipeRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPipeRadius id, value
			End Set
		#tag EndSetter
		PipeRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E732061726F756E642074686520746F72757320706970652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getpipeSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPipeSegmentCount id, value
			End Set
		#tag EndSetter
		PipeSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D616A6F7220726164697573206F662074686520746F7275732C20646566696E696E67206120636972636C6520696E2074686520782D20616E64207A2D617869732064696D656E73696F6E732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getringRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRingRadius id, value
			End Set
		#tag EndSetter
		RingRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E732061726F756E642074686520746F7275732072696E672E20416E696D617461626C652E
		#tag Getter
			Get
			  return getringSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setringSegmentCount id, value
			End Set
		#tag EndSetter
		RingSegmentCount As Integer
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
			Name="PipeRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PipeSegmentCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RingRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RingSegmentCount"
			Group="Behavior"
			Type="Integer"
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
