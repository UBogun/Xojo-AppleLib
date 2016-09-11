#tag Class
Protected Class AppleColor
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function blendedColorWithFraction Lib appkitlibname Selector "blendedColorWithFraction:ofColor:" (id as ptr, fraction as cgfloat, OtherColor As Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120626C656E64206F66207468652063757272656E7420636F6C6F72207769746820616E6F7468657220636F6C6F722E20546865206D6574686F6420636F6E766572747320636F6C6F7220616E64206120636F7079206F662074686520726563656976657220746F205247422C20616E64207468656E2073657473206561636820636F6D706F6E656E74206F66207468652072657475726E656420636F6C6F7220746F206672616374696F6E206F6620636F6C6F72E28099732076616C756520706C7573203120E28093206672616374696F6E206F6620746865207265636569766572E28099732E
		Function BlendWithColor(Fraction As Double, otherColor as Applecolor) As AppleColor
		  #If TargetMacOS then
		    return  AppleColor.MakefromPtr (blendedColorWithFraction(id, Fraction, otherColor.id))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220776974682061206E657720616C7068612076616C7565
		Function ChangeAlpha(NewAlpha As Double) As AppleColor
		  #If TargetMacOS then
		    return  AppleColor.MakefromPtr (colorWithAlphaComponent(id, Newalpha))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220636F6E76657274656420746F207468652073706563696669656420636F6C6F72737061636520696620706F737369626C652E
		Function ChangeColorSpace(ColorSpace as AppleColorSpace) As AppleColor
		  #If TargetMacOS then
		    return AppleColor.MakefromPtr(colorUsingColorSpace (id, ColorSpace.id))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220636F6E76657274656420746F207468652073706563696669656420636F6C6F727370616365E28099206E616D6520696620706F737369626C652E
		Function ChangeColorSpace(ColorSpaceName as CFStringRef) As AppleColor
		  #If TargetMacOS then
		    return AppleColor.MakefromPtr(colorUsingColorSpaceName (id, ColorSpaceName))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220636F6E76657274656420746F207468652073706563696669656420636F6C6F727370616365E28099206E616D6520616E6420737065636966696320746F2074686520676976656E206465766963652C20696620706F737369626C652E0A446576696365206465736372697074696F6E732063616E206265206F627461696E65642066726F6D2077696E646F77732C2073637265656E732C20616E64207072696E74657273207769746820746865206465766963654465736372697074696F6E206D6574686F642E
		Function ChangeColorSpace(ColorSpaceName as CFStringRef, DeviceDescription As AppleDictionary) As AppleColor
		  #If TargetMacOS then
		    return AppleColor.MakefromPtr(colorUsingColorSpaceNameDevice (id, ColorSpaceName, DeviceDescription.id))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorUsingColorSpace Lib appkitlibname Selector "colorUsingColorSpace:" (id as ptr, colorspace as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorUsingColorSpaceName Lib appkitlibname Selector "colorUsingColorSpaceName:" (id as ptr, name as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorUsingColorSpaceNameDevice Lib appkitlibname Selector "colorUsingColorSpaceName:device:" (id as ptr, name as CFStringRef, description as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorWithAlphaComponent Lib appkitlibname Selector "colorWithAlphaComponent:" (id as ptr, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorWithCalibratedHue Lib appkitlibname Selector "colorWithCalibratedHue:saturation:brightness:alpha:" (id as ptr, hue as cgfloat, saturation as cgfloat, brightness as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorWithCalibratedRed Lib appkitlibname Selector "colorWithCalibratedRed:green:blue:alpha:" (id as ptr, red as cgfloat, green as cgfloat, blue as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorWithCalibratedWhite Lib appkitlibname Selector "colorWithCalibratedWhite:alpha:" (id as ptr, white as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorWithCGColor Lib appkitlibname Selector "colorWithCGColor:" (id as ptr, CGColor as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorWithDeviceRed Lib appkitlibname Selector "colorWithDeviceRed:green:blue:alpha:" (id as ptr, red as cgfloat, green as cgfloat, blue as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorWithPatternImage Lib appkitlibname Selector "colorWithPatternImage:" (id as ptr, img as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720636F6C6F722066726F6D20616E204170706C654347436F6C6F722E
		Sub Constructor(col as applecgcolor)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (colorWithCGColor(classptr, col.CFTypeRef))
		    RetainClassObject
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207061747465726E20636F6C6F722066726F6D20616E20696D6167652E
		Sub Constructor(img as appleimage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (colorWithPatternImage(ClassPtr, img.Id))
		    RetainClassObject
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D206120586F6A6F20436F6C6F722E
		Sub Constructor(aColor as Color)
		  Constructor (aColor.red/255, aColor.Green/255, aColor.Blue/255, (255 - aColor.Alpha) / 255)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Red As Double, green As Double, blue As Double, Alpha As Double = 1.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (colorWithCalibratedRed(ClassPtr, red, Green, Blue, Alpha))
		    retainclassobject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E65772C2063616C6962726174656420636F6C6F722066726F6D205265642C20477265656E2C20426C756520616E64206F7074696F6E616C20416C7068612076616C75652E
<<<<<<< HEAD
		Shared Function FromCalibratedRGBA(Red As Double, Green As Double, Blue As Double, Alpha As Double = 1.0) As AppleColor
		  dim Result As new AppleColor(colorWithCalibratedHue (ClassPtr, red, green, blue, Alpha))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function FromCalibratedRGBA(Red As Double, Green As Double, Blue As Double, Alpha As Double = 1.0) As AppleColor
		  #If TargetMacOS then
		    dim Result As new AppleColor(colorWithCalibratedHue (ClassPtr, red, green, blue, Alpha))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D20616E204170706C654347436F6C6F72
		Shared Function FromCGColor(aColor as AppleCGColor) As AppleColor
		  return new AppleColor(acolor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D206120586F6A6F20436F6C6F722E
		Shared Function FromColor(aColor as Color) As AppleColor
		  return new AppleColor(aColor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
<<<<<<< HEAD
		Shared Function FromHSBA(Hue As Double, Saturation As Double, Brightness As Double, Alpha As Double = 1.0) As AppleColor
		  dim Result As new AppleColor(colorWithCalibratedHue (ClassPtr, Hue, Saturation, Brightness, Alpha))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function FromHSBA(Hue As Double, Saturation As Double, Brightness As Double, Alpha As Double = 1.0) As AppleColor
		  #If TargetMacOS then
		    dim Result As new AppleColor(colorWithCalibratedHue (ClassPtr, Hue, Saturation, Brightness, Alpha))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D206120586F6A6F20436F6C6F722E
		Shared Function FromImage(Img as AppleImage) As AppleColor
		  return new AppleColor(img)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getalphaComponent Lib appkitlibname Selector "alphaComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getblackComponent Lib appkitlibname Selector "blackComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getblueComponent Lib appkitlibname Selector "blueComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbrightnessComponent Lib appkitlibname Selector "brightnessComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcatalogNameComponent Lib appkitlibname Selector "catalogNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getCGColor Lib appkitlibname Selector "CGColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolorNameComponent Lib appkitlibname Selector "colorNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolorSpace Lib appkitlibname Selector "colorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolorSpaceName Lib appkitlibname Selector "colorSpaceName" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcyanComponent Lib appkitlibname Selector "cyanComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getgreenComponent Lib appkitlibname Selector "greenComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethueComponent Lib appkitlibname Selector "hueComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlocalizedCatalogNameComponent Lib appkitlibname Selector "localizedCatalogNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlocalizedColorNameComponent Lib appkitlibname Selector "localizedColorNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmagentaComponent Lib appkitlibname Selector "magentaComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getredComponent Lib appkitlibname Selector "redComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsaturationComponent Lib appkitlibname Selector "saturationComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwhiteComponent Lib appkitlibname Selector "whiteComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getyellowComponent Lib appkitlibname Selector "yellowComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720636F6C6F7220627269676874656E65642062792074686520616D6F756E7420737065636966696564202877686963682073686F756C64206265206265747765656E203020616E642031292E
		Function HighlightColor(Level As Double) As AppleColor
		  #If TargetMacOS then
		    return  AppleColor.MakefromPtr (highlightWithLevel(id, level))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function highlightWithLevel Lib appkitlibname Selector "highlightWithLevel:" (id as ptr, level as CGFloat) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleColor
		  return if (aptr = nil, nil, new applecolor(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_convert(aColor As AppleColor) As AppleCGColor
		  Return acolor.CGColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720636F6C6F72206461726B656E65642062792074686520616D6F756E7420737065636966696564202877686963682073686F756C64206265206265747765656E203020616E642031292E
		Function ShadowColor(Level As Double) As AppleColor
		  #If TargetMacOS then
		    return  AppleColor.MakefromPtr (shadowWithLevel(id, level))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shadowWithLevel Lib appkitlibname Selector "shadowWithLevel:" (id as ptr, level as CGFloat) As ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C70686120286F7061636974792920636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getalphaComponent(id)
			  #endif
			End Get
		#tag EndGetter
		AlphaComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C61636B20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F727370616365206973206E6F74206F6E65206F662074686520626C61636B206F7220776869746520636F6C6F72207370616365732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getblackComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		BlackComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C756520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getblueComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		BlueComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206272696768746E65737320636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getbrightnessComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		BrightnessComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636174616C6F6720636F6E7461696E696E672074686520636F6C6F72E2809973206E616D652E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getcatalogNameComponent (id)
			    catch
			    end try
			  #endif
			End Get
		#tag EndGetter
		CatalogNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520636F6C6F72207370616365206173736F63696174656420776974682074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return  new AppleCGColor (getCGColor(id), true)
			  #endif
			End Get
		#tag EndGetter
		CGColor As applecgcolor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSColor")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520636F6C6F722E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getcolorNameComponent (id)
			    catch
			    end try
			  #endif
			End Get
		#tag EndGetter
		ColorNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207370616365206173736F63696174656420776974682074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      dim result as AppleColorSpace = AppleColorSpace.MakeFromPtr(getcolorSpace(id))
			      // result.MHasOwnership = true
			      return result
			    catch
			      
			    end try
			  #endif
			End Get
		#tag EndGetter
		ColorSpace As AppleColorSpace
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520636F6C6F72207370616365206173736F63696174656420776974682074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcolorSpaceName(id)
			  #endif
			End Get
		#tag EndGetter
		ColorSpaceName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206379616E20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120434D594B436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getcyanComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		CyanComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520677265656E20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getgreenComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		GreenComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652068756520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return gethueComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		HueComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206E616D65206F662074686520636174616C6F6720636F6E7461696E696E672074686520636F6C6F72E2809973206E616D652E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getlocalizedCatalogNameComponent (id)
			    catch
			    end try
			  #endif
			End Get
		#tag EndGetter
		LocalizedCatalogNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206E616D65206F662074686520636F6C6F722E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getlocalizedColorNameComponent (id)
			    catch
			    end try
			  #endif
			End Get
		#tag EndGetter
		LocalizedColorNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6167656E746120636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120434D594B436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getmagentaComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		MagentaComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656420636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getredComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		RedComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073617475726174696F6E20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getsaturationComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		SaturationComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732074686520636F6C6F72206173206120586F6A6F20636F6C6F722028726561642D6F6E6C7929
		#tag Getter
			Get
			  dim col as  color
			  try
			    col= RGB( Round( 255.0 * redComponent), Round( 255.0 * GreenComponent), Round( 255.0 * BlueComponent), 255 - Round( 255.0 * AlphaComponent ) )
			    
			    ' col = color.rgba (RedComponent * 255, GreenComponent * 255, BlueComponent * 255, 255 - AlphaComponent * 255)
			    return col
			  catch
			    dim temp as applecolor = me.ChangeColorSpace(AppleColorSpace.GenericRGB)
			    col = color.rgba (temp.RedComponent * 255, temp.GreenComponent * 255, temp.BlueComponent * 255, 255 - temp.AlphaComponent * 255)
			    return col
			  end try
			End Get
		#tag EndGetter
		toColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520776869746520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F727370616365206973206E6F74206F6E65206F662074686520626C61636B206F7220776869746520636F6C6F72207370616365732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getwhiteComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		WhiteComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652079656C6C6F7720636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120434D594B436F6C6F7253706163652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    try
			      return getyellowComponent (id)
			    catch
			      return -1
			    end try
			  #endif
			End Get
		#tag EndGetter
		YellowComponent As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AlphaComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlackComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlueComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BrightnessComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CatalogNameComponent"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorNameComponent"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorSpaceName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CyanComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GreenComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HueComponent"
			Group="Behavior"
			Type="Double"
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
			Name="LocalizedCatalogNameComponent"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedColorNameComponent"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MagentaComponent"
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
			Name="RedComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SaturationComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="toColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WhiteComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YellowComponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
