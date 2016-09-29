#tag Module
Protected Module iOSButtonExtension
	#tag Method, Flags = &h0
		Function AdjustTextSize(extends c as iOSButton) As Boolean
		  return c.AppleObject.TitleLabel.AdjustsFontSizeToFitWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AdjustTextSize(extends c as iOSButton, assigns value as Boolean)
		  c.AppleObject.TitleLabel.AdjustsFontSizeToFitWidth = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppleObject(extends c as iOSButton) As AppleButton
		  return new AppleButton  (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundColor(extends c as iOSButton) As Color
		  return c.AppleObject.BackgroundColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundColor(extends c as iOSButton, assigns value as color)
		  c.AppleObject.BackgroundColor = value.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundRadius(extends c as iOSButton) As Double
		  return c.AppleObject.Layer.CornerRadius
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundRadius(extends c as iOSButton, assigns value as Double)
		  c.AppleObject.Layer.CornerRadius = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BorderWidth(extends b as iOSButton) As double
		  return b.AppleObject.Layer.BorderWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BorderWidth(extends b as iOSButton, assigns value as double)
		  b.AppleObject.Layer.BorderWidth = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.BackgroundImage(applecontrolstate.Disabled).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.BackgroundImage (AppleControlState.Disabled) = image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledCaption(extends c as iOSButton) As Text
		  return c.AppleObject.Title ( AppleControlState.Disabled)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleObject.Title( AppleControlState.Disabled) = Caption
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.Image(AppleControlState.Disabled).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.Image ( AppleControlState.Disabled) = Image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledTextColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleColor(AppleControlState.Disabled).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleColor ( AppleControlState.Disabled) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleShadowColor (AppleControlState.Disabled).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleShadowColor( AppleControlState.Disabled) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Font(extends b as iOSButton) As iosfont
		  dim myfont as AppleFont = b.TitleLabel.Font
		  return myfont.toiOSFont
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Font(extends b as iOSButton, assigns value as iosfont)
		  b.TitleLabel.Font = value.toAppleFont
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.BackgroundImage(AppleControlState.Highlighted).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.BackgroundImage ( AppleControlState.Highlighted) = Image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedCaption(extends c as iOSButton) As Text
		  return c.AppleObject.Title ( AppleControlState.Highlighted)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleObject.Title (AppleControlState.Highlighted) = Caption
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.Image(AppleControlState.Highlighted).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.Image (AppleControlState.Highlighted) = Image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedTextColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleColor(AppleControlState.Highlighted).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleColor ( AppleControlState.Highlighted) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleShadowColor(AppleControlState.Highlighted).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleShadowColor ( AppleControlState.Highlighted) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ImageView(extends c as iOSButton) As AppleView
		  return c.AppleObject.ImageView
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.BackgroundImage(AppleControlState.Normal).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.BackgroundImage ( AppleControlState.Normal) = Image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalCaption(extends c as iOSButton) As Text
		  return c.AppleObject.Title ( AppleControlState.Normal)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleObject.Title (AppleControlState.Normal) = Caption
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.Image(AppleControlState.Normal).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.Image(AppleControlState.Normal) = Image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalTextColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleColor(AppleControlState.Normal).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleColor ( AppleControlState.Normal) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleShadowColor (AppleControlState.Normal).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleShadowColor(AppleControlState.Normal) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReverseTextShadowOnTap(extends c as iOSButton) As Boolean
		  return c.AppleObject.ReversesTitleShadowWhenHighlighted
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReverseTextShadowOnTap(extends c as iOSButton, assigns value as Boolean)
		  c.AppleObject.ReversesTitleShadowWhenHighlighted = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.BackgroundImage(AppleControlState.Selected).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.BackgroundImage ( AppleControlState.Selected) = Image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedCaption(extends c as iOSButton) As Text
		  return c.AppleObject.Title ( AppleControlState.Selected)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleObject.Title (AppleControlState.Selected) = Caption
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedImage(extends c as iOSButton) As iOSImage
		  return c.AppleObject.Image(AppleControlState.Selected).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleObject.Image (AppleControlState.Selected) = Image.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedTextColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleColor(AppleControlState.Selected).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleColor( AppleControlState.Selected) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleObject.TitleShadowColor (AppleControlState.Selected).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleObject.TitleShadowColor ( AppleControlState.Selected) = newcolor.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowTap(extends c as iOSButton) As Boolean
		  return c.AppleObject.ShowsTouchWhenHighlighted
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowTap(extends c as iOSButton, value as Boolean)
		  c.AppleObject.ShowsTouchWhenHighlighted = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Textlines(extends c as iOSButton) As Integer
		  return c.AppleObject.TitleLabel.NumberOfLines
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Textlines(extends c as iOSButton, assigns value as Integer)
		  c.AppleObject.TitleLabel.NumberOfLines = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleLabel(extends c as iOSButton) As AppleLabel
		  return c.AppleObject.TitleLabel
		End Function
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
