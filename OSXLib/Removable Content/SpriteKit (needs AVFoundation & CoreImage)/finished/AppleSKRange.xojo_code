#tag Class
Protected Class AppleSKRange
Inherits AppleObject
	#tag Method, Flags = &h1000, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A656374207468617420656E636F6D70617373657320616C6C20706F737369626C652076616C7565732E
		Sub Constructor()
		  super.Constructor (rangeWithNoLimits(ClassPtr))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A6563742E
		Sub Constructor(LowerLimit as Double, UpperLimit as Double)
		  super.Constructor (rangeWithLowerLimitUpperLimit(ClassPtr, LowerLimit, UpperLimit))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlowerLimit Lib SpriteKitLibName Selector "lowerLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getupperLimit Lib SpriteKitLibName Selector "upperLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKRange
		  return if (aptr = nil, Nil, new AppleSKRange (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A656374207468617420737065636966696573206120636F6E7374616E742076616C75652E
		Shared Function RangeWithConstantValue(ConstantValue as Double) As AppleSKRange
		  dim result as AppleSKRange
		  result = new AppleSKRange (rangeWithConstantValue(ClassPtr, ConstantValue))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rangeWithConstantValue Lib SpriteKitLibName Selector "rangeWithUpperLimit:" (id as ptr, low as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A6563742E
		Shared Function RangeWithLimits(LowerLimit as Double, upperLimit as Double) As AppleSKRange
		  dim result as AppleSKRange
		  result = new AppleSKRange (rangeWithLowerLimitUpperLimit(ClassPtr, LowerLimit, upperLimit))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A656374207468617420737065636966696573206F6E6C792061206D696E696D756D2076616C75652E
		Shared Function RangeWithLowerLimit(LowerLimit as Double) As AppleSKRange
		  dim result as AppleSKRange
		  result = new AppleSKRange (rangeWithLowerLimit(ClassPtr, LowerLimit))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rangeWithLowerLimit Lib SpriteKitLibName Selector "rangeWithLowerLimit:" (id as ptr, low as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rangeWithLowerLimitUpperLimit Lib SpriteKitLibName Selector "rangeWithLowerLimit:upperLimit:" (id as ptr, low as CGFloat, up as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rangeWithNoLimits Lib SpriteKitLibName Selector "rangeWithNoLimits" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A656374207468617420737065636966696573206F6E6C792061206D6178696D756D2076616C75652E
		Shared Function RangeWithUpperLimit(UpperLimit as Double) As AppleSKRange
		  dim result as AppleSKRange
		  result = new AppleSKRange (rangeWithUpperLimit(ClassPtr, UpperLimit))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rangeWithUpperLimit Lib SpriteKitLibName Selector "rangeWithUpperLimit:" (id as ptr, low as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rangeWithValue Lib SpriteKitLibName Selector "rangeWithValue:variance:" (id as ptr, low as CGFloat, up as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A656374207573696E6720612076616C756520616E642061206D6178696D756D2064697374616E63652066726F6D20746861742076616C75652E
		Shared Function RangeWithValueAndVariance(Value as Double, Variance as Double) As AppleSKRange
		  dim result as new AppleSKRange (rangeWithValue(ClassPtr, value, Variance))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlowerLimit Lib SpriteKitLibName Selector "setLowerLimit:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setupperLimit Lib SpriteKitLibName Selector "setUpperLimit:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E6420696E697469616C697A65732061206E65772072616E6765206F626A656374207468617420656E636F6D70617373657320616C6C20706F737369626C652076616C7565732E
		Shared Function UnlimitedRange() As AppleSKRange
		  dim result as new AppleSKRange (rangeWithNoLimits(ClassPtr))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Untitled, Description = 53746174757320636F6D706C657465
		
		MAcOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKRange")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D20706F737369626C652076616C75652E
		#tag Getter
			Get
			  return getLowerLimit (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlowerLimit mid, value
			End Set
		#tag EndSetter
		LowerLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20706F737369626C652076616C75652E
		#tag Getter
			Get
			  return getupperLimit (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUpperLimit mid, value
			End Set
		#tag EndSetter
		UpperLimit As Double
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
			Name="LowerLimit"
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
			Name="UpperLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
