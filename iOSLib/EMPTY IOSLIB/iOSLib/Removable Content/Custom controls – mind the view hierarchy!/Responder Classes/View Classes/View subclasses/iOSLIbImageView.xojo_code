#tag Class
Protected Class iOSLIbImageView
Inherits iOSLIbView
	#tag Event
		Function CreateView() As uinteger
		  dim subID as uinteger = raiseEvent CreateView
		  if  subid = 0 then
		    dim myimage as appleimage = AppleImage.EmptyImage(FoundationFrameWork.nsmakesize(100,100))
		    dim myview as new appleimageview (myimage)
		    mid = myview
		    myview.RegisterControl (self)
		    // myview.BackgroundColor = AppleColor.WhiteColor
		    AttachHandlers
		    return uinteger(myview.id)
		  else
		    return subid
		  end if
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 52657475726E73206120586F6A6F206172726179206F6620694F53496D61676520636F6E7374697374696E67206F662074686520616E696D6174656420696D61676573206F662074686520636F6E74726F6C2E
		Function AnimationImages() As iOSImage()
		  return AppleImage.ArrayToCoreArray(appleobject.AnimationImages)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473206120586F6A6F206172726179206F6620694F53496D61676520746F20626520706C6179656420617320612073657175656E63652E
		Sub AnimationImages(assigns value() as iosimage)
		  appleobject.AnimationImages = AppleImage.FromIOSImages (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AttachHandlers()
		  AddHandler mid.DidAddSubview, AddressOf informonDidAddSubview
		  AddHandler mid.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		  AddHandler mid.DidMoveToWindow, AddressOf informOnDidMoveToWindow
		  // AddHandler mid.DrawRect, AddressOf informOnDrawRect
		  // AddHandler mid.layoutSubviews, AddressOf informOnlayoutSubviews
		  AddHandler mid.tintColorDidChange, AddressOf informontintColorDidChange
		  AddHandler mid.TraitCollectionDidChange, AddressOf informonTraitCollectionDidChange
		  AddHandler mid.WillMoveToSuperview, AddressOf informonWillMoveToSuperview
		  AddHandler mid.WillMoveToWindow, AddressOf informonWillMoveToWindow
		  AddHandler mid.WillRemoveSubview, AddressOf informonWillRemoveSubview
		  
		  
		  AddHandler AppleObject.TouchesBeganwithEvent, AddressOf informonTouchesBeganwithEvent
		  AddHandler AppleObject.TouchesCancelledwithEvent, AddressOf informonTouchesCancelledwithEvent
		  AddHandler AppleObject.TouchesEndedwithEvent, AddressOf informonTouchesEndedwithEvent
		  AddHandler AppleObject.TouchesMovedwithEvent, AddressOf informonTouchesMovedwithEvent
		  AddHandler AppleObject.EstimatedPropertiesUpdated, AddressOf informonEstimatedPropertiesUpdated
		  
		  
		  AddHandler AppleObject.MotionBeganwithEvent, AddressOf informonMotionBeganwithEvent
		  AddHandler AppleObject.MotionCancelledwithEvent, AddressOf informonMotionCancelledwithEvent
		  AddHandler AppleObject.MotionEndedwithEvent, AddressOf informonMotionEndedwithEvent
		  
		  AddHandler AppleObject.PressesBeganwithEvent, AddressOf informonPressesBeganwithEvent
		  AddHandler AppleObject.PressesCancelledwithEvent, AddressOf informonPressesCancelledwithEvent
		  AddHandler AppleObject.PressesEndedwithEvent, AddressOf informonPressesEndedwithEvent
		  AddHandler AppleObject.PressesChangedwithEvent, AddressOf informonPressesChangedwithEvent
		  
		  AddHandler AppleObject.AnimationDidStart, Addressof informonAnimationDidStart
		  AddHandler AppleObject.animationDidStop, AddressOf informonAnimationDidStop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120586F6A6F206172726179206F6620694F53496D61676520636F6E7374697374696E67206F662074686520616E696D6174656420696D61676573206F662074686520636F6E74726F6C20746F20626520706C61796564207768656E20696E20686967686C6967687465642073746174652E
		Function HighlightedAnimationImages() As iOSImage()
		  return AppleImage.ArrayToCoreArray(appleobject.HighlightedAnimationImages)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473206120586F6A6F206172726179206F6620694F53496D61676520746F20626520706C6179656420617320612073657175656E6365207768656E20696E20686967686C6967687465642073746174652E
		Sub HighlightedAnimationImages(assigns value() as iosimage)
		  appleobject.HighlightedAnimationImages = AppleImage.FromIOSImages (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746172747320616E696D6174696E672074686520696D6167657320696E2074686520636F6E74726F6C20776974682074686520666972737420696D6167652E
		Sub StartAnimating()
		  appleobject.startAnimating 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F707320616E696D6174696E672074686520696D6167657320696E2074686520636F6E74726F6C2E
		Sub StopAnimating()
		  appleobject.stopAnimating
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CreateView() As uinteger
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520616E696D6174696F6E2069732072756E6E696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleobject.Animating
			End Get
		#tag EndGetter
		Animating As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F662074696D6520696E207365636F6E64732069742074616B657320746F20676F207468726F756768206F6E65206379636C65206F662074686520696D616765732E
		#tag Getter
			Get
			  return appleobject.AnimationDuration
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  appleobject.AnimationDuration = value
			End Set
		#tag EndSetter
		AnimationDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662074696D657320746F207265706561742074686520616E696D6174696F6E2E
		#tag Getter
			Get
			  return appleobject.AnimationRepeatCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  appleobject.AnimationRepeatCount = value
			End Set
		#tag EndSetter
		AnimationRepeatCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleimageview(mID)
			End Get
		#tag EndGetter
		AppleObject As Appleimageview
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D61676520697320686967686C6967687465642E
		#tag Getter
			Get
			  return appleobject.Highlighted
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  appleobject.Highlighted = value
			End Set
		#tag EndSetter
		Highlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686967686C69676874656420696D61676520646973706C6179656420696E2074686520696D61676520766965772E
		#tag Getter
			Get
			  return appleobject.HighlightedImage.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  appleobject.HighlightedImage = value.toAppleImage
			End Set
		#tag EndSetter
		HighlightedImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D61676520646973706C6179656420696E2074686520696D61676520766965772E
		#tag Getter
			Get
			  return appleobject.Image.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  appleobject.Image = value.toAppleImage
			End Set
		#tag EndSetter
		Image As iOSImage
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Animating"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimationDuration"
			Visible=true
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimationRepeatCount"
			Visible=true
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Visible=true
			Group="Behavior"
			InitialValue="ScaleAspectFill"
			Type="UIKitFramework.UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightedImage"
			Group="Behavior"
			Type="iOSImage"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image"
			Group="Behavior"
			Type="iOSImage"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="AppleView.UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
