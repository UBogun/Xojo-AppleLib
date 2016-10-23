#tag Window
Begin Window CIFilterWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   745
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   650
   MinimizeButton  =   False
   MinWidth        =   850
   Placement       =   1
   Resizeable      =   True
   Title           =   "CIFIlter"
   Visible         =   True
   Width           =   1024
   Begin OSXLibView OSXLibView2
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      FlippedCoordinates=   True
      FocusRingType   =   "Default"
      Height          =   394
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   134
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   True
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   323
   End
   Begin PopupMenu PopupMenu1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   440
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   10
      Underline       =   False
      Visible         =   True
      Width           =   564
   End
   Begin Label LocFilterNameLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   42
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   414
   End
   Begin HTMLViewer HTMLViewer1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   183
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Renderer        =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   562
      Visible         =   True
      Width           =   1024
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   48
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "I could not figure out how to catch changes on the UIViewControl controls below. Therefore I installed a timer. If the app is too laggy, decheck Auto-Refresh and refresh manually."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   74
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   549
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Break to examine"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "The filter subclasses carry a localized description for most of their properties. Clicking here leads you to the debugger to examine their values."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   798
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   211
      Underline       =   False
      Visible         =   True
      Width           =   206
   End
   Begin TextField playtimefield
      AcceptTabs      =   False
      Alignment       =   3
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   "seconds"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   939
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   "9999"
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "2"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   253
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   65
   End
   Begin PushButton playbutton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Play Time:"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "For filters with an InputTime property, you can employ a timer animation that tries to cycle through time during the seconds to the right. This is not a ""real"" animation, and filter repsonses may delay the period by numbers."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   798
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   254
      Underline       =   False
      Visible         =   True
      Width           =   117
   End
   Begin xojo.core.timer Timer1
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   "0"
      Period          =   17
      Scope           =   0
      TabPanelIndex   =   0
      Tolerance       =   0
   End
   Begin OSXLibImageWell OSXLibView1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   528
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   True
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   418
   End
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Refresh"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   798
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   168
      Underline       =   False
      Visible         =   True
      Width           =   206
   End
   Begin xojo.core.timer timer2
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   "2"
      Period          =   250
      Scope           =   0
      TabPanelIndex   =   0
      Tolerance       =   0
   End
   Begin OSXLibImageWell OSXLibImageWell2
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   206
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   798
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   322
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   206
   End
   Begin CheckBox CheckBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Auto-Refresh"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   "I could not find out how to address the ObjectController behind the ControlView in the middle. As a quick & ditry solution I installed a timer that updates the imageview 4 times a second. If the demo becomes unresponsive, decheck this checkbox and Refresh the preview manually with the button below. "
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   798
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      State           =   1
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   136
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   206
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  dim smalllogo as new AppleImage(OSXLibLogo)
		  smalllogo = smalllogo.Resize (OSXLibView1.AppleObject.FrameSize, true, AppKitFramework.NSImageInterpolation.high, self.ScaleFactor)
		  smalllogo.Name =kSmallLogo
		  // filter = new AppleCIColorCrossPolynomial (smalllogo.toPicture, new AppleLibVector10(3, -20, 4, 5, 6, -3, 0, 3, 1, -5))
		  // // filter  = myfilter
		  // OSXLibView1.AppleObject.Image = filter.OutputImage
		  ShowAttribues
		  // dim attdict as CIFilterAttributeDictionary = filter.FilterAttributes
		  // dim cats() as text = attdict.FilterCategoryKeys
		  // dim min as double = attdict.MinimumValue
		  // dim outdict as CIFilterAttributeDictionary =attdict.OutputImageDict
		  // dim ref as appleurl = attdict.LocalizedReference
		  if filter <> nil then
		    dim v as  AppleIKFilterUIView = filter.ConfigurationView (AppleCIFilter.IKUISizeFlavor.Regular, AppleCIFilter.CIUIParameters.Development)
		    v.AutoResizingMask = AppleAutoresizingMask.FullResize
		    OSXLibView2.AppleObject.AddSubview v
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ColorChangeMethod(Input as color) As color
		  // an example for usage of the AppleLibColorCube
		  // simply replaces every color that contains more than 50% blue to transparent
		  
		  return if (input.Blue < 128 and input.Blue > 30 ,  RGB(255,255, 255, 255), Input)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowAttribues()
		  if filter <> nil then
		    LocFilterNameLabel.text = filter.LocalizedFilterName
		    if filter.LocalizedReference <> nil then HTMLViewer1.LoadURL filter.LocalizedReference.AbsoluteURLString
		    if filter.FilterAttributes.TimeDict <> nil then
		      playbutton.Enabled = true
		    else
		      playbutton.Enabled = False
		    end if
		  else
		    LocFilterNameLabel.text = "Please select a filter!"
		    playbutton.Enabled = False
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Controller As AppleObjectController
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Filter As AppleCIFIlter
	#tag EndProperty

	#tag Property, Flags = &h0
		TimeIncrement As Double = 0.83333
	#tag EndProperty

	#tag Property, Flags = &h0
		TimePos As Double = 0
	#tag EndProperty


	#tag Constant, Name = kSmallLogo, Type = Text, Dynamic = False, Default = \"SmallLogo", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events PopupMenu1
	#tag Event
		Sub Open()
		  Me.AddRows (array("No Filter", "___ Blur Filters ___" ,"BoxBlur", "DiscBlur", "GaussianBlur", "MaskedVariableBlur", "MedianFilter", "MotionBlur", "NoiseReduction", "ZoomBlur"))
		  me.AddRows (array("___ Sharpen Filters ____", "SharpenLuminance", "UnsharpMask"))
		  me.AddRows (array("___ Distortion Filters ____", "BumpDistortion", "BumpDistortionLinear", "CircleSplashDistortion", "CircularWrap", "Droste", "DisplacementDistortion", "GlassDistortion", _
		  "GlassLozenge", "HoleDistortion", "Lighttunnel", "PinchDistortion", "StretchCrop", "TorusLensDistortion", "TwirlDistortion", "VortextDistortion"))
		  me.Addrows(array("____Generators____", "AztecCodeGenerator", "CheckerboardGenerator", "Code128BarcodeGenerator", "ConstantColorGenerator", "LenticularHaloGenerator","QRCodeGenerator", _
		  "RandomGenerator", "StarshineGenerator", "StripesGenerator", "SunbeamsGenerator"))
		  me.addrows (array("____Gradients____", "GaussianGradient", "LinearGradient", "RadialGradient", "SmoothLinearGradient"))
		  me.AddRows(array("____ColorAdjustment____", "ColorClamp", "ColorControls", "ColorMatrix", "ColorPolynomial", "ExposureAdjust", "GammaAdjust", _
		  "HueAdjust", "LinearToSRGBToneCurve", "SRGBToneCurveToLinear", "TemperatureAndTint", "Vibrance", _
		  "WhitePointAdjust"))
		  me.AddRows(array("____Color Effects____", "ColorCrossPolynomial","ColorCube", "ColorCubeWithColorSpace", "ColorInvert", "ColorMonochrome", "ColorPosterize", "FalseColor", "MaskToAlpha", _
		  "MaximumComponent", "MinimumComponent", "PhotoEffectChrome", "PhotoEffectFade", "PhotoEffectInstant", "PhotoEffectMono", _
		  "PhotoEffectNoir", "PhotoEffectProcess", "PhotoEffectTonal", "PhotoEffectTransfer", "SepiaTone", "Vignette", "VignetteEffect"))
		  me.addrows(array("____Geometry Adjustment____", "AffineTransform", "Crop", "LanczosScaleTansform", "StraightenFilter"))
		  me.addrows(array("____Reduction____", "AreaAverage", "AreaHistogram", "HistogramDisplayFilter", "RowAverage", "ColumnAverage", "AreaMaximum", _
		  "AreaMinimum", "AreaMaximumAlpha", "AreaMinimumAlpha"))
		  me.ListIndex = 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  timer1.Mode = xojo.core.timer.Modes.Off
		  try
		    'dim img as new AppleImage(OSXLibLogo)
		    dim img as AppleImage = AppleImage.ImageNamed (kSmallLogo)
		    'img = img.resize(osxlibview1.AppleObject.FrameSize, true, AppKitFramework.NSImageinterpolation.High, 1)
		    dim pic  as picture =img.toPicture
		    select case me.Text
		    case "No Filter"
		      Filter = nil
		      OSXLibview1.AppleObject.Image = img
		    case "BoxBlur"
		      Filter = new AppleCIBoxBlurFilter(pic, 15)
		    case "DiscBlur"
		      Filter = new AppleCIDiscBlurFilter(pic, 15)
		    case "GaussianBlur"
		      Filter = new AppleCIGaussianBlurFilter(pic, 15)
		    case "MaskedVariableBlur"
		      dim pic1 as new picture(pic.Width, pic.Height)
		      dim g as new AppleCGContext(pic1.Graphics)
		      g.DrawLinearGradient new AppleCGGradient (&c00000000, &cFFFFFF00, &c00000000), FoundationFrameWork.NSMakePoint(0,pic1.Height), FoundationFrameWork.NSMakePoint(pic1.Width, 0)
		      filter = new AppleCIMaskedVariableBlurFilter (pic, pic1, 20)
		    case "MedianFilter"
		      Filter = new AppleCIMedianFilter(pic)
		    case "MotionBlur"
		      Filter = new AppleCIMotionBlurFilter(pic, 8, 180)
		    case "NoiseReduction"
		      filter = new AppleCINoiseReduction (pic, 0.1, 1.8)
		    case "ZoomBlur"
		      Filter = new AppleCIZoomBlurFilter (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 10)
		      
		      
		    case "SharpenLuminance"
		      filter = new AppleCISharpenLuminance (pic,  2)
		    case "UnsharpMask"
		      filter = new AppleCIUnsharpMask (pic,  50, 10)
		      
		      
		    case "BumpDistortion"
		      filter = new AppleCIBumpDistortion (pic, OSXLibView1.Width/4, OSXLibView1.Height / 2, 150, 0.8)
		    case "BumpDistortionLinear"
		      filter = new AppleCIBumpDistortionLinear (pic, OSXLibView1.Width/4, OSXLibView1.Height / 2, 500, 45, 0.8)
		    case "CircleSplashDistortion"
		      filter = new AppleCICircleSplashDistortion  (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 200)
		    case "CircularWrap"
		      filter = new AppleCICircularWrap  (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 100, 90)
		    case "Droste"
		      filter = new AppleCIDroste (pic, 100, 100, 150, 150, 2, 3, 45, 1.8)
		    case "DisplacementDistortion"
		      dim pic1 as new picture(pic.Width, pic.Height)
		      dim g as new AppleCGContext(pic1.Graphics)
		      g.DrawLinearGradient new AppleCGGradient (&c00000000, &cFFFFFF00, &c00000000), FoundationFrameWork.NSMakePoint(0,pic1.Height), FoundationFrameWork.NSMakePoint(pic1.Width, 0)
		      filter = new AppleCIDisplacementDistortion (pic, pic1, 200)
		    case "GlassDistortion"
		      dim pic1 as new picture(pic.Width, pic.Height)
		      dim g as new AppleCGContext(pic1.Graphics)
		      g.DrawLinearGradient new AppleCGGradient (&c00000000, &cFFFFFF00, &c00000000), FoundationFrameWork.NSMakePoint(0,pic1.Height), FoundationFrameWork.NSMakePoint(pic1.Width, 0)
		      filter = new AppleCIGlassDistortion (pic, pic1, 200, 200, 450)
		    case "GlassLozenge"
		      filter = new AppleCIGlassLozenge(pic, 100, 100, 300, 150, 80, 1.8)
		    case "HoleDistortion"
		      filter = new AppleCIHoleDistortion (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 100)
		    case "Lighttunnel"
		      filter = new AppleCILightTunnel (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 90, 200)
		    case "PinchDistortion"
		      filter = new AppleCIPinchDistortion (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 200, 1.2)
		    case "StretchCrop"
		      filter = new AppleCIStretchCrop (pic, 400, 200, 0.5, 0.5)
		    case "TorusLensDistortion"
		      filter = new AppleCITorusLensDistortion (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 150, 100, 1.5)
		    case "TwirlDistortion"
		      filter = new AppleCITwirlDistortion (pic, OSXLibView1.Width/2, OSXLibView1.Height / 2, 150, 460)
		    case "VortextDistortion"
		      filter = new AppleCIVortexDistortion (pic, OSXLibView1.Width/2, 80, 250)
		      
		    case "AztecCodeGenerator"
		      filter = new AppleCIAztecCodeGenerator("AppleLib rulez!", 10, 32, false)
		    case "CheckerboardGenerator"
		      filter = new AppleCICheckerboardGenerator (OSXLibView1.Width/2, OSXLibView1.Height / 2, &cECA55A00, &c5CB66500, 25, 0.8 )
		    Case "Code128BarcodeGenerator"
		      filter = new AppleCICode128BarcodeGenerator ("AppleLib rulez!", OSXLibView1.Height - 20, 10 )
		    case "ConstantColorGenerator"
		      filter = new AppleCIConstantColorGenerator (&c5A92BB00)
		    case "LenticularHaloGenerator"
		      filter = new AppleCILenticularHaloGenerator  (OSXLibView1.Width / 2, OSXLibView1.height / 2, &cffffff00, 10, 60, 0.3, 0.8, 4, 0)
		      
		    case "QRCodeGenerator"
		      filter = new AppleCIQRCodeGenerator ("AppleLib rulez!", AppleCIQRCodeGenerator.QRCorrectionLevels.Highest)
		    case "RandomGenerator"
		      filter = new AppleCIRandomGenerator
		    case "StarshineGenerator"
		      filter = new AppleCIStarShineGenerator (osxlibview1.AppleObject.width/2, osxlibview1.AppleObject.height/2, &cFF133D00, 41, 20, 45, -5, 5, -3)
		    case "StripesGenerator"
		      filter = new AppleCIStripesGenerator (OSXLibView1.Width/2, OSXLibView1.Height / 2, &cECA55A00, &c5CB66500, 25, 0.8 )
		    case "SunbeamsGenerator"
		      filter = new AppleCISunbeamsGenerator (OSXLibView1.Width/2, OSXLibView1.Height / 2, &cECA55A00, 45, 4.6, 0.22, 2.56, 0.5)
		      
		    case "GaussianGradient"
		      filter = new AppleCIGaussianGradient (OSXLibView1.Width/2, OSXLibView1.Height / 2, &cECA55A00, &c5CB66500, 250 )
		    case "LinearGradient"
		      filter = new AppleCILinearGradient (0,0,OSXLibView1.Width, OSXLibView1.height, &cECA55A00, &c5CB66500)
		    case "RadialGradient"
		      filter = new AppleCIRadialGradient (OSXLibView1.Width/2, OSXLibView1.Height / 2, 10, 200, &cECA55A00, &c5CB66500)
		    case "SmoothLinearGradient"
		      filter = new AppleCISmoothLinearGradient (0,0,OSXLibView1.Width, OSXLibView1.height, &cECA55A00, &c5CB66500)
		      
		      
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
		      dim transform as new AppleAffineTransform
		      transform.RotateByDegrees(20)
		      transform.Scale(5, 1)
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
		      dim cube as new AppleLibColorCube(80, addressof colorchangeMethod)
		      filter=  new AppleCIColorCube(pic, cube)
		    case "ColorCubeWithColorSpace"
		      dim cube as new AppleLibColorCube(80, addressof colorchangeMethod)
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
		    MsgBox "The selected filter is not available on this system"
		  end try
		  
		  
		  'osxlibview1.AppleObject.ContentFilters = nil
		  if filter <> nil then
		    'OSXLibView1.AppleObject.AddContentFilter filter
		    dim configview as AppleIKFilterUIView = filter.ConfigurationView (AppleCIFilter.IKUISizeFlavor.Regular, AppleCIFilter.CIUIParameters.Advanced)
		    if OSXLibView2.AppleObject.Subviews.Count > 0 then // Attach UIView
		      OSXLibView2.AppleObject.ReplaceSubview (appleview.MakefromPtr(OSXLibView2.AppleObject.Subviews.PtrAtIndex(0)), configview)
		    else
		      osxlibview2.AppleObject.AddSubview configview
		    end if
		    dim width as double = OSXLibView1.Width
		    dim height as double = osxlibview1.Height
		    OSXLibview1.AppleObject.Image = filter.OutputCIImage.toAppleImage(width, height, true)
		    ShowAttribues
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  dim f as AppleCIFilter = self.Filter
		  break
		  #Pragma unused f
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events playbutton
	#tag Event
		Sub Action()
		  dim playtime as double = double.Parse(playtimefield.text.ToText)
		  dim playinterval as double  = playtime * 60
		  TimeIncrement = 1/playinterval 
		  timepos = 0
		  timer1.Mode = xojo.core.timer.modes.Multiple
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  TimePos = TimePos + TimeIncrement
		  filter.ValueForKey(CIFilterAttributeDictionary.kciinputtimeKey) = new AppleNumber(TimePos)
		  'filter.ValueForKey(CIFilterAttributeDictionary.kciinputhaloradius) =  new AppleNumber (xojo.math.RandomInt(0, 300))
		  'OSXLibView1.AppleObject.ContentFilters.ObjectAtIndex(0).ValueForKey(CIFilterAttributeDictionary.kciinputtimeKey) = new AppleNumber(TimePos)
		  dim width as double = OSXLibView1.Width
		  dim height as double = osxlibview1.Height
		  OSXLibview1.AppleObject.Image = filter.OutputCIImage.toAppleImage(width, height, true)
		  // OSXLibView1.AppleObject.Layer.Invalidate
		  if TimePos >= 1 then me.Mode = xojo.core.timer.Modes.Off
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OSXLibView1
	#tag Event
		Sub Shown()
		  me.AppleObject.ImageScaling = AppKitFramework.NSImageScaling.ProportionallyUpOrDown
		  me.AppleObject.ImageFrameStyle = AppKitFramework.NSImageFrameStyle.Photo
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  if filter <> nil then 
		    OSXLibview1.AppleObject.Image = filter.OutputImage
		  else
		    OSXLibview1.AppleObject.Image = nil
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timer2
	#tag Event
		Sub Action()
		  if filter <> nil and filter.OutputCIImage <> nil then 
		    dim width as double = OSXLibView1.Width
		    dim height as double = osxlibview1.Height
		    app.DoEvents(5)
		    OSXLibview1.AppleObject.Image = filter.OutputCIImage.toAppleImage(width, height, true)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OSXLibImageWell2
	#tag Event
		Sub Shown()
		  
		  
		  dim t as text = "What an amazingly easy method to create QR Codes directly from Text and AppleURL. Upscales without blurring now."
		  dim pic as picture = t.GenerateQRCode(AppleCIQRCodeGenerator.QRCorrectionLevels.Lowest, me.width)
		  // pic = pic.BlurBox(20)
		  me.AppleObject.Image = new AppleImage(pic)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox1
	#tag Event
		Sub Action()
		  if me.Value then
		    timer2.Mode = xojo.core.timer.modes.Multiple
		  else
		    timer2.Mode = xojo.core.timer.modes.Off
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TimeIncrement"
		Group="Behavior"
		InitialValue="0.83333"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TimePos"
		Group="Behavior"
		InitialValue="0"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
