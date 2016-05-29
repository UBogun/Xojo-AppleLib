#tag Class
Protected Class AppleCAValueFunction
Inherits AppleObject
	#tag Method, Flags = &h1
		Protected Sub Constructor(FunctionName As CFSTringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(functionWithName(ClassPtr, FunctionName))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function functionWithName Lib QuartzCoreLib Selector "functionWithName;" (id as ptr, name as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCAValueFunction
		  return if (aptr= nil, nil, new AppleCAValueFunction(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		OS X 10.11.5
		
		The CAValueFunction.h class provides a more flexible means of applying functions to property values during animation. A value function defines an optional transformation that is applied to the interpolated value before it is set in the presentation layer.
		
		Using value transform functions, animations can effect the transform property of a layer using arbitrary transforms of each component (no normalization to 360°) and concatenate in the normally when multiple animations are applied at once.
		
		You use a value transform function that rotates from 0° to 180° around the z-axis by creating a CAValueTransform function specifying the kCAValueFunctionRotateZ and then creating an animation with a fromValue of 0, a toValue of M_PI, and set the animation’s valueTransform property to the value transform instance.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CAValueFunction")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionRotateX as text= SystemConstantName("kCAValueFunctionRotateX", QuartzCorePath)
			  return mkCAValueFunctionRotateX
			End Get
		#tag EndGetter
		Shared kCAValueFunctionRotateX As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionRotateY as text= SystemConstantName("kCAValueFunctionRotateY", QuartzCorePath)
			  return mkCAValueFunctionRotateY
			End Get
		#tag EndGetter
		Shared kCAValueFunctionRotateY As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionRotateZ as text= SystemConstantName("kCAValueFunctionRotateZ", QuartzCorePath)
			  return mkCAValueFunctionRotateZ
			End Get
		#tag EndGetter
		Shared kCAValueFunctionRotateZ As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionScale as text= SystemConstantName("kCAValueFunctionScale", QuartzCorePath)
			  return mkCAValueFunctionScale
			End Get
		#tag EndGetter
		Shared kCAValueFunctionScale As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionScaleX as text= SystemConstantName("kCAValueFunctionScaleX", QuartzCorePath)
			  return mkCAValueFunctionScaleX
			End Get
		#tag EndGetter
		Shared kCAValueFunctionScaleX As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionScaleY as text= SystemConstantName("kCAValueFunctionScaleY", QuartzCorePath)
			  return mkCAValueFunctionScaleY
			End Get
		#tag EndGetter
		Shared kCAValueFunctionScaleY As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionScaleZ as text= SystemConstantName("kCAValueFunctionScaleZ", QuartzCorePath)
			  return mkCAValueFunctionScaleZ
			End Get
		#tag EndGetter
		Shared kCAValueFunctionScaleZ As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionTranslate as text= SystemConstantName("kCAValueFunctionTranslate", QuartzCorePath)
			  return mkCAValueFunctionTranslate
			End Get
		#tag EndGetter
		Shared kCAValueFunctionTranslate As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionTranslateX as text= SystemConstantName("kCAValueFunctionTranslateX", QuartzCorePath)
			  return mkCAValueFunctionTranslateX
			End Get
		#tag EndGetter
		Shared kCAValueFunctionTranslateX As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionTranslateY as text= SystemConstantName("kCAValueFunctionTranslateY", QuartzCorePath)
			  return mkCAValueFunctionTranslateY
			End Get
		#tag EndGetter
		Shared kCAValueFunctionTranslateY As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCAValueFunctionTranslateZ as text= SystemConstantName("kCAValueFunctionTranslateZ", QuartzCorePath)
			  return mkCAValueFunctionTranslateZ
			End Get
		#tag EndGetter
		Shared kCAValueFunctionTranslateZ As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F66207468652076616C75652066756E6374696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getName(id)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionRotateX)
			End Get
		#tag EndGetter
		Shared RotateX As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionRotateY)
			End Get
		#tag EndGetter
		Shared RotateY As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionRotateZ)
			End Get
		#tag EndGetter
		Shared RotateZ As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionScale)
			End Get
		#tag EndGetter
		Shared Scale As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionScaleX)
			End Get
		#tag EndGetter
		Shared ScaleX As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionScaleY)
			End Get
		#tag EndGetter
		Shared ScaleY As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionScaleZ)
			End Get
		#tag EndGetter
		Shared ScaleZ As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionTranslate)
			End Get
		#tag EndGetter
		Shared Translate As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionTranslateX)
			End Get
		#tag EndGetter
		Shared TranslateX As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionTranslateY)
			End Get
		#tag EndGetter
		Shared TranslateY As AppleCAValueFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCAValueFunction(kCAValueFunctionTranslateZ)
			End Get
		#tag EndGetter
		Shared TranslateZ As AppleCAValueFunction
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
