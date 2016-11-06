#tag Class
Protected Class AppleSCNCone
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120636F6E652067656F6D6574727920776974682074686520676976656E20746F70207261646975732C20626F74746F6D207261646975732C20616E64206865696768742E
		Sub Constructor(TopRadius As Double, BottomRadius As Double, Height As Double)
		  #if Target64Bit
		    Declare function coneWithTopRadius Lib SceneKitLibname selector "coneWithTopRadius:bottomRadius:height:" (id as ptr, TopRadius as double, BottomRadius As Double, Height as double) as ptr
		  #elseif Target32Bit
		    Declare function coneWithTopRadius Lib SceneKitLibname selector "coneWithTopRadius:bottomRadius:height:" (id as ptr, TopRadius as single, BottomRadius As single, Height as single) as ptr
		  #endif
		  Super.Constructor (coneWithTopRadius (ClassPtr, TopRadius, BottomRadius, Height))
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


	#tag ComputedProperty, Flags = &h0, Description = 54686520726164697573206F662074686520636F6E65E28099732063697263756C617220626173652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getbottomRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBottomRadius id, value
			End Set
		#tag EndSetter
		BottomRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mclassptr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNCone")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F66207468652063796C696E64657220616C6F6E672069747320792D617869732E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E20746865207369646573206F662074686520636F6E6520616C6F6E672069747320792D617869732E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E732061726F756E64207468652063697263756D666572656E6365206F662074686520636F6E652E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520726164697573206F662074686520636F6E65E28099732063697263756C617220746F702E20416E696D617461626C652E
		#tag Getter
			Get
			  return gettopRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTopRadius id, value
			End Set
		#tag EndSetter
		TopRadius As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BottomRadius"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="TopRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
