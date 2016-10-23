#tag Class
Protected Class AppleColor
Inherits AppleObject
Implements AppleGeneralColor
	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function blendedColorWithFraction Lib appkitlibname Selector "blendedColorWithFraction:ofColor:" (id as ptr, fraction as cgfloat, OtherColor As Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120626C656E64206F66207468652063757272656E7420636F6C6F72207769746820616E6F7468657220636F6C6F722E20546865206D6574686F6420636F6E766572747320636F6C6F7220616E64206120636F7079206F662074686520726563656976657220746F205247422C20616E64207468656E2073657473206561636820636F6D706F6E656E74206F66207468652072657475726E656420636F6C6F7220746F206672616374696F6E206F6620636F6C6F72E28099732076616C756520706C7573203120E28093206672616374696F6E206F6620746865207265636569766572E28099732E
		Function BlendWithColor(Fraction As Double, otherColor as Applecolor) As AppleColor
		  return  AppleColor.MakefromPtr (blendedColorWithFraction(id, Fraction, otherColor.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220776974682061206E657720616C7068612076616C7565
		Function ChangeAlpha(NewAlpha As Double) As AppleColor
		  return  AppleColor.MakefromPtr (colorWithAlphaComponent(id, Newalpha))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220636F6E76657274656420746F207468652073706563696669656420636F6C6F72737061636520696620706F737369626C652E
		Function ChangeColorSpace(ColorSpace as AppleColorSpace) As AppleColor
		  return AppleColor.MakefromPtr(colorUsingColorSpace (id, ColorSpace.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220636F6E76657274656420746F207468652073706563696669656420636F6C6F727370616365E28099206E616D6520696620706F737369626C652E
		Function ChangeColorSpace(ColorSpaceName as CFStringRef) As AppleColor
		  return AppleColor.MakefromPtr(colorUsingColorSpaceName (id, ColorSpaceName))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220636F6E76657274656420746F207468652073706563696669656420636F6C6F727370616365E28099206E616D6520616E6420737065636966696320746F2074686520676976656E206465766963652C20696620706F737369626C652E0A446576696365206465736372697074696F6E732063616E206265206F627461696E65642066726F6D2077696E646F77732C2073637265656E732C20616E64207072696E74657273207769746820746865206465766963654465736372697074696F6E206D6574686F642E
		Function ChangeColorSpace(ColorSpaceName as CFStringRef, DeviceDescription As AppleDictionary) As AppleColor
		  return AppleColor.MakefromPtr(colorUsingColorSpaceNameDevice (id, ColorSpaceName, DeviceDescription.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E53436F6C6F72206F626A656374207370656369666965642062792074686520676976656E20636F6E74726F6C2074696E742E
		Shared Function ColorForControlTint(Controltint as AppleControl.NSControlTint) As AppleColor
		  return applecolor.MakefromPtr(getcolorForControlTint(classptr, Controltint))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorUsingColorSpace Lib appkitlibname Selector "colorUsingColorSpace:" (id as ptr, colorspace as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorUsingColorSpaceName Lib appkitlibname Selector "colorUsingColorSpaceName:" (id as ptr, name as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorUsingColorSpaceNameDevice Lib appkitlibname Selector "colorUsingColorSpaceName:device:" (id as ptr, name as CFStringRef, description as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithAlphaComponent Lib appkitlibname Selector "colorWithAlphaComponent:" (id as ptr, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithCalibratedHue Lib appkitlibname Selector "colorWithCalibratedHue:saturation:brightness:alpha:" (id as ptr, hue as cgfloat, saturation as cgfloat, brightness as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithCalibratedRed Lib appkitlibname Selector "colorWithCalibratedRed:green:blue:alpha:" (id as ptr, red as cgfloat, green as cgfloat, blue as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithCalibratedWhite Lib appkitlibname Selector "colorWithCalibratedWhite:alpha:" (id as ptr, white as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithCatalogName Lib appkitlibname Selector "colorWithCatalogName:colorName:" (id as ptr, catname as cfstringRef, ColorName As CFStringREf) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithCGColor Lib appkitlibname Selector "colorWithCGColor:" (id as ptr, CGColor as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithCIColor Lib appkitlibname Selector "colorWithCIColor:" (id as ptr, CIColor as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithColorSpaceHue Lib appkitlibname Selector "colorWithColorSpace:hue:saturation:brightness:alpha:" (id as ptr, colorspace as ptr, hue as cgfloat, saturation as cgfloat, brightness as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithDeviceCyan Lib appkitlibname Selector "colorWithDeviceCyan:magenta:yellow:black:alpha:" (id as ptr, cyan as cgfloat, magenta as cgfloat, yellow as cgfloat, black as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithDeviceHue Lib appkitlibname Selector "colorWithDeviceHue:saturation:brightness:alpha:" (id as ptr, hue as cgfloat, saturation as cgfloat, brightness as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithDeviceRed Lib appkitlibname Selector "colorWithDeviceRed:green:blue:alpha:" (id as ptr, red as cgfloat, green as cgfloat, blue as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithDeviceWhite Lib appkitlibname Selector "colorWithDeviceWhite:alpha:" (id as ptr, white as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithDisplayP3Red Lib appkitlibname Selector "colorWithDisplayP3Red:green:blue:alpha:" (id as ptr, red as cgfloat, green as cgfloat, blue as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithGenericGamma22White Lib appkitlibname Selector "colorWithGenericGamma22White:alpha:" (id as ptr, white as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithHue Lib appkitlibname Selector "colorWithHue:saturation:brightness:alpha:" (id as ptr, hue as cgfloat, saturation as cgfloat, brightness as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithPatternImage Lib appkitlibname Selector "colorWithPatternImage:" (id as ptr, img as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithRed Lib appkitlibname Selector "colorWithRed:green:blue:alpha:" (id as ptr, red as cgfloat, green as cgfloat, blue as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithSRGBRed Lib appkitlibname Selector "colorWithSRGBRed:green:blue:alpha:" (id as ptr, red as cgfloat, green as cgfloat, blue as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function colorWithWhite Lib appkitlibname Selector "colorWithWhite:alpha:" (id as ptr, white as cgfloat, alpha as cgfloat) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720636F6C6F722066726F6D20616E204170706C654347436F6C6F722E
		Sub Constructor(col as applecgcolor)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor (colorWithCGColor(classptr, col.CFTypeRef), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120436F726520496D61676520636F6C6F72206F626A65637420746F20697473204E53436F6C6F72206571756976616C656E742E
		Sub Constructor(col as applecicolor)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor (colorWithCIColor(classptr, col.Id), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207061747465726E20636F6C6F722066726F6D20616E20696D6167652E
		Sub Constructor(img as appleimage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor (colorWithPatternImage(ClassPtr, img.Id), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D206120586F6A6F20436F6C6F722E
		Sub Constructor(aColor as Color)
		  Constructor (aColor.red/255, aColor.Green/255, aColor.Blue/255, (255 - aColor.Alpha) / 255)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E204E53436F6C6F72206F626A65637420776974682074686520737065636966696564207265642C20677265656E2C20626C75652C20616E6420616C706861206368616E6E656C2076616C7565732E
		Sub Constructor(Red As Double, green As Double, blue As Double, Alpha As Double = 1.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor (colorWithRed(ClassPtr, red, Green, Blue, Alpha), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207061747465726E20636F6C6F722066726F6D206120706963747572652E
		Sub Constructor(img as picture)
		  Constructor(new AppleImage(img))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4472617773207468652063757272656E7420636F6C6F7220696E207468652063757272656E7420636F6E7465787420696E2074686520676976656E2072656374616E676C652E
		Sub Draw(Rect as FoundationFrameWork.NSRect)
		  drawSwatchInRect mid, rect
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub drawSwatchInRect Lib appkitlibname Selector "drawSwatchInRect:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E204E53436F6C6F72206F626A6563742062792066696E64696E672074686520636F6C6F7220776974682074686520737065636966696564206E616D6520696E2074686520676976656E20636174616C6F672E
		Shared Function FromCatalog(CatalogName As CFStringRef, ColorName As CFStringRef) As AppleColor
		  Return AppleColor.MakefromPtr(colorWithCatalogName(classptr, CatalogName, ColorName), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D20616E204170706C654347436F6C6F72
		Shared Function FromCGColor(aColor as AppleCGColor) As AppleColor
		  return new AppleColor(acolor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E204E53436F6C6F72206F626A656374207573696E672074686520676976656E206F7061636974792076616C756520616E6420434D594B20636F6D706F6E656E74732E
		Shared Function FromCMYK(Cyan As Double, Magenta As Double, Yellow As Double, Black As Double, Alpha As Double = 1.0) As AppleColor
		  return new AppleColor(colorWithDeviceCyan (ClassPtr, cyan, magenta, yellow, black, Alpha), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D206120586F6A6F20436F6C6F722E
		Shared Function FromColor(aColor as Color) As AppleColor
		  return new AppleColor(aColor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E204E53436F6C6F72206F626A656374207573696E672074686520676976656E206F70616369747920616E642048534220636F6C6F7220737061636520636F6D706F6E656E74732E2055736573207468652044657669636520436F6C6F7253706163652069662063616C696272617465642069732046616C736520287468652064656661756C742920616E6420616E20756E63616C6962726174656420636F6C6F727370616365206966204465766963652069732066616C736520746F6F2E
		Shared Function FromColorSpaceAndHSBA(ColorSpace As AppleColorSpace, Hue As Double, Saturation As Double, Brightness As Double, Alpha As Double = 1.0) As AppleColor
		  return new AppleColor(colorWithColorSpaceHue (ClassPtr, ColorSpace.id, Hue, Saturation, Brightness, Alpha), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6C6F7220637265617465642066726F6D207468652073706563696669656420636F6D706F6E656E747320696E2074686520446973706C617920503320636F6C6F7273706163652E
		Shared Function FromDisplayP3Red(Red As Double, Green As Double, Blue As Double, Alpha As Double = 1.0) As AppleColor
		  return new AppleColor(colorWithDisplayP3Red (ClassPtr, red, green, blue, Alpha), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20636F6C6F7220637265617465642077697468207468652073706563696669656420776869746520616E6420616C7068612076616C75657320696E207468652047656E6572696347616D6D61323220636F6C6F7273706163652E
		Shared Function FromGenericGamma22White(White As Double, Alpha As Double = 1.0) As AppleColor
		  return new AppleColor(colorWithGenericGamma22White (ClassPtr, white, Alpha), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E204E53436F6C6F72206F626A656374207573696E672074686520676976656E206F70616369747920616E642048534220636F6C6F7220737061636520636F6D706F6E656E74732E2055736573207468652044657669636520436F6C6F7253706163652069662063616C696272617465642069732046616C736520287468652064656661756C742920616E6420616E20756E63616C6962726174656420636F6C6F727370616365206966204465766963652069732066616C736520746F6F2E
		Shared Function FromHSBA(Hue As Double, Saturation As Double, Brightness As Double, Alpha As Double = 1.0, calibrated as boolean = false, device as boolean = true) As AppleColor
		  if calibrated then
		    return new AppleColor(colorWithCalibratedHue (ClassPtr, Hue, Saturation, Brightness, Alpha), true, true)
		  elseif device then
		    return new AppleColor(colorWithDeviceHue (ClassPtr, Hue, Saturation, Brightness, Alpha), true, true)
		  else
		    return new AppleColor(colorWithHue (ClassPtr, Hue, Saturation, Brightness, Alpha), true, true)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D206120586F6A6F20436F6C6F722E
		Shared Function FromImage(Img as AppleImage) As AppleColor
		  return new AppleColor(img)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720636F6C6F722066726F6D205265642C20477265656E2C20426C756520616E64206F7074696F6E616C20416C7068612076616C75652E205468652064656661756C742069732061204465766963655247424120436F6C6F7253706163652E2043616E20616C736F2072657475726E20612063616C69627261746564206F7220616E20756E63616C6962726174656420636F6C6F72737061636520636F6C6F722E
		Shared Function FromRGBA(Red As Double, Green As Double, Blue As Double, Alpha As Double = 1.0, calibrated as boolean = false, device as boolean = true) As AppleColor
		  if calibrated then
		    return new AppleColor(colorWithCalibratedRed (ClassPtr, red, green, blue, Alpha), true, true)
		  elseif device then
		    return new AppleColor(colorWithDeviceRed (ClassPtr, red, green, blue, Alpha), true, true)
		  else
		    return new AppleColor(colorWithRed (ClassPtr, red, green, blue, Alpha), true, true)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F6C6F7220637265617465642066726F6D207468652073706563696669656420636F6D706F6E656E747320696E20746865207352474220636F6C6F7273706163652E
		Shared Function FromSRGBA(Red As Double, Green As Double, Blue As Double, Alpha As Double = 1.0) As AppleColor
		  return new AppleColor(colorWithSRGBRed (ClassPtr, red, green, blue, Alpha), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E73206120776869746520286F72206772657929204E53436F6C6F72206F626A65637420776974682074686520737065636966696564206272696768746E65737320616E6420616C706861206368616E6E656C2076616C7565732E2043616E20616C736F2072657475726E20612063616C69627261746564206F7220616E20756E63616C6962726174656420636F6C6F72737061636520636F6C6F722E
		Shared Function FromWhite(White As Double, Alpha As Double = 1.0, calibrated as boolean = false, device as boolean = true) As AppleColor
		  if calibrated then
		    return new AppleColor(colorWithCalibratedWhite (ClassPtr, white, Alpha), true, true)
		  elseif device then
		    return new AppleColor(colorWithdeviceWhite (ClassPtr, white, Alpha), true, true)
		  else
		    return new AppleColor(colorWithWhite (ClassPtr, white, Alpha), true, true)
		  end if
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getalphaComponent Lib appkitlibname Selector "alphaComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getalternateSelectedControlColor Lib appkitlibname Selector "alternateSelectedControlColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getalternateSelectedControlTextColor Lib appkitlibname Selector "alternateSelectedControlTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getblackColor Lib appkitlibname Selector "blackColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getblackComponent Lib appkitlibname Selector "blackComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getblueColor Lib appkitlibname Selector "blueColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getblueComponent Lib appkitlibname Selector "blueComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbrightnessComponent Lib appkitlibname Selector "brightnessComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbrownColor Lib appkitlibname Selector "brownColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcatalogNameComponent Lib appkitlibname Selector "catalogNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getCGColor Lib appkitlibname Selector "CGColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getclearColor Lib appkitlibname Selector "clearColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcolorForControlTint Lib appkitlibname Selector "colorForControlTint:" (id as ptr, tintcolot as AppleControl . NSControlTint) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcolorNameComponent Lib appkitlibname Selector "colorNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcolorSpace Lib appkitlibname Selector "colorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcolorSpaceName Lib appkitlibname Selector "colorSpaceName" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolAlternatingRowBackgroundColors Lib appkitlibname Selector "controlAlternatingRowBackgroundColors" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolBackgroundColor Lib appkitlibname Selector "controlBackgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolColor Lib appkitlibname Selector "controlColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolDarkShadowColor Lib appkitlibname Selector "controlDarkShadowColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolHighlightColor Lib appkitlibname Selector "controlHighlightColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolLightHighlightColor Lib appkitlibname Selector "controlLightHighlightColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolShadowColor Lib appkitlibname Selector "controlShadowColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontrolTextColor Lib appkitlibname Selector "controlTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcurrentControlTint Lib appkitlibname Selector "currentControlTint" (id as ptr) As AppleControl.NSControlTint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcyanColor Lib appkitlibname Selector "cyanColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcyanComponent Lib appkitlibname Selector "cyanComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdarkGrayColor Lib appkitlibname Selector "darkGrayColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdisabledControlTextColor Lib appkitlibname Selector "disabledControlTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getgrayColor Lib appkitlibname Selector "grayColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getgreenColor Lib appkitlibname Selector "greenColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getgreenComponent Lib appkitlibname Selector "greenComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getgridColor Lib appkitlibname Selector "gridColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getheaderColor Lib appkitlibname Selector "headerColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getheaderTextColor Lib appkitlibname Selector "headerTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function gethighlightColor Lib appkitlibname Selector "highlightColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function gethueComponent Lib appkitlibname Selector "hueComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getignoresAlpha Lib appkitlibname Selector "ignoresAlpha" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getkeyboardFocusIndicatorColor Lib appkitlibname Selector "keyboardFocusIndicatorColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getknobColor Lib appkitlibname Selector "knobColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlabelColor Lib appkitlibname Selector "labelColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlightGrayColor Lib appkitlibname Selector "lightGrayColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlocalizedCatalogNameComponent Lib appkitlibname Selector "localizedCatalogNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlocalizedColorNameComponent Lib appkitlibname Selector "localizedColorNameComponent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getmagentaColor Lib appkitlibname Selector "magentaColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getmagentaComponent Lib appkitlibname Selector "magentaComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getnumberOfComponents Lib appkitlibname Selector "numberOfComponents" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getorangeColor Lib appkitlibname Selector "orangeColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpatternImage Lib appkitlibname Selector "patternImage" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpurpleColor Lib appkitlibname Selector "purpleColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getquaternaryLabelColor Lib appkitlibname Selector "quaternaryLabelColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getredColor Lib appkitlibname Selector "redColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getredComponent Lib appkitlibname Selector "redComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsaturationComponent Lib appkitlibname Selector "saturationComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getscrollBarColor Lib appkitlibname Selector "scrollBarColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsecondaryLabelColor Lib appkitlibname Selector "secondaryLabelColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsecondarySelectedControlColor Lib appkitlibname Selector "secondarySelectedControlColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getselectedControlColor Lib appkitlibname Selector "selectedControlColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getselectedControlTextColor Lib appkitlibname Selector "selectedControlTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getselectedKnobColor Lib appkitlibname Selector "selectedKnobColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getselectedMenuItemColor Lib appkitlibname Selector "selectedMenuItemColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getselectedMenuItemTextColor Lib appkitlibname Selector "selectedMenuItemTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getselectedTextBackgroundColor Lib appkitlibname Selector "selectedTextBackgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getselectedTextColor Lib appkitlibname Selector "selectedTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getshadowColor Lib appkitlibname Selector "shadowColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function gettertiaryLabelColor Lib appkitlibname Selector "tertiaryLabelColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function gettextBackgroundColor Lib appkitlibname Selector "textBackgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function gettextColor Lib appkitlibname Selector "textColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getunderPageBackgroundColor Lib appkitlibname Selector "underPageBackgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getwhiteColor Lib appkitlibname Selector "whiteColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getwhiteComponent Lib appkitlibname Selector "whiteComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getwindowBackgroundColor Lib appkitlibname Selector "windowBackgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getwindowFrameColor Lib appkitlibname Selector "windowFrameColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getwindowFrameTextColor Lib appkitlibname Selector "windowFrameTextColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getyellowColor Lib appkitlibname Selector "yellowColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getyellowComponent Lib appkitlibname Selector "yellowComponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720636F6C6F7220627269676874656E65642062792074686520616D6F756E7420737065636966696564202877686963682073686F756C64206265206265747765656E203020616E642031292E
		Function HighlightColor(Level As Double) As AppleColor
		  return  AppleColor.MakefromPtr (highlightWithLevel(id, level))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function highlightWithLevel Lib appkitlibname Selector "highlightWithLevel:" (id as ptr, level as CGFloat) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr, takeownership as boolean = false, retain as boolean = false) As AppleColor
		  return if (aptr = nil, nil, new applecolor(aptr, takeownership, retain))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_convert(aColor As AppleColor) As AppleCGColor
		  Return acolor.CGColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662073756273657175656E742064726177696E6720746F2074686520636F6C6F7220746861742074686520726563656976657220726570726573656E74732E
		Sub Set()
		  AppKitFramework.set mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652066696C6C20636F6C6F72206F662073756273657175656E742064726177696E6720746F20746865207265636569766572E280997320636F6C6F722E
		Sub SetFill()
		  AppKitFramework.setfill mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207374726F6B6520636F6C6F72206F662073756273657175656E742064726177696E6720746F20746865207265636569766572E280997320636F6C6F722E
		Sub SetStroke()
		  AppKitFramework.setStroke mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720636F6C6F72206461726B656E65642062792074686520616D6F756E7420737065636966696564202877686963682073686F756C64206265206265747765656E203020616E642031292E
		Function ShadowColor(Level As Double) As AppleColor
		  return  AppleColor.MakefromPtr (shadowWithLevel(id, level))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function shadowWithLevel Lib appkitlibname Selector "shadowWithLevel:" (id as ptr, level as CGFloat) As ptr
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		colorWithColorSpace:components:count:
		colorFromPasteboard
		writeToPasteboard
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C70686120286F7061636974792920636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getalphaComponent(id)
			End Get
		#tag EndGetter
		AlphaComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207468652066616365206F6620612073656C656374656420636F6E74726F6C20696E2061206C697374206F72207461626C652E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getalternateSelectedControlColor(classptr))
			End Get
		#tag EndGetter
		Shared AlternateSelectedControlColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207465787420696E20612073656C656374656420636F6E74726F6C2E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getalternateSelectedControlTextColor(classptr))
			End Get
		#tag EndGetter
		Shared AlternateSelectedControlTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F736520677261797363616C652076616C756520697320302E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getblackColor(classptr))
			End Get
		#tag EndGetter
		Shared BlackColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C61636B20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F727370616365206973206E6F74206F6E65206F662074686520626C61636B206F7220776869746520636F6C6F72207370616365732E
		#tag Getter
			Get
			  try
			    return getblackComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceCMYK)
			    return tempColor.BlackComponent
			  end try
			End Get
		#tag EndGetter
		BlackComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320302E302C20302E302C20312E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getblueColor(classptr))
			End Get
		#tag EndGetter
		Shared BlueColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C756520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getblueComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceRGB)
			    return tempColor.BlueComponent
			  end try
			End Get
		#tag EndGetter
		BlueComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206272696768746E65737320636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getbrightnessComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceRGB)
			    return tempColor.BrightnessComponent
			  end try
			End Get
		#tag EndGetter
		BrightnessComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320302E362C20302E342C20302E3220616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getbrownColor(classptr))
			End Get
		#tag EndGetter
		Shared BrownColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636174616C6F6720636F6E7461696E696E672074686520636F6C6F72E2809973206E616D652E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  try
			    return getcatalogNameComponent (id)
			  catch
			  end try
			End Get
		#tag EndGetter
		CatalogNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520636F6C6F72207370616365206173736F63696174656420776974682074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return  new AppleCGColor (getCGColor(id), true)
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

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F736520677261797363616C6520616E6420616C7068612076616C7565732061726520626F746820302E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getclearColor(classptr))
			End Get
		#tag EndGetter
		Shared ClearColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520636F6C6F722E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  try
			    return getcolorNameComponent (id)
			  catch
			  end try
			End Get
		#tag EndGetter
		ColorNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207370616365206173736F63696174656420776974682074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  try
			    dim result as AppleColorSpace = AppleColorSpace.MakeFromPtr(getcolorSpace(id))
			    // result.MHasOwnership = true
			    return result
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		ColorSpace As AppleColorSpace
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520636F6C6F72207370616365206173736F63696174656420776974682074686520636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcolorSpaceName(mid)
			End Get
		#tag EndGetter
		ColorSpaceName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E67207468652073797374656D20737065636966696564206261636B67726F756E6420636F6C6F727320666F7220616C7465726E6174696E6720726F777320696E207461626C657320616E64206C697374732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applearray( getcontrolAlternatingRowBackgroundColors(classptr))
			End Get
		#tag EndGetter
		Shared ControlAlternatingRowBackgroundColors As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F7220746865206261636B67726F756E64206F66206C6172676520636F6E74726F6C732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getcontrolBackgroundColor(classptr))
			End Get
		#tag EndGetter
		Shared ControlBackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722074686520666C6174207375726661636573206F66206120636F6E74726F6C2E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getcontrolColor(classptr))
			End Get
		#tag EndGetter
		Shared ControlColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F7220746865206461726B2065646765206F662074686520736861646F772064726F707065642066726F6D20636F6E74726F6C732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getcontrolDarkShadowColor(classptr))
			End Get
		#tag EndGetter
		Shared ControlDarkShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722074686520686967686C6967687465642062657A656C73206F6620636F6E74726F6C732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getcontrolHighlightColor(classptr))
			End Get
		#tag EndGetter
		Shared ControlHighlightColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72206C6967687420686967686C696768747320696E20636F6E74726F6C732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getcontrolLightHighlightColor(classptr))
			End Get
		#tag EndGetter
		Shared ControlLightHighlightColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722074686520736861646F77732064726F707065642066726F6D20636F6E74726F6C732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecolor( getcontrolShadowColor(classptr))
			End Get
		#tag EndGetter
		Shared ControlShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722074657874206F6E20636F6E74726F6C732074686174206172656EE28099742064697361626C65642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecolor( getcontrolTextColor(classptr))
			End Get
		#tag EndGetter
		Shared ControlTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 7468652063757272656E742073797374656D20636F6E74726F6C2074696E742E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return getcurrentControlTint(classptr)
			End Get
		#tag EndGetter
		Shared CurrentControlTint As AppleControl.NSControlTint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320302E302C20312E302C20312E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor (getcyanColor(classptr))
			End Get
		#tag EndGetter
		Shared CyanColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206379616E20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120434D594B436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getcyanComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceCMYK)
			    return tempColor.CyanComponent
			  end try
			End Get
		#tag EndGetter
		CyanComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F736520677261797363616C652076616C756520697320312F3320616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor (getdarkGrayColor(classptr))
			End Get
		#tag EndGetter
		Shared DarkGrayColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722074657874206F6E2064697361626C656420636F6E74726F6C732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return  new applecolor( getdisabledControlTextColor(classptr))
			End Get
		#tag EndGetter
		Shared DisabledControlTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F736520677261797363616C652076616C756520697320302E3520616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getgrayColor(classptr))
			End Get
		#tag EndGetter
		Shared GrayColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320302E302C20312E302C20302E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getgreenColor(classptr))
			End Get
		#tag EndGetter
		Shared GreenColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520677265656E20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getgreenComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceRGB)
			    return tempColor.GreenComponent
			  end try
			End Get
		#tag EndGetter
		GreenComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F7220746865206F7074696F6E616C20677269646C696E657320696E2C20666F72206578616D706C652C2061207461626C6520766965772E28726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getgridColor(classptr))
			End Get
		#tag EndGetter
		Shared GridColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420617320746865206261636B67726F756E6420636F6C6F7220666F72206865616465722063656C6C7320696E207461626C6520766965777320616E64206F75746C696E652076696577732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getheaderColor(classptr))
			End Get
		#tag EndGetter
		Shared HeaderColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207465787420696E206865616465722063656C6C7320696E207461626C6520766965777320616E64206F75746C696E652076696577732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getheaderTextColor(classptr))
			End Get
		#tag EndGetter
		Shared HeaderTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207468617420726570726573656E747320746865207669727475616C206C6967687420736F75726365206F6E207468652073637265656E2E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( gethighlightColor(classptr))
			End Get
		#tag EndGetter
		Shared HighlightColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652068756520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return gethueComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceRGB)
			    return tempColor.HueComponent
			  end try
			End Get
		#tag EndGetter
		HueComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206170706C69636174696F6E20737570706F72747320616C7068612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getignoresAlpha (classptr)
			End Get
		#tag EndGetter
		Shared IgnoresAlpha As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420207468617420726570726573656E747320746865206B6579626F61726420666F6375732072696E672061726F756E6420636F6E74726F6C732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecolor( getkeyboardFocusIndicatorColor(classptr))
			End Get
		#tag EndGetter
		Shared KeyboardFocusIndicatorColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722074686520666C61742073757266616365206F66206120736C69646572206B6E6F622074686174206861736EE2809974206265656E2073656C65637465642E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getknobColor(classptr))
			End Get
		#tag EndGetter
		Shared KnobColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207072696D61727920636F6C6F7220746F2075736520666F72207465787420696E206C6162656C732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getlabelColor(classptr))
			End Get
		#tag EndGetter
		Shared LabelColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F736520677261797363616C652076616C756520697320322F3320616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getlightGrayColor(classptr))
			End Get
		#tag EndGetter
		Shared LightGrayColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206E616D65206F662074686520636174616C6F6720636F6E7461696E696E672074686520636F6C6F72E2809973206E616D652E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  try
			    return getlocalizedCatalogNameComponent (id)
			  catch
			  end try
			End Get
		#tag EndGetter
		LocalizedCatalogNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206E616D65206F662074686520636F6C6F722E2028726561642D6F6E6C79292E20417661696C61626C6520666F7220636F6C6F7273207573696E67204E616D6564436F6C6F725370616365732E
		#tag Getter
			Get
			  try
			    return getlocalizedColorNameComponent (id)
			  catch
			  end try
			End Get
		#tag EndGetter
		LocalizedColorNameComponent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320312E302C20302E302C20312E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getmagentaColor(classptr))
			End Get
		#tag EndGetter
		Shared MagentaColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6167656E746120636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120434D594B436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getmagentaComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceCMYK)
			    return tempColor.MagentaComponent
			  end try
			End Get
		#tag EndGetter
		MagentaComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620636F6D706F6E656E747320696E2074686520636F6C6F722E
		#tag Getter
			Get
			  try
			    return getnumberOfComponents (mid)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		NumberOfComponents As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320312E302C20302E352C20302E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getorangeColor(classptr))
			End Get
		#tag EndGetter
		Shared OrangeColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207061747465726E20696D6167652075736564206173206120636F6C6F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  try
			    return AppleImage.MakeFromPtr(getpatternImage(mid))
			  catch
			  end try
			End Get
		#tag EndGetter
		PatternImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320302E352C20302E302C20302E3520616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getpurpleColor(classptr))
			End Get
		#tag EndGetter
		Shared PurpleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207175617465726E61727920636F6C6F7220746F2075736520666F72206C6162656C207465787420616E6420736570617261746F72732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getquaternaryLabelColor(classptr))
			End Get
		#tag EndGetter
		Shared QuaternaryLabelColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320312E302C20302E302C20302E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getredColor(classptr))
			End Get
		#tag EndGetter
		Shared RedColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656420636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getredComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceRGB)
			    return tempColor.redcomponent
			  end try
			End Get
		#tag EndGetter
		RedComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073617475726174696F6E20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120524742436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getsaturationComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceRGB)
			    return tempColor.SaturationComponent
			  end try
			End Get
		#tag EndGetter
		SaturationComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207363726F6C6C20E2809C62617273E2809DE28094746861742069732C20666F72207468652067726F6F766520696E2077686963682061207363726F6C6C6572E2809973206B6E6F62206D6F7665732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getscrollBarColor(classptr))
			End Get
		#tag EndGetter
		Shared ScrollBarColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207365636F6E6461727920636F6C6F7220746F2075736520666F72207465787420696E206C6162656C732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecolor( getsecondaryLabelColor(classptr))
			End Get
		#tag EndGetter
		Shared SecondaryLabelColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722073656C656374656420636F6E74726F6C7320696E206E6F6E2D6B65792076696577732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getsecondarySelectedControlColor(classptr))
			End Get
		#tag EndGetter
		Shared SecondarySelectedControlColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207468652066616365206F6620612073656C656374656420636F6E74726F6CE280946120636F6E74726F6C207468617420686173206265656E20636C69636B6564206F72206973206265696E6720647261676765642E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( GETselectedControlColor(classptr))
			End Get
		#tag EndGetter
		Shared SelectedControlColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207465787420696E20612073656C656374656420636F6E74726F6CE280946120636F6E74726F6C206265696E6720636C69636B6564206F7220647261676765642E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getselectedControlTextColor(classptr))
			End Get
		#tag EndGetter
		Shared SelectedControlTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722074686520736C69646572206B6E6F62207768656E2069742069732073656C65637465642E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getselectedKnobColor(classptr))
			End Get
		#tag EndGetter
		Shared SelectedKnobColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207468652066616365206F662073656C6563746564206D656E75206974656D732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getselectedMenuItemColor(classptr))
			End Get
		#tag EndGetter
		Shared SelectedMenuItemColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F7220746865207465787420696E206D656E75206974656D732E28726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecolor( getselectedMenuItemTextColor(classptr))
			End Get
		#tag EndGetter
		Shared SelectedMenuItemTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F7220746865206261636B67726F756E64206F662073656C656374656420746578742E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getselectedTextBackgroundColor(classptr))
			End Get
		#tag EndGetter
		Shared SelectedTextBackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722073656C656374656420746578742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecolor( getselectedTextColor(classptr))
			End Get
		#tag EndGetter
		Shared SelectedTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207468617420726570726573656E747320746865207669727475616C20736861646F7773206361737420627920726169736564206F626A65637473206F6E207468652073637265656E2E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getshadowColor(classptr))
			End Get
		#tag EndGetter
		Shared ShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746572746961727920636F6C6F7220746F2075736520666F72207465787420696E206C6162656C732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( gettertiaryLabelColor(classptr))
			End Get
		#tag EndGetter
		Shared TertiaryLabelColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F72207468652074657874206261636B67726F756E642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecolor( gettextBackgroundColor(classptr))
			End Get
		#tag EndGetter
		Shared TextBackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F7220746578742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return  new applecolor( gettextColor(classptr))
			End Get
		#tag EndGetter
		Shared TextColor As AppleColor
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F7220746F20757365207768656E2061726561732072657665616C656420626568696E642076696577732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getunderPageBackgroundColor(classptr))
			End Get
		#tag EndGetter
		Shared UnderPageBackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F736520677261797363616C6520616E6420616C7068612076616C7565732061726520626F746820312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getwhiteColor(classptr))
			End Get
		#tag EndGetter
		Shared WhiteColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520776869746520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F727370616365206973206E6F74206F6E65206F662074686520626C61636B206F7220776869746520636F6C6F72207370616365732E
		#tag Getter
			Get
			  try
			    return getwhiteComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace ("NSCalibratedWhiteColorSpace")
			    return tempColor.WhiteComponent
			  end try
			End Get
		#tag EndGetter
		WhiteComponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F722077696E646F77206672616D65732C2065786365707420666F7220746865697220746578742E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return  new applecolor( getwindowFrameColor(classptr))
			End Get
		#tag EndGetter
		Shared WindowFrameColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D20636F6C6F72207573656420666F7220746865207465787420696E2077696E646F77206672616D65732E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getwindowFrameTextColor(classptr))
			End Get
		#tag EndGetter
		Shared WindowFrameTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207061747465726E20636F6C6F7220746861742077696C6C2064726177207468652072756C6564206C696E657320666F72207468652077696E646F77206261636B67726F756E642E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getwindowBackgroundColor(classptr))
			End Get
		#tag EndGetter
		Shared WndowBackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41204E53436F6C6F72206F626A6563742077686F7365205247422076616C756520697320312E302C20312E302C20302E3020616E642077686F736520616C7068612076616C756520697320312E302E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return new applecolor( getyellowColor(classptr))
			End Get
		#tag EndGetter
		Shared YellowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652079656C6C6F7720636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E2028726561642D6F6E6C79292E202D312069662074686520636F6C6F72206973206E6F74206265696E6720636F6E73747275637465642066726F6D206120434D594B436F6C6F7253706163652E
		#tag Getter
			Get
			  try
			    return getyellowComponent (id)
			  catch
			    dim tempColor as applecolor= self.ChangeColorSpace (AppleColorSpace.DeviceCMYK)
			    return tempColor.YellowComponent
			    
			  end try
			End Get
		#tag EndGetter
		YellowComponent As Double
	#tag EndComputedProperty


	#tag Constant, Name = kNSSystemColorsDidChangeNotification, Type = Text, Dynamic = False, Default = \"NSSystemColorsDidChangeNotification", Scope = Public
	#tag EndConstant


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
			Name="NumberOfComponents"
			Group="Behavior"
			Type="Integer"
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
