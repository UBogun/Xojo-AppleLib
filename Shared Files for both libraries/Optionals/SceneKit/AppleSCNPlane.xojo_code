#tag Class
Protected Class AppleSCNPlane
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120706C616E652067656F6D657472792077697468207468652073706563696669656420776964746820616E64206865696768742E
		Sub Constructor(width as Double, height as Double)
		  super.Constructor (planeWithWidthHeight(classptr, width, height), true, true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function planeWithWidthHeight Lib Scenekitlibname Selector "planeWithWidth:height:" (id as ptr, width as cgfloat, height as cgfloat) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNPlane")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520706C616E6520616C6F6E672069747320766572746963616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getcornerRadius(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setCornerRadius mid, value
			End Set
		#tag EndSetter
		CornerRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206C696E65207365676D656E7473207573656420746F20637265617465206561636820726F756E64656420636F726E6572206F662074686520706C616E652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getcornerSegmentCount(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcornerSegmentCount mid, value
			End Set
		#tag EndSetter
		CornerSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520706C616E6520616C6F6E672069747320766572746963616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getheight(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setHeight mid, value
			End Set
		#tag EndSetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E2074686520706C616E65E2809973207375726661636520616C6F6E672069747320766572746963616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getheightSegmentCount(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setheightSegmentCount mid, value
			End Set
		#tag EndSetter
		HeightSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520706C616E6520616C6F6E672069747320686F72697A6F6E74616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getwidth(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setWidth mid, value
			End Set
		#tag EndSetter
		Width As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E2074686520706C616E65E2809973207375726661636520616C6F6E672069747320686F72697A6F6E74616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getwidthSegmentCount(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setwidthSegmentCount mid, value
			End Set
		#tag EndSetter
		WidthSegmentCount As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CornerRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CornerSegmentCount"
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
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthSegmentCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
