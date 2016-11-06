#tag Class
Protected Class AppleSCNCapsule
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320612063617073756C652067656F6D65747279207769746820746865207370656369666965642072616469757320616E64206865696768742E
		Sub Constructor(CapRadius As Double, Height As Double)
		  #if Target64Bit
		    Declare function capsuleWithCapRadius Lib SceneKitLibname selector "capsuleWithCapRadius:height:" (id as ptr, CapRadius as double, Height as double) as ptr
		  #elseif Target32Bit
		    Declare function capsuleWithCapRadius Lib SceneKitLibname selector "capsuleWithCapRadius:height:" (id as ptr, CapRadius as single, Height as single) as ptr
		  #endif
		  Super.Constructor (capsuleWithCapRadius (ClassPtr, CapRadius, Height))
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


	#tag ComputedProperty, Flags = &h0, Description = 5468652072616469757320626F7468206F66207468652063617073756C65E28099732063697263756C61722063656E7465722063726F73732073656374696F6E20616E64206F66206974732068656D6973706865726963616C20656E64732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getcapRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setCapRadius id, value
			End Set
		#tag EndSetter
		CapRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E2074686520686569676874206F6620656163682068656D6973706865726963616C20656E64206F66207468652063617073756C652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getCapSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcapSegmentCount id, value
			End Set
		#tag EndSetter
		CapSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr= FoundationFramework.NSClassFromString ("SCNCapsule")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F66207468652063617073756C6520616C6F6E672069747320792D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getheight(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setHeight id, value
			End Set
		#tag EndSetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E20746865207369646573206F66207468652063617073756C6520616C6F6E672069747320792D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getheightSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setheightSegmentCount id, value
			End Set
		#tag EndSetter
		HeightSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E732061726F756E6420746865206C61746572616C2063697263756D666572656E6365206F66207468652063617073756C652E20416E696D617461626C65
		#tag Getter
			Get
			  return getradialSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setradialSegmentCount id, value
			End Set
		#tag EndSetter
		RadialSegmentCount As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CapRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CapSegmentCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeightSegmentCount"
			Group="Behavior"
			Type="Integer"
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
			Name="RadialSegmentCount"
			Group="Behavior"
			Type="Integer"
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
