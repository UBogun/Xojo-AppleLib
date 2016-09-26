#tag Module
Protected Module iOSLabelExtension
	#tag Method, Flags = &h0, Description = 576865746865722074686520666F6E742073697A652073686F756C64206265207265647563656420696E206F7264657220746F2066697420746865207469746C6520737472696E6720696E746F20746865206C6162656CE280997320626F756E64696E672072656374616E676C652E
		Function AdjustFontSize(extends l as iOSLabel) As Boolean
		  return l.AppleObject.AdjustsFontSizeToFitWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722074686520666F6E742073697A652073686F756C64206265207265647563656420696E206F7264657220746F2066697420746865207469746C6520737472696E6720696E746F20746865206C6162656CE280997320626F756E64696E672072656374616E676C652E
		Sub AdjustFontSize(extends l as iOSLabel, assigns value as Boolean)
		  l.AppleObject.AdjustsFontSizeToFitWidth= value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5768657468657220746865206C6162656C207469676874656E732074657874206265666F7265207472756E636174696E672E20417661696C61626C652073696E636520694F5320392E302E
		Function AllowTightening(extends l as iOSLabel) As Boolean
		  return l.AppleObject.AllowsDefaultTighteningForTruncation
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5768657468657220746865206C6162656C207469676874656E732074657874206265666F7265207472756E636174696E672E20417661696C61626C652073696E636520694F5320392E302E
		Sub AllowTightening(extends l as iOSLabel, assigns value as Boolean)
		  l.AppleObject.AllowsDefaultTighteningForTruncation= value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6E74726F6C20697473656C66206173204170706C654C6162656C2028726561642D6F6E6C7929
		Function AppleObject(extends l as ioslabel) As AppleLabel
		  return new AppleLabel (l.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865207374796C6564207465787420646973706C6179656420627920746865206C6162656C2E
		Function AttributedText(extends l as iOSLabel) As AppleAttributedString
		  return l.AppleObject.AttributedCaption
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865207374796C6564207465787420646973706C6179656420627920746865206C6162656C2E
		Sub AttributedText(extends l as iOSLabel, assigns value as AppleAttributedString)
		  l.AppleObject.AttributedCaption = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 486F77207465787420626173656C696E6573206172652061646A7573746564207768656E2074657874206E6565647320746F20736872696E6B20746F2066697420696E20746865206C6162656C2E
		Function BaseLineAdjustment(extends l as iOSLabel) As AppleLabel.UIBaselineAdjustment
		  return l.AppleObject.BaselineAdjustment
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 486F77207465787420626173656C696E6573206172652061646A7573746564207768656E2074657874206E6565647320746F20736872696E6B20746F2066697420696E20746865206C6162656C2E
		Sub BaseLineAdjustment(extends l as iOSLabel, assigns value as AppleLabel.UIBaselineAdjustment)
		  l.AppleObject.BaselineAdjustment = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C2073686F756C6420626520647261776E2077697468206120686967686C696768742E
		Function Highlighted(extends l as iOSLabel) As Boolean
		  return l.AppleObject.Highlighted
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C2073686F756C6420626520647261776E2077697468206120686967686C696768742E
		Sub Highlighted(extends l as iOSLabel, assigns value as Boolean)
		  l.AppleObject.Highlighted = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520686967686C6967687420636F6C6F72206170706C69656420746F20746865206C6162656CE280997320746578742E
		Function HighlightedTextColor(extends l as iOSLabel) As Color
		  return l.AppleObject.HighlightedTextColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520686967686C6967687420636F6C6F72206170706C69656420746F20746865206C6162656CE280997320746578742E
		Sub HighlightedTextColor(extends l as iOSLabel, assigns value as Color)
		  l.AppleObject.HighlightedTextColor = value.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D696E696D756D207363616C6520666163746F7220737570706F7274656420666F7220746865206C6162656CE280997320746578742E
		Function MinimumScaleFactor(extends l as iOSLabel) As double
		  return l.AppleObject.MinimumScaleFactor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D696E696D756D207363616C6520666163746F7220737570706F7274656420666F7220746865206C6162656CE280997320746578742E
		Sub MinimumScaleFactor(extends l as iOSLabel, assigns value as double)
		  l.AppleObject.MinimumScaleFactor= value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520707265666572726564206D6178696D756D2077696474682028696E20706F696E74732920666F722061206D756C74696C696E65206C6162656C2E
		Function MultilineMaxWidth(extends l as iOSLabel) As double
		  return l.AppleObject.PreferredMaxLayoutWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520707265666572726564206D6178696D756D2077696474682028696E20706F696E74732920666F722061206D756C74696C696E65206C6162656C2E
		Sub MultilineMaxWidth(extends l as iOSLabel, assigns value as double)
		  l.AppleObject.PreferredMaxLayoutWidth= value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F66206C696E657320746F2075736520666F722072656E646572696E6720746578742E2044656661756C74203D20312E20556E6C696D69746564203D20302E
		Function NumberOfLines(extends l as iOSLabel) As integer
		  return l.AppleObject.NumberOfLines
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F66206C696E657320746F2075736520666F722072656E646572696E6720746578742E2044656661756C74203D20312E20556E6C696D69746564203D20302E
		Sub NumberOfLines(extends l as iOSLabel, assigns value as integer)
		  l.AppleObject.NumberOfLines = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6C6F72206170706C69656420746F20746865206C6162656CE2809973207465787420736861646F772E
		Function ShadowColor(extends l as iOSLabel) As Color
		  return l.AppleObject.ShadowColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6C6F72206170706C69656420746F20746865206C6162656CE2809973207465787420736861646F772E
		Sub ShadowColor(extends l as iOSLabel, assigns value as Color)
		  l.AppleObject.ShadowColor= value.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520736861646F77206F666673657420286D6561737572656420696E20706F696E74732920666F722074686520746578742E
		Function ShadowOffset(extends l as ioslabel) As xojo.core.size
		  return l.AppleObject.ShadowOffset.tocoresize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520736861646F77206F666673657420286D6561737572656420696E20706F696E74732920666F722074686520746578742E
		Sub ShadowOffset(extends l as ioslabel, assigns value as xojo.core.size)
		  l.AppleObject.ShadowOffset= value.tonssize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6D70757465642064726177696E672072656374616E676C6520666F7220746865206C6162656CE280997320746578742E28726561642D6F6E6C7929
		Function TextRect(extends l as ioslabel) As xojo.core.rect
		  return l.AppleObject.TextRect.tocorerect
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
