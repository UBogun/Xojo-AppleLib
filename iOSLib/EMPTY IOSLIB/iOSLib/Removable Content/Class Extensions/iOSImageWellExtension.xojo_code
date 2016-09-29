#tag Module
Protected Module iOSImageWellExtension
	#tag Method, Flags = &h0, Description = 576865746865722074686520616E696D6174696F6E2069732072756E6E696E672E2028726561642D6F6E6C7929
		Function Animating(extends c as iosimageview) As Boolean
		  Return c.AppleObject.Animating
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520616D6F756E74206F662074696D6520696E207365636F6E64732069742074616B657320746F20676F207468726F756768206F6E65206379636C65206F662074686520696D616765732E
		Function AnimationDuration(extends c as iosimageview) As Double
		  Return c.AppleObject.AnimationDuration
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520616D6F756E74206F662074696D6520696E207365636F6E64732069742074616B657320746F20676F207468726F756768206F6E65206379636C65206F662074686520696D616765732E
		Sub AnimationDuration(extends c as iosimageview, assigns value as double)
		  c.AppleObject.AnimationDuration = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E206172726179206F6620694F53496D6167657320746F2075736520666F7220616E20616E696D6174696F6E2E
		Function AnimationImages(extends c as iosimageview) As iosimage()
		  Return AppleImage.ArrayToCoreArray(c.AppleObject.AnimationImages)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E206172726179206F6620694F53496D6167657320746F2075736520666F7220616E20616E696D6174696F6E2E
		Sub AnimationImages(extends c as iosimageview, assigns value() as iosimage)
		  dim mArray as new AppleMutableArray (value.Ubound + 1)
		  for q as UInteger = 0 to value.Ubound
		    mArray.Addobject value(q).toAppleImage
		  next
		  c.AppleObject.AnimationImages = mArray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206E756D626572206F662074696D657320746F207265706561742074686520616E696D6174696F6E2E
		Function AnimationRepeatCount(extends c as iosimageview) As Integer
		  Return c.AppleObject.AnimationRepeatCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206E756D626572206F662074696D657320746F207265706561742074686520616E696D6174696F6E2E
		Sub AnimationRepeatCount(extends c as iosimageview, assigns value as Integer)
		  c.AppleObject.AnimationRepeatCount = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6E74726F6C20697473656C66206173204170706C65496D616765566965772028726561642D6F6E6C7929
		Function AppleObject(extends c as iosimageview) As AppleImageView
		  return new AppleImageView (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722074686520696D61676520697320686967686C6967687465642E
		Function Highlighted(extends c as iosimageview) As Boolean
		  Return c.AppleObject.Highlighted
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722074686520696D61676520697320686967686C6967687465642E
		Sub Highlighted(extends c as iOSImageView, assigns value as Boolean)
		  c.AppleObject.Highlighted = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E206172726179206F6620694F53496D6167657320746F2075736520666F722074686520686967686C6967687465642074617465206F6620616E20616E696D6174696F6E2E
		Function HighlightedAnimationImages(extends c as iosimageview) As iosimage()
		  Return AppleImage.ArrayToCoreArray(c.AppleObject.HighlightedAnimationImages)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E206172726179206F6620694F53496D6167657320746F2075736520666F722074686520686967686C6967687465642074617465206F6620616E20616E696D6174696F6E2E
		Sub HighlightedAnimationImages(extends c as iosimageview, assigns value() as iosimage)
		  c.AppleObject.HighlightedAnimationImages = AppleImage.FromIOSImages(value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520686967686C69676874656420696D61676520646973706C6179656420696E2074686520696D61676520766965772E
		Function HightlightedImage(extends c as iosimageview) As iOSImage
		  Return c.AppleObject.HighlightedImage.toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520686967686C69676874656420696D61676520646973706C6179656420696E2074686520696D61676520766965772E
		Sub HightlightedImage(extends c as iosimageview, assigns value as iOSImage)
		  c.AppleObject.HighlightedImage = if (value = nil, nil, new AppleImage(value))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746172747320616E696D6174696E672074686520696D6167657320696E2074686520636F6E74726F6C20776974682074686520666972737420696D6167652E
		Sub StartAnimating(extends c as iosimageview)
		  c.AppleObject.StartAnimating
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F707320616E696D6174696E672074686520696D6167657320696E2074686520636F6E74726F6C2E
		Sub StopAnimating(extends c as iosimageview)
		  c.AppleObject.StopAnimating
		End Sub
	#tag EndMethod


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
End Module
#tag EndModule
