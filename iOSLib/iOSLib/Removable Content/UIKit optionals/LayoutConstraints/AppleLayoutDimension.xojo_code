#tag Class
Protected Class AppleLayoutDimension
Inherits AppleLayoutAnchor
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintEqualToAnchorMultiplier Lib uikitlibname Selector "constraintEqualToAnchor:multiplier:" (id as ptr, anchor as ptr, multiplier as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintEqualToAnchorMultiplierConstant Lib uikitlibname Selector "constraintEqualToAnchor:multiplier:constant:" (id as ptr, anchor as ptr, multiplier as CGFloat, constant as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E6573206120636F6E7374616E742073697A6520666F722074686520616E63686F72E28099732073697A6520617474726962757465
		Function ConstraintEqualToConstant(Constant as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintEqualToConstant(id, Constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintEqualToConstant Lib uikitlibname Selector "constraintEqualToConstant:" (id as ptr, value as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E65732074686520616E63686F72E28099732073697A652061747472696275746520617320657175616C20746F207468652073706563696669656420616E63686F72206D756C7469706C6965642062792074686520636F6E7374616E742E
		Function ConstraintEqualToDimension(Anchor as AppleLayoutdimension, multiplier as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintEqualToAnchorMultiplier(id, anchor.id, multiplier))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E65732074686520616E63686F72E28099732073697A652061747472696275746520617320657175616C20746F207468652073706563696669656420616E63686F72206D756C7469706C6965642062792074686520636F6E7374616E742E
		Function ConstraintEqualToDimension(Anchor as AppleLayoutdimension, multiplier as Double, constant as double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintEqualToAnchorMultiplierConstant(id, anchor.id, multiplier, constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintGreaterThanOrEqualToAnchor Lib uikitlibname Selector "constraintGreaterThanOrEqualToAnchor:multiplier:" (id as ptr, anchor as ptr, multiplier as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintGreaterThanOrEqualToAnchorConstant Lib uikitlibname Selector "constraintGreaterThanOrEqualToAnchor:multiplier:constant:" (id as ptr, anchor as ptr, multiplier as cgfloat, constant as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E657320746865206D696E696D756D2073697A6520666F722074686520616E63686F72E28099732073697A65206174747269627574652E
		Function ConstraintGreaterThanOrEqualToConstant(Constant as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintGreaterThanOrEqualToConstant(id, Constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintGreaterThanOrEqualToConstant Lib uikitlibname Selector "constraintGreaterThanOrEqualToConstant:" (id as ptr, value as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E65732074686520616E63686F72E28099732073697A652061747472696275746520617320657175616C20746F207468652073706563696669656420616E63686F72206D756C7469706C6965642062792074686520636F6E7374616E742E
		Function ConstraintGreaterThanOrEqualToDimension(Anchor as AppleLayoutdimension, multiplier as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintGreaterThanOrEqualToAnchor(id, anchor.id, multiplier))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E65732074686520616E63686F72E28099732073697A65206174747269627574652061732067726561746572207468616E206F7220657175616C20746F207468652073706563696669656420616E63686F72206D756C7469706C6965642062792074686520636F6E7374616E7420706C757320616E206F66667365742E
		Function ConstraintGreaterThanOrEqualToDimension(Anchor as AppleLayoutdimension, multiplier as Double, constant as double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintGreaterThanOrEqualToAnchorConstant(id, anchor.id, multiplier, constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintLessThanOrEqualToAnchor Lib uikitlibname Selector "constraintLessThanOrEqualToAnchor:multiplier:" (id as ptr, anchor as ptr, multiplier as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintLessThanOrEqualToAnchorConstant Lib uikitlibname Selector "constraintLessThanOrEqualToAnchor:multiplier:constant:" (id as ptr, anchor as ptr, multiplier as cgfloat, constant as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E657320746865206D6178696D756D2073697A6520666F722074686520616E63686F72E28099732073697A65206174747269627574652E
		Function ConstraintLessThanOrEqualToConstant(Constant as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintLessThanOrEqualToConstant(id, Constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintLessThanOrEqualToConstant Lib uikitlibname Selector "constraintLessThanOrEqualToConstant:" (id as ptr, value as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E65732074686520616E63686F72E28099732073697A6520617474726962757465206173206C657373207468616E206F7220657175616C20746F207468652073706563696669656420616E63686F72206D756C7469706C6965642062792074686520636F6E7374616E742E
		Function ConstraintLessThanOrEqualtoDimension(Anchor as AppleLayoutdimension, multiplier as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintLessThanOrEqualToAnchor(id, anchor.id, multiplier))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E65732074686520616E63686F72E28099732073697A65206174747269627574652061732067726561746572207468616E206F7220657175616C20746F207468652073706563696669656420616E63686F72206D756C7469706C6965642062792074686520636F6E7374616E7420706C757320616E206F66667365742E
		Function ConstraintLessThanOrEqualToDimension(Anchor as AppleLayoutdimension, multiplier as Double, constant as double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintLessThanOrEqualToAnchorConstant(id, anchor.id, multiplier, constant))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleLayoutDimension
		  return if (aptr = nil, nil, new AppleLayoutDimension(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		OS X 10.11
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  #if TargetMacos
			    static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSLayoutDimension")
			    return mClassPtr
			  #endif
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
