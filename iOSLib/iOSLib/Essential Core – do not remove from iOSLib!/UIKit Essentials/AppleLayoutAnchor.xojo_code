#tag Class
Protected Class AppleLayoutAnchor
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E6573206F6E65206974656DE28099732061747472696275746520617320657175616C20746F20616E6F746865722E
		Function ConstraintEqualToAnchor(Anchor as AppleLayoutAnchor) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintEqualToAnchor(id, anchor.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E6573206F6E65206974656DE28099732061747472696275746520617320657175616C20746F20616E6F7468657220706C7573206120636F6E7374616E74206F66667365742E
		Function ConstraintEqualToAnchor(Anchor as AppleLayoutAnchor, constant as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintEqualToAnchorConstant(id, anchor.id, constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintEqualToAnchor Lib uikitlibname Selector "constraintEqualToAnchor:" (id as ptr, anchor as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintEqualToAnchorConstant Lib uikitlibname Selector "constraintEqualToAnchor:constant:" (id as ptr, anchor as ptr, constant as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E6573206F6E65206974656DE2809973206174747269627574652061732067726561746572207468616E206F7220657175616C20746F20616E6F746865722E
		Function ConstraintGreaterThanOrEqualToAnchor(Anchor as AppleLayoutAnchor) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintGreaterThanOrEqualToAnchor(id, anchor.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E6573206F6E65206974656DE2809973206174747269627574652061732067726561746572207468616E206F7220657175616C20746F20616E6F7468657220706C7573206120636F6E7374616E74206F66667365742E
		Function ConstraintGreaterThanOrEqualToAnchor(Anchor as AppleLayoutAnchor, constant as double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintGreaterThanOrEqualToAnchorConstant(id, anchor.id, constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintGreaterThanOrEqualToAnchor Lib uikitlibname Selector "constraintGreaterThanOrEqualToAnchor:" (id as ptr, anchor as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintGreaterThanOrEqualToAnchorConstant Lib uikitlibname Selector "constraintGreaterThanOrEqualToAnchor:constant:" (id as ptr, anchor as ptr, constant as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E6573206F6E65206974656DE280997320617474726962757465206173206C657373207468616E206F7220657175616C20746F20616E6F746865722E
		Function ConstraintLessThanOrEqualToAnchor(Anchor as AppleLayoutAnchor) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintLessThanOrEqualToAnchor(id, anchor.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6E73747261696E74207468617420646566696E6573206F6E65206974656DE280997320617474726962757465206173206C657373207468616E206F7220657175616C20746F20616E6F74686572206974656DE28099732061747472696275746520706C7573206120636F6E7374616E74206F66667365742E
		Function ConstraintLessThanOrEqualToAnchor(Anchor as AppleLayoutAnchor, constant as Double) As AppleLayoutConstraint
		  return AppleLayoutConstraint.MakefromPtr(constraintLessThanOrEqualToAnchorConstant(id, anchor.id, constant))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintLessThanOrEqualToAnchor Lib uikitlibname Selector "constraintLessThanOrEqualToAnchor:" (id as ptr, anchor as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintLessThanOrEqualToAnchorConstant Lib uikitlibname Selector "constraintLessThanOrEqualToAnchor:constant:" (id as ptr, anchor as ptr, constant as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleLayoutAnchor
		  return if (aptr = nil, nil, new AppleLayoutAnchor(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		OS X 10.11.5
		
		Caution! LayoutAnchors exist since OS X 10.11.
		Check ClassAvailable if you support earlier versions too.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 547275652069662074686520636C61737320657869737473206F6E207468652072756E6E696E672073797374656D2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return classptr <> nil
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSLayoutAnchor")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
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
