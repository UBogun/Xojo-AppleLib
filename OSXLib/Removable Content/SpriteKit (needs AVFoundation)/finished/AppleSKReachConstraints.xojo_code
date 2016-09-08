#tag Class
Protected Class AppleSKReachConstraints
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720726561636820636F6E73747261696E74206F626A6563742E
		Sub Constructor(LowerAngleLimit As Double, UpperAngleLimit As Double)
		  Super.Constructor (initWithLowerAngleLimit (Classptr, LowerAngleLimit, UpperAngleLimit))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlowerAngleLimit Lib SpriteKitLibName Selector "lowerAngleLimit" (id as ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getupperAngleLimit Lib SpriteKitLibName Selector "upperAngleLimit" (id as ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithLowerAngleLimit Lib SpriteKitLibName Selector "initWithLowerAngleLimit:upperAngleLimit:" (id as ptr, low as cgfloat, up as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKReachConstraints
		  return if (aptr = nil, nil, new AppleSKReachConstraints(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlowerAngleLimit Lib SpriteKitLibName Selector "setLowerAngleLimit:" (id as ptr, value as CGFLoat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setupperAngleLimit Lib SpriteKitLibName Selector "setUpperAngleLimit:" (id as ptr, value as CGFLoat)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKReachConstraints")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D20616E676C65207468617420746865206E6F64652063616E206861766520616674657220697420697320726F74617465642062792061207265616368206576656E742E
		#tag Getter
			Get
			  return getLowerAngleLimit (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setLowerAngleLimit mid, value
			End Set
		#tag EndSetter
		LowerAngleLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20616E676C65207468617420746865206E6F64652063616E206861766520616674657220697420697320726F74617465642062792061207265616368206576656E742E
		#tag Getter
			Get
			  return getupperAngleLimit (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUpperAngleLimit mid, value
			End Set
		#tag EndSetter
		UpperAngleLimit As Double
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LowerAngleLimit"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="UpperAngleLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
