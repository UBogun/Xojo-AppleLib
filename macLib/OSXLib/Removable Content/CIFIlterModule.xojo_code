#tag Module
Protected Module CIFIlterModule
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646A7573747320746865206578706F737572652073657474696E6720666F7220616E20696D6167652073696D696C617220746F207468652077617920796F7520636F6E74726F6C206578706F7375726520666F7220612063616D657261207768656E20796F75206368616E67652074686520462D73746F702E
		Function AdjustExposure(extends p as picture, Exposure as Double = 0.5) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIExposureAdjust (p, Exposure)
		      return f.OutputciImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma Unused p
		    #pragma Unused Exposure
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646A75737473206D6964746F6E65206272696768746E6573732E
		Function AdjustGamma(extends p as picture, Gamma as Double = 0.75) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIGammaAdjust (p, Gamma)
		      return f.OutputciImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma Unused p
		    #pragma Unused Gamma
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 4368616E67657320746865206F766572616C6C206875652C206F722074696E742C206F662074686520736F7572636520706978656C7320627920726F746174696E672069747320636F6C6F72732061726F756E6420746865206E65757472616C20617869732E20416E676C6520697320696E20646567726565732E
		Function AdjustHue(extends p as picture, HueAngle as double) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIHueAdjust (p, HueAngle)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma Unused p
		    #pragma Unused HueAngle
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646170747320746865207265666572656E636520776869746520706F696E7420636F6C6F722074656D70657261747572652E
		Function AdjustTemperature(extends p as picture, NeutralTemp as double = 6500, TargetTemp as Double = 6500) As Picture
		  return p.AdjustTemperatureAndTint(NeutralTemp, Targettemp, 0,0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646170747320746865207265666572656E636520776869746520706F696E7420666F7220616E20696D6167652E
		Function AdjustTemperatureAndTint(extends p as picture, NeutralTemp as double = 6500, TargetTemp as Double = 6500, NeutralTint as double = 0, TargetTint as double = 0) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCITemperatureAndTint (p, NeutralTemp, Neutraltint, TargetTemp, TargetTint)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma Unused p
		    #pragma Unused NeutralTemp
		    #pragma Unused TargetTemp
		    #pragma Unused NeutralTint
		    #pragma Unused TargetTint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646170747320746865207265666572656E636520776869746520706F696E742074696E742E
		Function AdjustTint(extends p as picture,  NeutralTint as double = 0, TargetTint as double = 0) As Picture
		  return p.AdjustTemperatureAndTint(6500, 6500, NeutralTint,targettint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646A7573747320746F6E6520726573706F6E7365206F662074686520522C20472C20616E642042206368616E6E656C73206F6620616E20696D6167652E
		Function AdjustToneCurve(extends p as picture, Point0X as double = 0, Point0y as double = 0, point1x as double = 0.25, Point1y as double = 0.25, Point2x as double = 0.5, point2y as double = 0.5, point3x as double = 0.75, point3y as double = 0.75, point4x as double = 1.0, point4y as double = 1.0) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIToneCurve (p, point0x, point0y, point1x, point1y, point2x, point2y, _
		      point3x, point3y, point4x, point4y)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma Unused p
		    #pragma Unused point0x
		    #pragma unused point0y
		    #pragma Unused point1x
		    #pragma unused point1y
		    #pragma Unused point2x
		    #pragma unused point2y
		    #pragma Unused point3x
		    #pragma unused point3y
		    #pragma Unused point4x
		    #pragma unused point4y
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646A75737473207468652073617475726174696F6E206F6620616E20696D616765207768696C65206B656570696E6720706C656173696E6720736B696E20746F6E65732E
		Function AdjustVibrance(extends p as picture, Vibrance as double = 0) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIVibrance (p, Vibrance)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma Unused p
		    #pragma Unused Vibrance
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 426C75727320616E20696D616765207573696E67206120626F782D73686170656420636F6E766F6C7574696F6E206B65726E656C2E
		Function BlurBox(extends p as picture, BlurValue as Double = 10) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIBoxBlurFilter (p, BlurValue)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused BlurValue
		    #pragma unused p
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 426C75727320616E20696D616765207573696E67206120646973632D73686170656420636F6E766F6C7574696F6E206B65726E656C2E
		Function BlurDisc(extends p as picture, BlurRadius as Double = 8) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIdiscBlurFilter (p, blurRadius)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma unused BlurRadius
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 5370726561647320736F7572636520706978656C7320627920616E20616D6F756E7420737065636966696564206279206120476175737369616E20646973747269627574696F6E2E
		Function BlurGaussian(extends p as picture, BlurRadius as Double = 10) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIGaussianBlurFilter (p, blurRadius)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma Unused p
		    #pragma Unused BlurRadius
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 426C7572732074686520736F7572636520696D616765206163636F7264696E6720746F20746865206272696768746E657373206C6576656C7320696E2061206D61736B20696D6167652E
		Function BlurMask(extends p as picture, GrayMask As Picture, BlurRadius as Double = 10) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIMaskedVariableBlurFilter (p, GrayMask, blurRadius)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma Unused GrayMask
		    #pragma Unused BlurRadius
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 426C75727320616E20696D61676520746F2073696D756C6174652074686520656666656374206F66207573696E6720612063616D6572612074686174206D6F76657320612073706563696669656420616E676C6520616E642064697374616E6365207768696C6520636170747572696E672074686520696D6167652E
		Function BlurMotion(extends p as picture, BlurRadius as Double = 20, BlurAngle As Double = 0) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIMotionBlurFilter (p, blurRadius, blurangle)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma unused BlurRadius
		    #pragma unused blurangle
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 53696D756C617465732074686520656666656374206F66207A6F6F6D696E67207468652063616D657261207768696C6520636170747572696E672074686520696D6167652E
		Function BlurZoom(extends p as picture, Amount as Double = 20.0, CenterX As Double = -1, CenterY as Double = -1) As Picture
		  #if targetmacos
		    try
		      if CenterX < 0 then centerx = p.Width /2
		      If CenterY < 0 then centery = p.Height / 2
		      dim f as new AppleCIZoomBlurFilter (p, centerx, centery, Amount)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma unused amount
		    #pragma unused centerx
		    #pragma unused centery
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 52657475726E73207468652070696374757265206368616E67656420696E206272696768746E65737320776865726520302E30206D65616E73206E6F206368616E67652E
		Function ChangeBrightness(extends p as picture, Brightness as double) As Picture
		  #if targetmacos
		    return p.ChangeSaturationBrightnessContrast(1, brightness, 1)
		  #else
		    #pragma unused brightness
		    #pragma unused p
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 4D756C7469706C69657320736F7572636520636F6C6F722076616C75657320616E6420616464732061206269617320666163746F7220746F206561636820636F6C6F7220636F6D706F6E656E742E
		Function ChangeColorMatrix(extends p as picture, RedVector As applelibvectorRGBA = nil, GreenVector as applelibvectorRGBA = nil, BlueVector As applelibvectorRGBA = nil, AlphaVector As applelibvectorRGBA = nil, BiasVector As applelibvectorRGBA = nil) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIColorMatrix (p, RedVector, GreenVector, BlueVector, AlphaVector, BiasVector)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #Pragma unused p
		    #pragma Unused RedVector
		    #pragma Unused GreenVector
		    #pragma unused BlueVector
		    #pragma unused AlphaVector
		    #pragma unused BiasVector
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 4D6F6469666965732074686520706978656C2076616C75657320696E20616E20696D616765206279206170706C79696E67206120736574206F6620637562696320706F6C796E6F6D69616C732E
		Function ChangeColorPolynomial(extends p as picture, RedVector As AppleLibVectorRGBA = nil, GreenVector as AppleLibVectorRGBA = nil, BlueVector As AppleLibVectorRGBA = nil, AlphaVector  As AppleLibVectorRGBA = nil) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIColorPolynomial (p, RedVector, GreenVector, BlueVector, AlphaVector)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #Pragma unused p
		    #pragma Unused RedVector
		    #pragma Unused GreenVector
		    #pragma unused BlueVector
		    #pragma unused AlphaVector
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 52657475726E73207468652070696374757265206368616E67656420696E20636F6E747261737220776865726520312E30206D65616E73206E6F206368616E67652E
		Function ChangeContrast(extends p as picture, Contrast as double) As Picture
		  #if targetmacos
		    return p.ChangeSaturationBrightnessContrast(1.0, 0.0, contrast)
		  #else
		    #pragma unused contrast
		    #pragma unused p
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 52657475726E73207468652070696374757265206368616E67656420696E2073617475726174696F6E20776865726520312E30206D65616E73206E6F206368616E67652E
		Function ChangeSaturation(extends p as picture, Saturation as double) As Picture
		  #if targetmacos
		    return p.ChangeSaturationBrightnessContrast(Saturation, 0, 1)
		  #else
		    #pragma unused saturation
		    #pragma unused p
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 41646A757374732073617475726174696F6E2C206272696768746E6573732C20616E6420636F6E74726173742076616C7565732E
		Function ChangeSaturationBrightnessContrast(extends p as picture, Saturation as double = 1.0, Brightness as Double = 0.0, Contrast as Double = 1.0) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIColorControls (p, Saturation, Brightness, Contrast)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		    #Pragma unused p
		    #pragma Unused saturation
		    #pragma Unused brightness
		    #pragma unused contrast
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 4D6F64696669657320636F6C6F722076616C75657320746F206B656570207468656D2077697468696E2061207370656369666965642072616E67652E
		Function ClampColors(extends p as picture, MinColor as Color = &c000000FF, MaxColor as Color = &cFFFFFF00) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIColorClamp (p, MinColor, maxcolor)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma unused MinColor
		    #pragma Unused maxcolor
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 4D61707320636F6C6F7220696E74656E736974792066726F6D2061206C696E6561722067616D6D6120637572766520746F20746865207352474220636F6C6F722073706163652E
		Function ConvertLinearToSRGB(extends p as picture) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCILinearToSRGBToneCurve (p)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma unused BlurRadius
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 4D61707320636F6C6F7220696E74656E736974792066726F6D20746865207352474220636F6C6F7220737061636520746F2061206C696E6561722067616D6D612063757276652E
		Function ConvertSRGBtoLinear(extends p as picture) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCISRGBToneCurveToLinear (p)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma unused BlurRadius
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 436F6D707574657320746865206D656469616E2076616C756520666F7220612067726F7570206F66206E65696768626F72696E6720706978656C7320616E64207265706C61636573206561636820706978656C2076616C7565207769746820746865206D656469616E2E
		Function FilterMedian(extends p as picture) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIMedianFilter (p)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 47656E6572617465732061205152436F64652066726F6D20616E2055524C20616E64207363616C657320697420746F2061206365727461696E2077696474682C206B656570696E672070726F706F7274696F6E2E20426520617761726520746861742075707363616C696E6720746F2073697A6573206E7574207265736C7574696E6720696E20612070757265206D756C7469706C69636174696F6E206F6620746865206F726967696E616C2073697A65206D6967687420726573756C7420696E20696E746572706F6C6174696F6E206172746966616374732E
		Function GenerateQRCode(extends u as appleurl, CorrectionLevel as AppleCIQRCodeGenerator.QRCorrectionLevels = AppleCIQRCodeGenerator.QRCorrectionLevels.Medium, width as Double = 100) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIQRCodeGenerator (u, CorrectionLevel)
		      dim outpic as AppleCIImage = f.OutputCIImage
		      dim factor as double = 100/width * outpic.Extent.Size_.width
		      dim transform as new AppleAffineTransform 
		      transform.Scale (factor)
		      dim f1 as new AppleCIAffineTransform(nil, transform)
		      f1.InputCIImage = outpic
		      return f1.OutputImage.toPicture
		    catch
		      return nil
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 47656E6572617465732061205152436F64652066726F6D207465787420616E64207363616C657320697420746F2061206365727461696E2077696474682C206B656570696E672070726F706F7274696F6E2E20426520617761726520746861742075707363616C696E6720746F2073697A6573206E7574207265736C7574696E6720696E20612070757265206D756C7469706C69636174696F6E206F6620746865206F726967696E616C2073697A65206D6967687420726573756C7420696E20696E746572706F6C6174696F6E206172746966616374732E
		Function GenerateQRCode(extends t as text,CorrectionLevel as AppleCIQRCodeGenerator.QRCorrectionLevels = AppleCIQRCodeGenerator.QRCorrectionLevels.Medium, width as Double = 100) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIQRCodeGenerator (t, CorrectionLevel)
		      dim outpic as AppleCIImage = f.OutputCIImage
		      dim factor as double = 100/width * outpic.Extent.Size_.width
		      dim transform as new AppleAffineTransform 
		      transform.Scale (factor)
		      dim f1 as new AppleCIAffineTransform(nil, transform)
		      f1.InputCIImage = outpic
		      return f1.OutputImage.toPicture
		      // result = result.Resize (FoundationFrameWork.NSMakeSize(width, width), true, AppKitFramework.NSImageInterpolation.None, ScaleFactor)
		      // dim pic as picture = result.toPicture
		      // return pic.ChangeContrast(10).SharpenLuminance(0.5)
		    catch
		      return nil
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 47656E65726174657320616E20696D616765206F6620696E66696E69746520657874656E742077686F736520706978656C2076616C75657320617265206D616465207570206F6620666F757220696E646570656E64656E742C20756E69666F726D6C792D64697374726962757465642072616E646F6D206E756D6265727320696E20746865203020746F20312072616E67652E
		Function GenerateRandomNoise() As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIRandomGenerator ()
		      return f.OutputImage.toPicture
		    catch
		      return nil
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 496E76657274732074686520636F6C6F7273206F662074686520696D6167652E
		Function InvertColors(extends p as picture) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIColorInvert (p)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 52656475636573206E6F697365207573696E672061207468726573686F6C642076616C756520746F20646566696E65207768617420697320636F6E73696465726564206E6F6973652E
		Function ReduceNoise(extends p as picture, NoiseLevel as Double = 0.02, Sharpness as Double = 0.4) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCINoiseReduction (p, NoiseLevel, Sharpness)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #Pragma unused p
		    #pragma Unused NoiseLevel
		    #pragma Unused sharpness
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 526F746174657320616E642063726F707320746865207069637475726520636F6E74656E7420636C6F636B776973652E
		Function RotateContent(extends p as picture, Angle as Double) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIStraightenFilter (p,angle)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #Pragma unused p
		    #pragma Unused Angle
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 5368617270656E7320746865206C756D696E616E6365206F662074686520706963747572652E
		Function SharpenLuminance(extends p as picture, Sharpen As Double = 0.4) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCISharpenLuminance (p, Sharpen)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma Unused GrayMask
		    #pragma Unused BlurRadius
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 506572666F726D7320616E20756E7368617270206D61736B206F7065726174696F6E206F6E2074686520706963747572652E
		Function SharpenUnsharpMask(extends p as picture, Radius As Double = 2.5, Intensity as double = 0.5) As Picture
		  #if targetmacos
		    try
		      dim f as new AppleCIUnsharpMask (p, Radius, Intensity)
		      return f.OutputCIImage.topicture
		    catch
		      return p
		    end try
		  #else
		    #pragma unused p
		    #pragma Unused GrayMask
		    #pragma Unused BlurRadius
		  #endif
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
