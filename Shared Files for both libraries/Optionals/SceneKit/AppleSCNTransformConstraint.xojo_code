#tag Class
Protected Class AppleSCNTransformConstraint
Inherits AppleSCNConstraint
	#tag Method, Flags = &h1021, Description = 437265617465732061206E6577207472616E73666F726D20636F6E73747261696E742E204966204576616C757465496E576F726C6453706163652069732046616C73652C206576616C756574732074686520736F6E73747261696E742072656C6174696320746F20746865206C6F63616C20636F6F7264696E617465207370616365206F66206561636820636F6E73747261696E6564206E6F64652E20496620747275652C206576616C756174657320696E20746865207363656E65277320776F726C6420636F6F7264696E617465732E20
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577207472616E73666F726D20636F6E73747261696E742E204966204576616C757465496E576F726C6453706163652069732046616C73652C206576616C75617465732074686520636F6E73747261696E742072656C617469766520746F20746865206C6F63616C20636F6F7264696E617465207370616365206F66206561636820636F6E73747261696E6564206E6F64652E20496620747275652C206576616C756174657320696E20746865207363656E65277320776F726C6420636F6F7264696E617465732E2020
		Sub Constructor(EvaluteInWorldSpace As Boolean, Block As AppleBlock)
		  Declare function transformConstraintInWorldSpace Lib SceneKitLibname selector "transformConstraintInWorldSpace:withBlock:" _
		  (id as ptr, EvaluteInWorldSpace as Boolean, block as ptr) as ptr
		  super.Constructor (transformConstraintInWorldSpace(classptr, EvaluteInWorldSpace, block.Handle))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TransformBlockTemplate(Node as ptr, Transform as SCNMatrix4) As SCNMatrix4
		  // This is a template for the constructor of an AppleSCNTransformConstraint.
		  // Use it to return the new transformation for the node. Don’t forget to remove the pragmas:
		  
		  Dim CurrentNode As new AppleSCNNode (node)
		  #pragma unused CurrentNode
		  #pragma unused transform
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNTransformConstraint")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="InfluenceFactor"
			Group="Behavior"
			Type="Double"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
