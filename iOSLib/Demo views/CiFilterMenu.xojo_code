#tag IOSView
Begin iosView CiFilterMenu
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   "CIFilter"
   Title           =   ""
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 4, iOSLIbImageView1, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   167.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSLIbImageView iOSLIbImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      Animating       =   False
      AnimationDuration=   0.0
      AnimationRepeatCount=   0
      AutoLayout      =   iOSLIbImageView1, 4, BottomLayoutGuide, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbImageView1, 8, <Parent>, 8, False, +0.50, 2, 1, 0, 
      AutoLayout      =   iOSLIbImageView1, 1, Table1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbImageView1, 2, Table1, 2, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   "0"
      ContentScaleFactor=   0.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   240.0
      Hidden          =   False
      Highlighted     =   False
      HighlightedImage=   ""
      Image           =   ""
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   240
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddRowSection(section as integer, titles() as text)
		  for q as integer = 0 to Titles.Ubound
		    table1.AddRow (section, table1.CreateCell(titles(q)))
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ColorChangeMethod(Input as color) As color
		  // an example for usage of the AppleLibColorCube
		  // simply replaces every color that contains more than 50% blue to transparent
		  
		  return if (input.Blue < 128 and input.Blue > 30 ,  color.RGBa(255,255, 255, 255), Input)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeLinearGradientImage(Context as AppleCGContext, width as double, height as double)
		  Context.DrawLinearGradient new AppleCGGradient(&c00000000, &cFFFFFF00, &c00000000), FoundationFrameWork.NSMakePoint(0,0), _
		  FoundationFrameWork.NSMakePoint(width, height), true, true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Filter As AppleCIFilter
	#tag EndProperty


	#tag Constant, Name = kSmallLogo, Type = Text, Dynamic = False, Default = \"SmallLogo", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  me.AddSection("No Filter")
		  me.AddRow(0, me.CreateCell ("No Filter", "Some filter parameters still have to be adapted to iOS sizes."))
		  
		  me.AddSection("Blur Filters")
		  AddRowSection (1, array( "BoxBlur", "DiscBlur", "GaussianBlur", "MaskedVariableBlur", "MedianFilter", "MotionBlur", "NoiseReduction", "ZoomBlur"))
		  me.AddSection("Sharpen Filters")
		  AddRowSection(2, array("BumpDistortion", "BumpDistortionLinear", "CircleSplashDistortion", "CircularWrap", "Droste", "DisplacementDistortion", "GlassDistortion", _
		  "GlassLozenge", "HoleDistortion", "Lighttunnel", "PinchDistortion", "StretchCrop", "TorusLensDistortion", "TwirlDistortion", "VortexDistortion"))
		  me.AddSection("Generators – use a CITransform for upscaling without blur!")
		  AddRowSection(3, array( "AztecCodeGenerator", "CheckerboardGenerator", "Code128BarcodeGenerator", "ConstantColorGenerator", "LenticularHaloGenerator","QRCodeGenerator", _
		  "RandomGenerator", "StarshineGenerator", "StripesGenerator", "SunbeamsGenerator"))
		  me.AddSection("Gradients")
		  AddRowSection(4, array("GaussianGradient", "LinearGradient", "RadialGradient", "SmoothLinearGradient"))
		  me.AddSection ("ColorAdjustment")
		  AddRowSection(5, array("ColorClamp", "ColorControls", "ColorMatrix", "ColorPolynomial", "ExposureAdjust", "GammaAdjust", _
		  "HueAdjust", "LinearToSRGBToneCurve", "SRGBToneCurveToLinear", "TemperatureAndTint", "Vibrance", _
		  "WhitePointAdjust"))
		  me.AddSection ("Color Effects")
		  AddRowSection(6, array("ColorCrossPolynomial","ColorCube", "ColorCubeWithColorSpace", "ColorInvert", "ColorMonochrome", "ColorPosterize", "FalseColor", "MaskToAlpha", _
		  "MaximumComponent", "MinimumComponent", "PhotoEffectChrome", "PhotoEffectFade", "PhotoEffectInstant", "PhotoEffectMono", _
		  "PhotoEffectNoir", "PhotoEffectProcess", "PhotoEffectTonal", "PhotoEffectTransfer", "SepiaTone", "Vignette", "VignetteEffect"))
		  me.AddSection ("Geometry Adjustment")
		  AddRowSection(7, array( "AffineTransform", "Crop", "LanczosScaleTansform", "StraightenFilter"))
		  me.AddSection ("Reduction")
		  AddRowSection(8, array( "AreaAverage", "AreaHistogram", "HistogramDisplayFilter", "RowAverage", "ColumnAverage", "AreaMaximum", _
		  "AreaMinimum", "AreaMaximumAlpha", "AreaMinimumAlpha"))
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  dim img as new AppleImage(iosLibLogo)
		  img = img.Resize (ioSLIbImageView1.Frame.Size.toNSsize, true, CoreGraphicsFramework.CGInterpolationQuality.High)
		  dim pic as iOSImage = img.toiOSImage
		  try
		    select  case me.RowData(Section, row).text
		    case "No Filter"
		      Filter = nil
		      iOSLibImageView1.AppleObject.Image = img
		    case "BoxBlur"
		      Filter = new AppleCIBoxBlurFilter(pic, 15)
		    case "DiscBlur"
		      Filter = new AppleCIDiscBlurFilter(pic, 15)
		    case "GaussianBlur"
		      Filter = new AppleCIGaussianBlurFilter(pic, 15)
		    case "MaskedVariableBlur"
		      dim pic1 as  AppleImage = AppleImage.ImageFromContext (img.Size, AddressOf MakeLinearGradientImage)
		      dim temppic as iOSImage = pic1.toiOSImage
		      filter = new AppleCIMaskedVariableBlurFilter (pic, temppic, 15)
		    case "MedianFilter"
		      Filter = new AppleCIMedianFilter(pic)
		    case "MotionBlur"
		      Filter = new AppleCIMotionBlurFilter(pic, 8, 180)
		    case "NoiseReduction"
		      filter = new AppleCINoiseReduction (pic, 0.1, 1.8)
		    case "ZoomBlur"
		      Filter = new AppleCIZoomBlurFilter (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 10)
		      
		      
		    case "SharpenLuminance"
		      filter = new AppleCISharpenLuminance (pic,  2)
		    case "UnsharpMask"
		      filter = new AppleCIUnsharpMask (pic,  50, 10)
		      
		      
		    case "BumpDistortion"
		      filter = new AppleCIBumpDistortion (pic, iOSLibImageView1.Width/4, iOSLibImageView1.Height / 2, 150, 0.8)
		    case "BumpDistortionLinear"
		      filter = new AppleCIBumpDistortionLinear (pic, iOSLibImageView1.Width/4, iOSLibImageView1.Height / 2, 500, 45, 0.8)
		    case "CircleSplashDistortion"
		      filter = new AppleCICircleSplashDistortion  (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 200)
		    case "CircularWrap"
		      filter = new AppleCICircularWrap  (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 100, 90)
		    case "Droste"
		      filter = new AppleCIDroste (pic, 100, 100, 150, 150, 2, 3, 45, 1.8)
		    case "DisplacementDistortion"
		      dim pic1 as  AppleImage = AppleImage.ImageFromContext (img.Size, AddressOf MakeLinearGradientImage)
		      dim temppic as iOSImage = pic1.toiOSImage
		      filter = new AppleCIDisplacementDistortion (pic, temppic, 100)
		    case "GlassDistortion"
		      dim pic1 as  AppleImage = AppleImage.ImageFromContext (img.Size, AddressOf MakeLinearGradientImage)
		      dim temppic as iOSImage = pic1.toiOSImage
		      filter = new AppleCIGlassDistortion (pic, temppic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 200)
		    case "GlassLozenge"
		      filter = new AppleCIGlassLozenge(pic, 100, 100, 300, 150, 80, 1.8)
		    case "HoleDistortion"
		      filter = new AppleCIHoleDistortion (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 100)
		    case "Lighttunnel"
		      filter = new AppleCILightTunnel (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 90, 200)
		    case "PinchDistortion"
		      filter = new AppleCIPinchDistortion (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 200, 1.2)
		    case "StretchCrop"
		      filter = new AppleCIStretchCrop (pic, 400, 200, 0.5, 0.5)
		    case "TorusLensDistortion"
		      filter = new AppleCITorusLensDistortion (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 150, 100, 1.5)
		    case "TwirlDistortion" 
		      filter = new AppleCITwirlDistortion (pic, iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 150, 460)
		    case "VortexDistortion"
		      filter = new AppleCIVortexDistortion (pic, iOSLibImageView1.Width/2, 80, 250)
		      
		    case "AztecCodeGenerator"
		      filter = new AppleCIAztecCodeGenerator("AppleLib rulez!", 10, 32, false)
		    case "CheckerboardGenerator"
		      filter = new AppleCICheckerboardGenerator (iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, &cECA55A00, &c5CB66500, 25, 0.8 )
		    Case "Code128BarcodeGenerator"
		      filter = new AppleCICode128BarcodeGenerator ("AppleLib rulez!", iOSLibImageView1.Height - 20, 10 )
		    case "ConstantColorGenerator"
		      filter = new AppleCIConstantColorGenerator (&c5A92BB00)
		    case "LenticularHaloGenerator"
		      filter = new AppleCILenticularHaloGenerator  (iOSLibImageView1.Width / 2, iOSLibImageView1.height / 2, &cffffff00, 10, 60, 0.3, 0.8, 4, 0)
		      
		    case "QRCodeGenerator"
		      filter = new AppleCIQRCodeGenerator ("AppleLib rulez!", AppleCIQRCodeGenerator.QRCorrectionLevels.Highest)
		    case "RandomGenerator"
		      filter = new AppleCIRandomGenerator
		    case "StarshineGenerator"
		      filter = new AppleCIStarShineGenerator (iOSLibImageView1.AppleObject.width/2, iOSLibImageView1.AppleObject.height/2, &cFF133D00, 41, 20, 45, -5, 5, -3)
		    case "StripesGenerator"
		      filter = new AppleCIStripesGenerator (iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, &cECA55A00, &c5CB66500, 25, 0.8 )
		    case "SunbeamsGenerator"
		      filter = new AppleCISunbeamsGenerator (iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, &cECA55A00, 45, 4.6, 0.22, 2.56, 0.5)
		      
		    case "GaussianGradient"
		      filter = new AppleCIGaussianGradient (iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, &cECA55A00, &c5CB66500, 250 )
		    case "LinearGradient"
		      filter = new AppleCILinearGradient (0,0,iOSLibImageView1.Width, iOSLibImageView1.height, &cECA55A00, &c5CB66500)
		    case "RadialGradient"
		      filter = new AppleCIRadialGradient (iOSLibImageView1.Width/2, iOSLibImageView1.Height / 2, 10, 200, &cECA55A00, &c5CB66500)
		    case "SmoothLinearGradient"
		      filter = new AppleCISmoothLinearGradient (0,0,iOSLibImageView1.Width, iOSLibImageView1.height, &cECA55A00, &c5CB66500)
		      
		      
		    case "ColorClamp"
		      filter = new AppleCIColorClamp (pic, &c300524ff, &cFFAA8800 )
		    case "ColorControls"
		      filter = new AppleCIColorControls (pic, 4, 0.8, -2 )
		    case "ColorMatrix"
		      filter = new AppleCIColorMatrix (pic, nil, nil, new AppleLibVectorRGBA(-5, 0, 6,1 ),nil , new AppleLibVectorRGBA(-20, 1, -1,0 ))
		    case "ColorPolynomial"
		      filter = new AppleCIColorPolynomial (pic, nil, new AppleLibVectorRGBA(1, 200, -400, 1), new AppleLibVectorRGBA(0.2, 0.5, 400, 1) )
		    case "ExposureAdjust"
		      filter = new AppleCIExposureAdjust (pic,7.2 )
		    case "GammaAdjust"
		      filter = new AppleCIGammaAdjust (pic, 0.38 )
		    case "HueAdjust"
		      filter = new AppleCIHueAdjust (pic,45 )
		    case "LinearToSRGBToneCurve"
		      filter = new AppleCILinearToSRGBToneCurve(pic)
		    case"SRGBToneCurveToLinear"
		      filter = new AppleCISRGBToneCurveToLinear(pic)
		    case "TemperatureAndTint"
		      filter = new AppleCITemperatureAndTint (pic , 6500, 0, 4000, 500)
		    case "Vibrance"
		      filter = new AppleCIVibrance (pic ,-0.9)
		    case "WhitePointAdjust"
		      filter = new AppleCIWhitePointAdjust (pic ,&c44228800)
		      
		    case "AffineTransform"
		      dim transform as  cgAffineTransform
		      transform = TransformExtension.MakeDegreesRotation(20)
		      transform = transform.Scale(.2, 1)
		      filter = new AppleCIAffineTransform(pic, transform)
		    case "StraightenFilter"
		      filter = new AppleCIStraightenFilter (pic, 180)
		    case "Crop"
		      filter = new AppleCICrop (pic, 200,135,600,150)
		    case "LanczosScaleTansform"
		      filter = new AppleCILanczosScaleTransform(pic, 0.12, 0.5)
		      
		      
		    case "ColorCrossPolynomial"
		      filter = new AppleCIColorCrossPolynomial (pic, new AppleLibVector10(1, -50, 4, 5, 1, 0,0,0,0,0), _
		      nil, new AppleLibVector10(-1, -1, 2, 1, 0,0,0,0,0,0))
		    case "ColorCube"
		      dim cube as new AppleLibColorCube(40, addressof colorchangeMethod)
		      filter=  new AppleCIColorCube(pic, cube)
		    case "ColorCubeWithColorSpace"
		      dim cube as new AppleLibColorCube(40, addressof colorchangeMethod)
		      filter=  new AppleCIColorCubeWithColorSpace(pic, cube, AppleCGColorSpace.ColorSpaceAdobeRGB1998)
		    case "ColorInvert"
		      filter = new AppleCIColorInvert(pic)
		    case "ColorMonochrome"
		      filter = new AppleCIColorMonochrome(pic, &cFF972300, 0.95)
		    case "ColorPosterize"
		      filter = new AppleCIColorPosterize(pic, 13)
		    case "FalseColor"
		      filter = new AppleCIFalseColor(pic, &cECA55A00, &c5CB66500)
		    case "MaskToAlpha"
		      filter = new AppleCIMaskToAlpha(pic)
		    case "MaximumComponent"
		      filter = new AppleCIMaximumComponent(pic)
		    case "MinimumComponent"
		      filter = new AppleCIMinimumComponent(pic)
		    case "PhotoEffectChrome"
		      filter = new AppleCIPhotoEffectChrome(pic)
		    case "PhotoEffectFade"
		      filter = new AppleCIPhotoEffectFade(pic)
		    case "PhotoEffectInstant"
		      filter = new AppleCIPhotoEffectInstant(pic)
		    case "PhotoEffectMono"
		      filter = new AppleCIPhotoEffectMono(pic)
		    case "PhotoEffectNoir"
		      Filter = new AppleCIPhotoEffectNoir(pic)
		    case "PhotoEffectProcess"
		      filter = new AppleCIPhotoEffectProcess(pic)
		    case "PhotoEffectTonal"
		      filter = new AppleCIPhotoEffectTonal(pic)
		    case "PhotoEffectTransfer"
		      filter = new AppleCIPhotoEffectTransfer (pic)
		    case "SepiaTone"
		      filter = new AppleCISepiaTone (pic, 0.94)
		    case "Vignette"
		      filter = new AppleCIVignette(pic, 1.7, 1.95)
		    case "VignetteEffect"
		      filter = new AppleCIVignetteEffect (pic, pic.Width/2, pic.Height / 2, 257, 0.4, 0.3)
		      
		      
		      // Reduction
		    case "AreaAverage"
		      filter = new AppleCIAreaAverage(pic)
		    case "AreaHistogram"
		      filter = new AppleCIAreaHistogram(pic,0,0,0,0,10)
		    case "RowAverage"
		      filter = new AppleCIRowAverage(pic)
		    case "ColumnAverage"
		      filter = new AppleCIColumnAverage(pic)
		    case "AreaMaximum"
		      filter = new AppleCIAreaMaximum(pic)
		    case "AreaMinimum"
		      filter = new AppleCIAreaMinimum(pic)
		    case "AreaMaximumAlpha"
		      filter = new AppleCIAreaMaximumAlpha(pic)
		    case "AreaMinimumAlpha"
		      filter = new AppleCIAreaMinimumAlpha(pic)
		    case "HistogramDisplayFilter"
		      dim prefilter as new AppleCIAreaHistogram(pic,0,0,0,0,256, 25)
		      filter = new AppleCIHistogramDisplayFilter (prefilter, 200, 0.98, 0.02)
		    end select
		    
		  catch
		    dim msg as new iOSMessageBox
		    msg.Title = "The selected filter is not available on this system"
		    msg.Show
		  end try
		  
		  
		  if filter <> nil then
		    dim width as double = iOSLibImageView1.Width
		    dim height as double = iOSLibImageView1.Height
		    iOSLibImageView1.AppleObject.Image = filter.OutputCIImage.toAppleImage(width, height, true)
		  else
		    iOSLibImageView1.AppleObject.Image = img
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
