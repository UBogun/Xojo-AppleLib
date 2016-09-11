#tag Module
Protected Module ColorExtension
	#tag Method, Flags = &h0, Description = 52657475726E73206120626C656E64206F66207468652063757272656E7420636F6C6F72207769746820616E6F7468657220636F6C6F722E20546865206D6574686F6420636F6E766572747320636F6C6F7220616E64206120636F7079206F662074686520726563656976657220746F205247422C20616E64207468656E2073657473206561636820636F6D706F6E656E74206F66207468652072657475726E656420636F6C6F7220746F206672616374696F6E206F6620636F6C6F72E28099732076616C756520706C7573203120E28093206672616374696F6E206F6620746865207265636569766572E28099732E
		Function BlendWithColor(extends c as color, OtherColor as Color, Fraction As Double) As color
		  #if Targetmacos
		    return AppleColor.FromColor(c).BlendWithColor(Fraction, AppleColor.FromColor(OtherColor)).toColor
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220776974682061206E657720616C7068612076616C75652E20416C70686120636F72726573706F6E647320746F2074686520616C7068612076616C7565206F66206120586F6A6F20636F6C6F72202872616E67652030202D2032353529206275742063616E206265206120646F75626C6520746F6F2E
		Function ChangeAlpha(extends c as color, NewAlpha As Double) As Color
		  #if TargetMacOS
		    dim alpha as double = (255.0 - newAlpha) / 255.0
		    return  AppleColor.FromColor(c).ChangeAlpha(alpha).toColor 
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720636F6C6F7220627269676874656E65642062792074686520616D6F756E7420737065636966696564202877686963682073686F756C64206265206265747765656E203020616E642031292E
		Function HighlightColor(extends c as color, Level As Double) As Color
		  #if targetmacos
		    return  AppleColor.FromColor(c).HighlightColor(level).toColor
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720636F6C6F72206461726B656E65642062792074686520616D6F756E7420737065636966696564202877686963682073686F756C64206265206265747765656E203020616E642031292E
		Function ShadowColor(extends c as color, Level As Double) As Color
		  #if targetmacos
		    return  AppleColor.FromColor(c).ShadowColor(level).toColor
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toText(extends c as color) As text
		  return str(c).ToText
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
