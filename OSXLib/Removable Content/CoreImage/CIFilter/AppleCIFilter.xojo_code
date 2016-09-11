#tag Class
Protected Class AppleCIFilter
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1001
		Protected Sub Constructor(FilterName as CFStringRef)
		  Declare function filterWithName lib CoreImageLibName selector "filterWithName:" (id as ptr, name as cfstringref) as ptr
		  super.Constructor (filterWithName(ClassPtr, FilterName))
		  RetainClassObject
		  #if targetmacos then SetDefaults
		  'else
		  'MakeException ("CIFilter class "+FilterName+" is not available on this OS")
		  'end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function Filternames(categories as ptr) As AppleArray
		  declare function filterNamesInCategories lib CoreImageLibName selector "filterNamesInCategories:" (id as ptr, categories as ptr) as ptr
		  return AppleArray.MakeFromPtr (filterNamesInCategories (classptr, categories))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FilternamesForCategory(category as cfstringref) As AppleArray
		  declare function filterNamesInCategory lib CoreImageLibName selector "filterNamesInCategory:" (id as ptr, category as CFStringRef) as ptr
		  return AppleArray.MakeFromPtr (filterNamesInCategory (classptr, category))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFilter(FilterName as text) As AppleCIFilter
		  if FilterNames.ContainsText (FilterName) then
		    return new AppleCIFilter (FilterName)
		  else
		    MakeException ( "CIFiltername "+FilterName+" is not registered")
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCIFilter
		  return if (aptr = nil, nil, new AppleCIFilter(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaults()
		  Declare Sub setDefaults lib CoreImageLibName selector "setDefaults" (id as ptr)
		  setDefaults id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cBlur)
			End Get
		#tag EndGetter
		Shared BlurFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cBuiltIn)
			End Get
		#tag EndGetter
		Shared BuiltInFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryBlur", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cBlur As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryBuiltIn", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cBuiltIn As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryColorAdjustment", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cColorAdjust As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryColorEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cColorEffect As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryCompositeOperation", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cComposite As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryDistortionEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared CDistortion As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryGenerator", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cGenerator As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryGeometryAdjustment", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared CGeoAdjustment As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryGradient", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cGradient As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryHalftoneEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cHalfTone As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryHighDynamicRange", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cHDR As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryInterlaced", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cInterlaced As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CIFilter")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryNonSquarePixels", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cNonSquare As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cColorAdjust)
			End Get
		#tag EndGetter
		Shared ColorAdjustmentFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cColorEffect)
			End Get
		#tag EndGetter
		Shared ColorEffectFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cComposite)
			End Get
		#tag EndGetter
		Shared CompositeOperationFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryReduction", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cReduction As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategorySharpen", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cSharpen As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryStillImage", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cStillImage As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryStylize", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cStylize As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryTileEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cTile As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryTransition", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cTransition As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryVideo", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cVideo As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (CDistortion)
			End Get
		#tag EndGetter
		Shared DistortionFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function attributes_ lib CoreImageLibName selector "attributes" (id as ptr) as ptr
			  return AppleDictionary.MakeFromPtr (attributes_ (id))
			End Get
		#tag EndGetter
		FilterAttributes As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilterNames (nil)
			End Get
		#tag EndGetter
		Shared FilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cGenerator)
			End Get
		#tag EndGetter
		Shared GeneratorFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (CGeoAdjustment)
			End Get
		#tag EndGetter
		Shared GeometryAdjustmentFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cGradient)
			End Get
		#tag EndGetter
		Shared GradientFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cHalfTone)
			End Get
		#tag EndGetter
		Shared HalfToneFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cHDR)
			End Get
		#tag EndGetter
		Shared HDRFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputAngleKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputAngleKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputAngleKey) then ValueForKey (kCIInputAngleKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputAngle As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputAspectRatioKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputAspectRatioKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputAspectRatioKey) then ValueForKey (kCIInputAspectRatioKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputAspectRatio As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputBackgroundImageKey) then return new AppleImage (InputBackgroundCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputBackgroundImageKey) then
			    me.InputBackgroundCIImage = new AppleCIImage(value.CGImage)
			  end if
			End Set
		#tag EndSetter
		InputBackgoundImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputBackgroundImageKey) then return AppleCIImage.MakeFromPtr (ValueForKey (kCIInputBackgroundImageKey).id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputBackgroundImageKey) then ValueForKey (kCIInputBackgroundImageKey) = value
			End Set
		#tag EndSetter
		InputBackgroundCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputBrightnessKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputBrightnessKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputBrightnessKey) then ValueForKey (kCIInputBrightnessKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputBrightness As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputCenterKey) then
			    dim result as AppleCIVector = AppleCIVector.MakefromPtr (ValueForKey (kCIInputCenterKey).id)
			    return result.toNSPoint
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputCenterKey) then ValueForKey (kCIInputCenterKey) = value.toCIVector
			End Set
		#tag EndSetter
		InputCenter As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputColorKey) then  return AppleCIcolor.MakeFromPtr (ValueForKey (kCIInputColorKey).id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputColorKey) then ValueForKey (kCIInputColorKey) = value
			End Set
		#tag EndSetter
		InputCIColor As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleCIImage.MakeFromPtr (ValueForKey (kCIInputImageKey).id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputImageKey) then ValueForKey (kCIInputImageKey) = value
			End Set
		#tag EndSetter
		InputCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputColorKey) then  return InputCIColor.toAppleColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputColorKey) then ValueForKey (kCIInputColorKey) =value
			End Set
		#tag EndSetter
		InputColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputContrastKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputContrastKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputContrastKey) then ValueForKey (kCIInputContrastKey) =new applenumber(value)
			End Set
		#tag EndSetter
		InputContrast As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputEVKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputEVKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputEVKey) then ValueForKey (kCIInputEVKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputEV As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputExtentKey) then
			    dim result as AppleCIVector = AppleCIVector.MakefromPtr (ValueForKey (kCIInputExtentKey).id)
			    return result.toNSRect
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputExtentKey) then ValueForKey (kCIInputExtentKey) = value.toCIVector
			End Set
		#tag EndSetter
		InputExtent As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleImage (InputCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  InputCIImage = new AppleCIImage(value.CGImage)
			End Set
		#tag EndSetter
		InputImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputIntensityKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputIntensityKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputIntensityKey) then ValueForKey (kCIInputIntensityKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputIntensity As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function InputKeys lib CoreImageLibName selector "inputKeys" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (InputKeys(id))
			End Get
		#tag EndGetter
		InputKeys As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputMaskImageKey) then return AppleCIImage.MakeFromPtr (ValueForKey (kCIInputMaskImageKey).id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputMaskImageKey) then ValueForKey (kCIInputMaskImageKey) = value
			End Set
		#tag EndSetter
		InputMaskCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputMaskImageKey) then return new AppleImage (InputMaskCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputBackgroundImageKey) then InputBackgroundCIImage = new AppleCIImage(value.CGImage)
			End Set
		#tag EndSetter
		InputMaskImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputRadiusKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputRadiusKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputRadiusKey) then ValueForKey (kCIInputRadiusKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputRadius As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputSaturationKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputSaturationKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputSaturationKey) then ValueForKey (kCIInputSaturationKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputSaturation As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputScaleKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputScaleKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputScaleKey) then ValueForKey (kCIInputScaleKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputScale As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputSharpnessKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputSharpnessKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputSharpnessKey) then ValueForKey (kCIInputSharpnessKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputSharpness As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputTargetImageKey) then return AppleCIImage.MakeFromPtr (ValueForKey (kCIInputTargetImageKey).id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputTargetImageKey) then ValueForKey (kCIInputTargetImageKey) = value
			End Set
		#tag EndSetter
		InputTargetCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputTargetImageKey) then return new AppleImage (InputTargetCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputBackgroundImageKey) then InputBackgroundCIImage = new AppleCIImage(value.CGImage)
			End Set
		#tag EndSetter
		InputTargetImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputTimeKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputTimeKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputTimeKey) then ValueForKey (kCIInputTimeKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputTime As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputTransformKey) then
			    return  CGAffineTransformValueForKey (kCIInputTransformKey)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputTransformKey) then CGAffineTransformValueForKey (kCIInputTransformKey) = value
			End Set
		#tag EndSetter
		InputTransform As CGAffineTransform
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputVersionKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputVersionKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputVersionKey) then ValueForKey (kCIInputVersionKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputVersion As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if InputKeys.ContainsText (kCIInputWidthKey) then
			    dim result as AppleNumber = AppleNumber.MakefromPtr (getValueForKey (mid, kCIInputWidthKey))
			    return result.DoubleValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (kCIInputWidthKey) then ValueForKey (kCIInputWidthKey) = new applenumber(value)
			End Set
		#tag EndSetter
		InputWidth As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cHalfTone)
			End Get
		#tag EndGetter
		Shared InterlacedFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputAngleKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputAngleKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputAspectRatioKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputAspectRatioKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputBackgroundImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputBackgroundImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputBrightnessKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputBrightnessKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputCenterKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputCenterKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputColorKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputColorKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputContrastKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputContrastKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputEVKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputEVKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputExtentKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputExtentKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputIntensityKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputIntensityKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputMaskImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputMaskImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputRadiusKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputRadiusKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputSaturationKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputSaturationKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputScaleKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputScaleKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputSharpnessKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputSharpnessKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputTargetImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputTargetImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputTimeKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputTimeKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputTransformKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputTransformKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputVersionKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputVersionKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIInputWidthKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIInputWidthKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCIOutputImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kCIOutputImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cNonSquare)
			End Get
		#tag EndGetter
		Shared NonSquarePixelsFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function outputImage lib CoreImageLibName selector "outputImage" (id as ptr) as ptr
			  dim result as ptr = outputImage (id)
			  if result <> nil then
			    dim myimage as new AppleCIImage(result)
			    myimage.Retain
			    return myimage
			  else
			    return NIL
			  end if
			  
			End Get
		#tag EndGetter
		OutputCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if OutputciImage <> nil then
			    dim extent  as FoundationFramework.NSRect = OutputCIImage.Extent
			    if extent.Origin.x < -1000 then
			      return new  AppleImage(OutputciImage.CropToRect(FoundationFrameWork.NSMakeRect (0,0,600,600)))
			    else
			      return new AppleImage(OutputciImage)
			    end if
			  end if
			End Get
		#tag EndGetter
		OutputImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cReduction)
			End Get
		#tag EndGetter
		Shared ReductionFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cSharpen)
			End Get
		#tag EndGetter
		Shared SharpenFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cStillImage)
			End Get
		#tag EndGetter
		Shared StillImageFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cStylize)
			End Get
		#tag EndGetter
		Shared StylizeFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cTile)
			End Get
		#tag EndGetter
		Shared TileEffectFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cTransition)
			End Get
		#tag EndGetter
		Shared TransitionFilterNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cVideo)
			End Get
		#tag EndGetter
		Shared VideoFilterNames As AppleArray
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputAngle"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputAspectRatio"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputBrightness"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputContrast"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputEV"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputIntensity"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputRadius"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputSaturation"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputScale"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputSharpness"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputTime"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputVersion"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputWidth"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
End Class
#tag EndClass
