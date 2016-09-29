#tag Class
Protected Class AppleColor
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520636F6C6F7220776974682061206E657720616C7068612076616C75652E2020
		Function ChangeAlpha(alpha as double) As AppleColor
		  #if Target64Bit
		    Declare function colorWithAlphaComponent lib UIKitLibname selector "colorWithAlphaComponent:" (id as ptr, alpha as double) as ptr
		  #elseif Target32Bit
		    Declare function colorWithAlphaComponent lib UIKitLibname selector "colorWithAlphaComponent:" (id as ptr, alpha as single) as ptr
		  #endif
		  dim resultcolor as new AppleColor (colorWithAlphaComponent(id, alpha))
		  resultcolor.RetainClassObject
		  return resultcolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204349436F6C6F722069662074686520636F6C6F722077617320696E697469616C697A656420776974682061204349436F6C6F722E20456C73652072616973657320616E20657863657074696F6E2E20
		Function CiColor() As AppleCIColor
		  declare function CIColor lib UIKitLibname selector "CIColor" (id as ptr) as ptr
		  return AppleCIColor.MakefromPtr (CIColor(id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function colorWithDisplayP3Red Lib UIKitLibname Selector "colorWithDisplayP3Red:green:blue:alpha:" (id as ptr, Red as CGFloat, green as CGFloat, blue as CGFloat, alpha as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D2061204347436F6C6F722E
		Sub Constructor(aColor As AppleCGColor)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Declare function colorWithCGColor lib UIKitLibname selector "colorWithCGColor:" (id as ptr, Cicolor as ptr) As Ptr
		  super.Constructor (colorWithCGColor(classptr, aColor.CFTypeRef))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D2061204349436F6C6F722E
		Sub Constructor(aColor As AppleCIColor)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Declare function colorWithCIColor lib UIKitLibname selector "colorWithCIColor:" (id as ptr, Cicolor as ptr) As Ptr
		  super.Constructor (colorWithCIColor(classptr, aColor.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320612022636F6C6F722220776974682074686520696D6167652074696C6564206173206261636B67726F756E64207061747465726E2E2020
		Sub Constructor(anImage as AppleImage)
		  Declare function initWithPatternImage lib UIKitLibname selector "initWithPatternImage:" (id as ptr, patternimage as ptr) as ptr
		  super.Constructor initWithPatternImage(alloc(ClassPtr), anImage.id)
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577204170706C65436F6C6F722066726F6D206120586F6A6F20436F6C6F722E
		Sub Constructor(aColor as Color)
		  dim r as Double = aColor.red/255
		  dim g as Double = aColor.Green/255
		  dim b as Double = aColor.Blue/255
		  dim a as Double = (255 - aColor.Alpha) / 255
		  
		  Constructor (r, g, b, a)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E73206120636F6C6F72206F626A656374207573696E672074686520737065636966696564206F70616369747920616E6420677261797363616C652076616C7565732E
		Sub Constructor(White as Double, alpha as double = 1.0)
		  declare function colorWithWhite lib UIKitLibname selector "colorWithWhite:alpha:" (id as Ptr, white as CGFloat, alpha as CGFloat) as Ptr
		  
		  super.Constructor ( colorWithWhite(alloc(ClassPtr), white, alpha))
		  retainclassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720636F6C6F7220776974682074686520646566696E65642076616C756573202872616E67696E672066726F6D203020746F2031292E
		Sub Constructor(red as Double, green as double, blue as double, alpha as double= 1.0)
		  declare function colorFromRGBA lib UIKitLibname selector "initWithRed:green:blue:alpha:" (id as Ptr, red as CGFloat, green as CGFloat, blue as CGFloat, alpha as CGFloat) as Ptr
		  
		  super.Constructor ( colorFromRGBA(alloc(ClassPtr), red, green, blue, alpha))
		  mhasOwnership = true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320612022636F6C6F722220776974682074686520696D6167652074696C6564206173206261636B67726F756E64207061747465726E2E2020
		Sub Constructor(anImage as iosimage)
		  Constructor (new appleimage(anImage))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E73206120636F6C6F72206F626A656374207573696E672074686520737065636966696564206F70616369747920616E642052474220636F6D706F6E656E742076616C75657320696E2074686520446973706C617920503320636F6C6F722073706163652E
		Shared Function ExtendedRGBColor(Red As Double, Green As Double, Blue As Double, Alpha as Double = 0) As applecolor
		  if RespondsToSelector("colorWithDisplayP3Red:green:blue:alpha:", classptr)  then
		    return new AppleColor(colorWithDisplayP3Red(classptr, Red, green,blue, Alpha), true, true)
		  else
		    MakeException iOSCoreModule.kMethodNotavailable
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E76657273696F6E206D6574686F642C2073616D65206173206E6577204170706C65436F6C6F7220284347436F6C6F7229
		Shared Function FromCGColor(aColor As AppleCGColor) As AppleColor
		  return new AppleColor(aColor)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E76657273696F6E206D6574686F642C2073616D65206173206E6577204170706C65436F6C6F7220284349436F6C6F7229
		Shared Function FromCIColor(aColor As AppleCIColor) As AppleColor
		  return new AppleColor(aColor)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E76657273696F6E206D6574686F642C2073616D65206173206E6577204170706C65436F6C6F722028436F6C6F7229
		Shared Function FromColor(aColor as Color) As AppleColor
		  return new AppleColor (acolor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E76657273696F6E206D6574686F642C2073616D65206173206E6577204170706C65436F6C6F72202857686974652C20416C70686129
		Shared Function FromGrayscale(White As Double, Alpha As Double) As AppleColor
		  #if Target64Bit
		    Declare function colorWithWhite lib UIKitLibname selector "colorWithWhite:alpha:" _
		    (id as ptr, White as double, alpha as double) As Ptr
		  #elseif Target32Bit
		    Declare function colorWithWhite lib UIKitLibname selector "colorWithWhite:alpha:" _
		    (id as ptr, White as single, alpha as single) As Ptr
		  #endif
		  Dim Result As New AppleColor (colorwithWhite(classptr, White, Alpha))
		  Result.RetainClassObject
		  Return Result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120206E6577204170706C65436F6C6F722066726F6D20485342412076616C756573
		Shared Function FromHSBA(Hue As Double, Saturation As Double, Brightness as Double, Alpha As Double = 1.0) As AppleColor
		  #if Target64Bit
		    Declare function colorWithHue lib UIKitLibname selector "colorWithHue:saturation:brightness:alpha:" _
		    (id as ptr, hue as double, Saturation as double, Brightness as double, alpha as double) As Ptr
		  #elseif Target32Bit
		    Declare function colorWithHue lib UIKitLibname selector "colorWithHue:saturation:brightness:alpha:" _
		    (id as ptr, hue as single, Saturation as single, Brightness as single, alpha as single) As Ptr
		  #endif
		  Dim Result As New AppleColor (colorwithHue(classptr, Hue, Saturation, Brightness, Alpha))
		  Result.RetainClassObject
		  Return Result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetHSBA() As Double()
		  #if Target64Bit
		    Dim Hue, Saturation, Brightness, Alpha As Double
		    Declare function getHue lib UIKitLibname selector "getHue:saturation:brightness:alpha:" _
		    (id as ptr,  byref hue as double, byref saturation as double, byref brightness as double, byref alpha as double) As Boolean
		  #elseif Target32Bit
		    Dim Hue, Saturation, Brightness, Alpha As single
		    Declare function getHue lib UIKitLibname selector "getHue:saturation:brightness:alpha:" _
		    (id as ptr, byref hue as single, byref saturation as single, byref brightness as single, byref alpha as single) As Boolean
		  #endif
		  if getHue (id, hue, Saturation, Brightness, Alpha) then
		    dim result() as double
		    result.Append hue
		    result.Append saturation
		    result.Append Brightness
		    result.Append Alpha
		    return result
		  else
		    return nil
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getRGB(byref red as double, byref green as double, byref blue as double, byref alpha as double) As Boolean
		  dim result as Boolean
		  #if Target32Bit
		    dim r, g, b, a as single
		    declare Function getColors Lib UIKitLibname selector "getRed:green:blue:alpha:" _
		    (Id as ptr, byref red as Single, byref green as single, byref blue as single, byref alpha as single) as Boolean
		    result = getColors (id, r,g,b,a)
		    red = r
		    green = g
		    blue = b
		    alpha = a
		  #elseif Target64Bit
		    declare function getColors Lib UIKitLibname selector "getRed:green:blue:alpha:" _
		    (Id as ptr, byref red as Double, byref green as Double, byref blue as Double, byref alpha as Double) as boolean
		    result = getcolors (id, red, green, blue, alpha)
		  #endif
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetWhite() As Double()
		  #if Target64Bit
		    Dim White, Alpha As Double
		    Declare function getWhite lib UIKitLibname selector "getWhite:alpha:" _
		    (id as ptr,  byref White as double, byref alpha as double) As Boolean
		  #elseif Target32Bit
		    Dim White, Alpha As Single
		    Declare function getWhite lib UIKitLibname selector "getWhite:alpha:" _
		    (id as ptr,  byref White as Single, byref alpha as Single) As Boolean
		  #endif
		  if getWhite (id, White, Alpha) then
		    dim result() as double
		    result.Append White
		    result.Append Alpha
		    return result
		  else
		    return nil
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleColor
		  return if (aptr <> NIL, new AppleColor (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert(acolor as Color) As AppleColor
		  return new AppleColor(acolor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662073756273657175656E742066696C6C206F7065726174696F6E7320746F2074686520636F6C6F7220746861742074686520726563656976657220726570726573656E74732E2055736566756C20696E206120636F6E746578742064726177206F7065726174696F6E2E2020
		Sub SetFill()
		  declare Sub setFill lib UIKitLibname selector "setFill" (id as ptr)
		  setFill id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662073756273657175656E74207374726F6B65206F7065726174696F6E7320746F2074686520636F6C6F7220746861742074686520726563656976657220726570726573656E74732E2055736566756C20696E206120636F6E746578742064726177206F7065726174696F6E2E2020
		Sub SetStroke()
		  declare Sub setStroke lib UIKitLibname selector "setStroke" (id as ptr)
		  setStroke id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662073756273657175656E74207374726F6B6520616E642066696C6C206F7065726174696F6E7320746F2074686520636F6C6F7220746861742074686520726563656976657220726570726573656E74732E2055736566756C20696E206120636F6E746578742064726177206F7065726174696F6E2E
		Sub SetStrokeAndFill()
		  declare Sub set lib UIKitLibname selector "set" (id as ptr)
		  set id
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 10. No external declares yet.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C70686120287472616E73706172656E6379292076616C7565206F662074686520636F6C6F722E
		#tag Getter
			Get
			  if ConvertibleToRGB then
			    dim red, green, blue, alpha as double
			    call getRGB (red, green, blue, alpha)
			    #pragma unused red
			    #Pragma unused green
			    #Pragma unused blue
			    return alpha
			  elseif ConvertibleToHSB then
			    dim result() as double = GetHSBA
			    if result <> nil then
			      return result(3)
			    end if
			  else
			    dim result() as double = GetWhite
			    if result <> nil then
			      return result(1)
			    end if
			  end if
			End Get
		#tag EndGetter
		AlphaValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function BlackColor lib UIKitLibname selector "blackColor" (id as ptr) as ptr
			  static mBlackColor as  applecolor = new applecolor (BlackColor(classptr))
			  return mBlackColor
			End Get
		#tag EndGetter
		Shared BlackColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function blueColor lib UIKitLibname selector "blueColor" (id as ptr) as ptr
			  static mblueColor as  applecolor = new applecolor (blueColor(classptr))
			  return mblueColor
			End Get
		#tag EndGetter
		Shared BlueColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C756520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  call getRGB (red, green, blue, alpha)
			  #pragma unused red
			  #Pragma unused green
			  #Pragma unused alpha
			  return blue
			End Get
		#tag EndGetter
		BlueValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206272696768746E6573732076616C7565206F662074686520636F6C6F7220696620697420697320636F6E7665727469626C6520746F2048534220636F6C6F72206D6F64652E
		#tag Getter
			Get
			  dim result() as double = GetHSBA
			  if result <> nil then
			    return result(2)
			  end if
			End Get
		#tag EndGetter
		Brightness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function brownColor lib UIKitLibname selector "brownColor" (id as ptr) as ptr
			  static mbrownColor as  applecolor = new applecolor (brownColor(classptr))
			  return mbrownColor
			End Get
		#tag EndGetter
		Shared BrownColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 2041204347436F6C6F7220726570726573656E746174696F6E206F662074686520636F6C6F722E20
		#tag Getter
			Get
			  Declare Function CGColor lib UIKitLibname selector "CGColor" (id as ptr) as ptr
			  return AppleCGColor.MakeFromCFTypeRef (CGColor(id), true, true)
			  
			End Get
		#tag EndGetter
		CGColor As AppleCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIColor")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function clearColor lib UIKitLibname selector "clearColor" (id as ptr) as ptr
			  static mclearColor as  applecolor = new applecolor (clearColor(classptr))
			  return mclearColor
			End Get
		#tag EndGetter
		Shared ClearColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 547275652069662074686520636F6C6F722063616E20626520636F6E76657274656420746F20677261797363616C652028726561642D6F6E6C7929
		#tag Getter
			Get
			  return ( GetWhite <> nil)
			End Get
		#tag EndGetter
		ConvertibleToGrayscale As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 547275652069662074686520636F6C6F722063616E20626520636F6E76657274656420746F20485342206D6F64652028726561642D6F6E6C7929
		#tag Getter
			Get
			  return GetHSBA <> nil
			End Get
		#tag EndGetter
		ConvertibleToHSB As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 547275652069662074686520636F6C6F722063616E20626520636F6E76657274656420746F20524742206D6F64652028726561642D6F6E6C7929
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  dim result as Boolean
			  result = getRGB (red, green, blue, alpha)
			  #pragma unused red
			  #Pragma unused green
			  #Pragma unused blue
			  #Pragma unused alpha
			  return result
			End Get
		#tag EndGetter
		ConvertibleToRGB As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function cyanColor lib UIKitLibname selector "cyanColor" (id as ptr) as ptr
			  static mcyanColor as  applecolor = new applecolor (cyanColor(classptr))
			  return mcyanColor
			End Get
		#tag EndGetter
		Shared CyanColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function darkGrayColor lib UIKitLibname selector "darkGrayColor" (id as ptr) as ptr
			  static mdarkGrayColor as  applecolor = new applecolor (darkGrayColor(classptr))
			  return mdarkGrayColor
			End Get
		#tag EndGetter
		Shared DarkGrayColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function darkTextColor lib UIKitLibname selector "darkTextColor" (id as ptr) as ptr
			  static mdarkTextColor as  applecolor = new applecolor (darkTextColor(classptr))
			  return mdarkTextColor
			End Get
		#tag EndGetter
		Shared DarkTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function grayColor lib UIKitLibname selector "grayColor" (id as ptr) as ptr
			  static mgrayColor as  applecolor = new applecolor (grayColor(classptr))
			  return mgrayColor
			End Get
		#tag EndGetter
		Shared GrayColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function greenColor lib UIKitLibname selector "greenColor" (id as ptr) as ptr
			  static mgreenColor as  applecolor = new applecolor (greenColor(classptr))
			  return mgreenColor
			End Get
		#tag EndGetter
		Shared GreenColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520677265656E20636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  call getRGB (red, green, blue, alpha)
			  #pragma unused red
			  #Pragma unused blue
			  #Pragma unused alpha
			  return green
			End Get
		#tag EndGetter
		GreenValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function groupTableViewBackgroundColor lib UIKitLibname selector "groupTableViewBackgroundColor" (id as ptr) as ptr
			  static mgroupTableViewBackgroundColor as  applecolor = new applecolor (groupTableViewBackgroundColor(classptr))
			  return mgroupTableViewBackgroundColor
			End Get
		#tag EndGetter
		Shared GroupTableViewBackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206875652076616C7565206F662074686520636F6C6F7220696620697420697320636F6E7665727469626C6520746F2048534220636F6C6F72206D6F64652E
		#tag Getter
			Get
			  dim result() as double = GetHSBA
			  if result <> nil then
			    return result(0)
			  end if
			End Get
		#tag EndGetter
		Hue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function lightGrayColor lib UIKitLibname selector "lightGrayColor" (id as ptr) as ptr
			  static mlightGrayColor as  applecolor = new applecolor (lightGrayColor(classptr))
			  return mlightGrayColor
			End Get
		#tag EndGetter
		Shared LightGrayColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function lightTextColor lib UIKitLibname selector "lightTextColor" (id as ptr) as ptr
			  static mlightTextColor as  applecolor = new applecolor (lightTextColor(classptr))
			  return mlightTextColor
			End Get
		#tag EndGetter
		Shared LightTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function magentaColor lib UIKitLibname selector "magentaColor" (id as ptr) as ptr
			  static mmagentaColor as  applecolor = new applecolor (magentaColor(classptr))
			  return mmagentaColor
			End Get
		#tag EndGetter
		Shared MagentaColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function orangeColor lib UIKitLibname selector "orangeColor" (id as ptr) as ptr
			  static morangeColor as  applecolor = new applecolor (orangeColor(classptr))
			  return morangeColor
			End Get
		#tag EndGetter
		Shared OrangeColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function purpleColor lib UIKitLibname selector "purpleColor" (id as ptr) as ptr
			  static mpurpleColor as  applecolor = new applecolor (purpleColor(classptr))
			  return mpurpleColor
			End Get
		#tag EndGetter
		Shared PurpleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function redColor lib UIKitLibname selector "redColor" (id as ptr) as ptr
			  static mredColor as  applecolor = new applecolor (redColor(classptr))
			  return mredColor
			End Get
		#tag EndGetter
		Shared RedColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656420636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E
		#tag Note
			https://github.com/UBogun/Xojo-iosLib/wiki/AppleColor
		#tag EndNote
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  call getRGB (red, green, blue, alpha)
			  #pragma unused green
			  #Pragma unused blue
			  #Pragma unused alpha
			  return red
			End Get
		#tag EndGetter
		RedValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073617475726174696F6E2076616C7565206F662074686520636F6C6F7220696620697420697320636F6E7665727469626C6520746F2048534220636F6C6F72206D6F64652E
		#tag Getter
			Get
			  dim result() as double = GetHSBA
			  if result <> nil then
			    return result(1)
			  end if
			End Get
		#tag EndGetter
		Saturation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732074686520636F6C6F72206173206120586F6A6F20636F6C6F722028726561642D6F6E6C7929
		#tag Getter
			Get
			  if ConvertibleToRGB then
			    dim col as  color = color.rgba (RedValue * 255, GreenValue * 255, BlueValue * 255, 255 - AlphaValue * 255)
			    return col
			  end if
			  
			End Get
		#tag EndGetter
		toColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function whiteColor lib UIKitLibname selector "whiteColor" (id as ptr) as ptr
			  static mwhiteColor as  applecolor = new applecolor (whiteColor(classptr))
			  return mwhiteColor
			End Get
		#tag EndGetter
		Shared WhiteColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520576869746520636F6D706F6E656E742076616C7565206F662074686520636F6C6F722E
		#tag Getter
			Get
			  dim result() as double = GetWhite
			  if result <> nil then
			    return result(0)
			  end if
			End Get
		#tag EndGetter
		WhiteValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 507265646566696E65642073797374656D20636F6C6F722E
		#tag Getter
			Get
			  Declare function yellowColor lib UIKitLibname selector "yellowColor" (id as ptr) as ptr
			  static myellowColor as  applecolor = new applecolor (yellowColor(classptr))
			  return myellowColor
			End Get
		#tag EndGetter
		Shared YellowColor As AppleColor
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AlphaValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlueValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Brightness"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConvertibleToGrayscale"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConvertibleToHSB"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConvertibleToRGB"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GreenValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hue"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RedValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Saturation"
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
			Name="WhiteValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
