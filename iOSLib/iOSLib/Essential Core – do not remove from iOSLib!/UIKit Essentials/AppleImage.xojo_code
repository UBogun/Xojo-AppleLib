#tag Class
 Attributes ( "needs refinement" ) Protected Class AppleImage
Inherits AppleObject
	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20616E696D6174656420696D6167652066726F6D20616E206578697374696E6720736574206F6620696D616765732E
		Shared Function Animatedimage(Images As AppleArray, duration as double) As AppleImage
		  Declare function animatedImageWithImages lib UIKitLibname selector "animatedImageWithImages:duration:" (id as ptr, images as Ptr, duration as double) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Dim Result as new AppleImage (animatedImageWithImages (classptr, Images.id, duration))
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20616E696D6174656420696D6167652E
		Shared Function Animatedimage(imagename as cfstringref, duration as double) As AppleImage
		  Declare function animatedImageNamed lib UIKitLibname selector "animatedImageNamed:duration:" (id as ptr, imagename as cfstringref, duration as double) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Dim Result as new AppleImage (animatedImageNamed (classptr, imagename, duration))
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Shared Function AnimatedStretchedResizableImage(imagename as cfstringref, capInsets as UIEdgeInsets, duration as double) As AppleImage
		  Declare function animatedStretchedResizableImageNamed lib UIKitLibname selector "animatedResizableImageNamed:capInsets:resizingMode:duration:" (id as ptr, imagename as cfstringref, capInsets as UIEdgeInsets, resizingMode as Integer, duration as double) as ptr
		  Dim Result as new AppleImage (animatedStretchedResizableImageNamed (classptr, imagename, capInsets, 1, duration))
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20616E696D6174656420696D616765207769746820656E6420636170732E
		Shared Function AnimatedTiledResizableImage(imagename as cfstringref, capInsets as UIEdgeInsets, duration as double) As AppleImage
		  Declare function animatedResizableImageNamed lib UIKitLibname selector "animatedResizableImageNamed:capInsets:duration:" (id as ptr, imagename as cfstringref, capInsets as UIEdgeInsets, duration as double) as ptr
		  Dim Result as new AppleImage (animatedResizableImageNamed (classptr, imagename, capInsets, duration))
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320616E204170706C654172726179206F66204170706C65496D6167657320746F206120586F6A6F206172726179206F6620694F53496D616765
		Shared Function ArrayToCoreArray(imagearray as AppleArray) As IosImage()
		  dim result() as iosimage
		  for q as UInteger = 0 to imagearray.Count - 1
		    result.Append AppleImage.MakeFromPtr (imagearray.PtrAtIndex(q)).toiosimage
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A65637420726570726573656E74696E6720746865207370656369666965642051756172747A20696D6167652E
		Sub Constructor(animage as AppleCGImage)
		  #if Target64Bit
		    Declare function imageWithCGImage lib UIKitLibname selector "imageWithCGImage:" (id as ptr, animage as ptr) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCGImage lib UIKitLibname selector "imageWithCGImage:" (id as ptr, animage as ptr) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCGImage ( ClassPtr, animage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A65637420776974682074686520737065636966696564207363616C6520616E64206F7269656E746174696F6E20666163746F72732E
		Sub Constructor(animage as AppleCGImage, scale as double, orientation as UIImageOrientation = UIImageOrientation.normal)
		  #if Target64Bit
		    Declare function imageWithCGImage lib UIKitLibname selector "imageWithCGImage:scale:orientation:" (id as ptr, animage as ptr, scale as double, orientation as UIImageOrientation) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCGImage lib UIKitLibname selector "imageWithCGImage:scale:orientation:" (id as ptr, animage as ptr, scale as single, orientation as UIImageOrientation) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCGImage ( ClassPtr, animage.CFTypeRef, scale, orientation))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A656374207468617420636F6E7461696E73206120436F726520496D616765206F626A6563742E
		Sub Constructor(animage as AppleCIImage)
		  Declare function imageWithCIImage lib UIKitLibname selector "imageWithCIImage:" (id as ptr, animage as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCIImage (classptr, animage.id), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A656374206261736564206F6E206120436F726520496D616765206F626A65637420616E64207468652073706563696669656420617474726962757465732E
		Sub Constructor(animage as AppleCIImage, scale as double, orientation as UIImageOrientation = UIImageOrientation.normal)
		  #if Target64Bit
		    Declare function imageWithCIImage lib UIKitLibname selector "imageWithCIImage:scale:orientation:" (id as ptr, animage as ptr, scale as double, orientation as UIImageOrientation) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCIImage lib UIKitLibname selector "imageWithCIImage:scale:orientation:" (id as ptr, animage as ptr, scale as single, orientation as UIImageOrientation) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCIImage (classptr, animage.id, scale, orientation))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A65637420746861742075736573207468652073706563696669656420696D61676520646174612E
		Sub Constructor(ImageData as AppleData)
		  Declare function imageWithData lib UIKitLibname selector "imageWithData:" (id as ptr, ImageData as Ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithData (classptr, ImageData.Id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A65637420746861742075736573207468652073706563696669656420696D616765206461746120616E64207363616C6520666163746F722E
		Sub Constructor(ImageData as AppleData, Scale as Double)
		  #if Target64Bit
		    Declare function imageWithDataScale lib UIKitLibname selector "imageWithData:scale:" (id as ptr, ImageData as Ptr, scale as double) as ptr
		  #elseif Target32Bit
		    Declare function imageWithDataScale lib UIKitLibname selector "imageWithData:scale:" (id as ptr, ImageData as Ptr, scale as single) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithDatascale (classptr, ImageData.Id, scale))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E732074686520696D616765206F626A656374206173736F636961746564207769746820746865207370656369666965642066696C656E616D652E
		Sub Constructor(imagename as cfstringref)
		  Declare function imageNamed lib UIKitLibname selector "imageNamed:" (id as ptr, imagename as cfstringref) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imagenamed (classptr, imagename))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E7320616E20696D61676520696E207468652062756E646C65207468617420697320636F6D70617469626C6520776974682074686520747261697420636F6C6C656374696F6E2E
		Sub Constructor(imagename as cfstringref, Bundle as AppleBundle, traitcollection as AppleTraitCollection = nil)
		  Declare function imageNamedinBundle lib UIKitLibname selector "imageNamed:inBundle:compatibleWithTraitCollection:" _
		  (id as ptr, imagename as cfstringref, bundle as ptr, traitcollection as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageNamedinBundle (classptr, imagename, bundle.id, if (traitcollection = nil, nil, traitcollection.id)))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A656374206279206C6F6164696E672074686520696D61676520646174612066726F6D207468652066696C65206174207468652073706563696669656420706174682E
		Sub Constructor(imagePath as folderitem)
		  Declare function imageWithContentsOfFile lib UIKitLibname selector "imageWithContentsOfFile:" (id as ptr, Path as cfstringref) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithContentsOfFile (classptr, imagePath.Path))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as iOSImage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  call ClassPtr
		  Super.Constructor (animage.Handle)
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44726177732074686520656E7469726520696D61676520696E20746865207370656369666965642072656374616E676C652C207363616C696E67206974206173206E656564656420746F206669742E
		Sub Draw(Rect as FoundationFramework.NSRect)
		  Declare sub drawInRect lib UIKitLibname selector "drawInRect:" (id as ptr, Rect  as FoundationFramework.NSRect)
		  drawInRect (id, rect)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44726177732074686520656E7469726520696D61676520696E20746865207370656369666965642072656374616E676C6520616E64207573696E67207468652073706563696669656420636F6D706F736974696E67206F7074696F6E732E
		Sub Draw(Rect as FoundationFramework.NSRect, BlendMode as coregraphicsFramework.CGBlendMode, Alpha as Double = 1)
		  Declare sub drawInRectBlendMode lib UIKitLibname selector "drawInRect:blendMode:alpha:" (id as ptr, Rect  as FoundationFramework.NSRect, blendmode as coregraphicsFramework.CGBlendMode, alpha as double)
		  drawInRectBlendMode (id, rect, blendmode, alpha)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 447261777320612074696C65642051756172747A207061747465726E207573696E672074686520696D616765E280987320636F6E74656E7473206173207468652074696C65207061747465726E2E
		Sub DrawAsPatternInRect(Rect as FoundationFramework.NSRect)
		  Declare sub drawAsPatternInRect lib UIKitLibname selector "drawAsPatternInRect:" (id as ptr, Rect  as FoundationFramework.NSRect)
		  drawAsPatternInRect (id, rect)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44726177732074686520696D616765206174207468652073706563696669656420706F696E7420696E207468652063757272656E7420636F6E746578742E
		Sub DrawAtPoint(Point As FoundationFramework.NSPoint)
		  Declare sub drawAtPoint lib UIKitLibname selector "drawAtPoint:" (id as ptr, point as FoundationFramework.NSPoint)
		  drawAtPoint (id, point)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44726177732074686520656E7469726520696D616765206174207468652073706563696669656420706F696E74207573696E672074686520637573746F6D20636F6D706F736974696E67206F7074696F6E732E
		Sub DrawAtPoint(Point As FoundationFramework.NSPoint, BlendMode as coregraphicsFramework.CGBlendMode, Alpha as Double = 1)
		  Declare sub drawAtPointblendMode lib UIKitLibname selector "drawAtPoint:blendMode:alpha:" (id as ptr, point as FoundationFramework.NSPoint, blendmode as coregraphicsFramework.CGBlendMode, alpha as double)
		  drawAtPointblendMode (id, point, blendmode, alpha)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20656D70747920696D616765207769746820746865207370656369666965642073697A652E
		Shared Function EmptyImage(aSize As FoundationFrameWork.nssize) As AppleImage
		  AppleCGContext.BeginImageContext(asize, false)
		  dim result as AppleImage = AppleCGContext.CurrentContext.toImage
		  AppleCGContext.EndImageContext
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E7420696D6167652C20666C697070656420686F72697A6F6E74616C6C7920696620696E20612072696768742D746F2D6C656674206C61796F75742E
		Function FlipHorizontal() As AppleImage
		  const SEL as text = "imageFlippedForRightToLeftLayoutDirection"
		  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString (SEL)) then
		    Declare function imageFlippedForRightToLeftLayoutDirection lib UIKitLibname selector "imageFlippedForRightToLeftLayoutDirection" (id as ptr) as ptr
		    return new AppleImage (imageFlippedForRightToLeftLayoutDirection(id))
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 5265747572726E732061206E6577204170706C65496D6167652066726F6D20616E20694F53496D616765
		Shared Function FromIOSImage(animage as iOSImage) As AppleImage
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim result as new AppleImage (animage.Handle)
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 436F6E7665727473206120586F6A6F206172726179206F6620694F53496D61676520746F20616E204170706C654172726179206F66204170706C65496D61676573
		Shared Function FromIOSImages(images() as iOSImage) As AppleMutableArray
		  dim result as new AppleMutableArray(Images.Ubound+1)
		  for q as integer = 0 to images.Ubound
		    result.Addobject images(q).toAppleImage
		  next
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C65747320796F752063726561746520616E20696D6167652066726F6D2061206D6574686F6420696E20776869636820796F75207061696E7420746F20746865204170706C654347436F6E746578742028766961205F43757272656E74436F6E746578745F206F7220746865207365766572616C205F447261775F206D6574686F6473207468617420776F726B206F6E206974206469726563746C792E
		Shared Function ImageFromContext(asize as FoundationFrameWork.nssize, paintmethod as paintmethoddelegate, opaque as boolean = false, scale as double = 1) As AppleImage
		  if scale = 0 then scale = AppleScreen.MainScreen.Scale
		  AppleCGContext.BeginImageContext(asize, opaque, Scale)
		  // dim sp as new  PaintMethodDelegate (paintmethod)
		  paintmethod.Invoke (asize.width, asize.height)
		  dim result as appleimage = AppleCGContext.Getimage
		  AppleCGContext.EndImageContext
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JPEGData(compressionQuality as double) As AppleData
		  #if Target64Bit
		    Declare Function UIImageJPEGRepresentation lib UIKitLibname (Image as ptr, quality as double) as ptr
		  #elseif Target32Bit
		    Declare Function UIImageJPEGRepresentation lib UIKitLibname (Image as ptr, quality as single) as ptr
		  #endif
		  Return AppleData.MakefromPtr (UIImageJPEGRepresentation (id, compressionQuality))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleImage
		  return if (aptr <> NIL, new AppleImage (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert(animage as iOSImage) As AppleImage
		  return new AppleImage(animage)
		End Function
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h21, Attributes = \"hidden"
		Attributes( hidden ) Private Delegate Sub PaintMethodDelegate(width as double, height as double)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub PhotoSaved(error as ptr, contextinfo as ptr)
		  dim myerror as AppleError = AppleError.MakefromPtr (error)
		  if myerror = nil then
		    raiseEvent PhotoSaved (contextinfo)
		  else
		    RaiseEvent PhotoSaveError (myerror, contextinfo)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E657720696D616765206F626A656374207769746820746865207370656369666965642063617020696E7365747320616E64206F7074696F6E732E
		Function ResizableStretchedImage(CapInsets as UIEdgeInsets) As AppleImage
		  Declare Function ResizableStretchedImage lib UIKitLibname selector "resizableImageWithCapInsets:resizingMode:" (id as ptr, insets as UIEdgeInsets, resizingMode as integer) as ptr
		  return new AppleImage (ResizableStretchedImage(id, CapInsets, 1))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E657720696D616765206F626A656374207769746820746865207370656369666965642063617020696E736574732E
		Function ResizableTiledImage(CapInsets as UIEdgeInsets) As AppleImage
		  Declare Function resizableImageWithCapInsets lib UIKitLibname selector "resizableImageWithCapInsets:" (id as ptr, insets as UIEdgeInsets) as ptr
		  return new AppleImage (resizableImageWithCapInsets(id, CapInsets))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resize(NewSize as FoundationFramework.NSSize, proportional as boolean = false, InterpolationQuality as coreGraphicsFramework.CGInterpolationQuality = coreGraphicsFramework.CGInterpolationQuality.default, Scale as double = 0) As AppleImage
		  dim xfactor as double = NewSize.width / Width
		  dim yfactor as double = NewSize.height/Height
		  if proportional then
		    return scale (min(xfactor, yfactor), 0, interpolationquality, scale)
		  else
		    return scale (xfactor, yfactor, interpolationquality, scale)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720696D616765207468617420697320726573697A6564207769746820616C6F6E6720746865207820616E64207920617869732077697468207468652076616C75657320796F752070726F766964652E200A5F595363616C655F203D2030206D616B657320746865207363616C652070726F706F74696F6E616C2E0A205F5363616C655F203D20302074616B657320746865206F726967696E616C20696D6167652773207363616C652070726F706572747920666F7220746865207363616C65206F6620746865206E657720696D6167652E2020
		Function Scale(XScale as double, YScale as Double = 0, interpolationquality as coreGraphicsFramework.CGInterpolationQuality = coreGraphicsFramework.CGInterpolationQuality.Default, scale as double = 0) As AppleImage
		  if YScale = 0 then YScale = XScale
		  dim W as double = me.Width* XScale
		  dim h as double = me.Height* YScale
		  if scale = 0 then scale = AppleScreen.MainScreen.Scale
		  dim frame as FoundationFrameWork.nsrect = FoundationFrameWork.NSMakeRect(0,0,w,h)
		  AppleCGContext.BeginImageContext (frame.size_, false, scale)
		  AppleCGContext.CurrentContext.InterpolationQuality = interpolationquality
		  me.Draw (frame)
		  dim result as AppleImage= AppleCGContext.Getimage
		  AppleCGContext.EndImageContext
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetAlignmentRect(Insets as UIEdgeInsets) As AppleImage
		  Declare Function imageWithAlignmentRectInsets lib UIKitLibname selector "imageWithAlignmentRectInsets:" (id as ptr, insets as UIEdgeInsets) as ptr
		  return new AppleImage (imageWithAlignmentRectInsets(id, Insets))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E732061206E65772076657273696F6E206F662074686520696D61676520746861742075736573207468652073706563696669656420616C69676E6D656E7420696E736574732E
		Function SetInsets(insets as UIEdgeInsets) As AppleImage
		  
		  Declare function imageWithAlignmentRectInsets lib UIKitLibname selector "imageWithAlignmentRectInsets:" (id as ptr, insets as UIEdgeInsets) as ptr
		  return new appleimage (imageWithAlignmentRectInsets ( id, insets))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E657720696D616765206F626A656374207769746820746865207370656369666965642072656E646572696E67206D6F64652E
		Function SetRenderingMode(RenderingMode as UIImageRenderingMode) As AppleImage
		  Declare Function imageWithRenderingMode lib UIKitLibname selector "imageWithRenderingMode:" (id as ptr, RenderingMode as UIImageRenderingMode) as ptr
		  return new AppleImage (imageWithRenderingMode(id, RenderingMode))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function UIImagePNGRepresentation Lib UIKitLibname (UIImage as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub UIImageWriteToSavedPhotosAlbum Lib UIKitLibname (UIImage as Ptr, completion as ptr, completionselector as ptr, contextinfo as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub WriteToPhotoAlbum()
		  dim myDelegate as new iOSLibImageDelegate
		  UIImageWriteToSavedPhotosAlbum (id, myDelegate.id, FoundationFramework.NSSelectorFromString ("wroteToPhotoAlbum:error:context:"), nil)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event PhotoSaved(contextInfo as ptr)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PhotoSaveError(error as AppleError, contextInfo as ptr)
	#tag EndHook


	#tag Note, Name = Status incomplete & documented
		iOS 9.2
		Problem with PaintMethodDelegate: w and h are not reported to the instance.
		ImageAsset must be moved to advanced subclass
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C69676E6D656E74206D65746164617461207573656420746F20706F736974696F6E2074686520696D61676520647572696E67206C61796F75742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function alignmentRectInsets lib UIKitLibname selector "alignmentRectInsets" (id as ptr) as UIEdgeInsets
			  return alignmentRectInsets (id)
			  
			End Get
		#tag EndGetter
		AlignmentRectInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E642D63617020696E736574732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function capInsets lib UIKitLibname selector "capInsets" (id as ptr) as UIEdgeInsets
			  Return capInsets (id)
			  
			End Get
		#tag EndGetter
		CapInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E6465726C79696E672051756172747A20696D61676520646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function CGImage lib UIKitLibname selector "CGImage" (id as ptr) as ptr
			  return  AppleCGImage.MakeFromCFTypeRef ( CGImage (id), true, true)
			  
			End Get
		#tag EndGetter
		CGImage As AppleCGImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E6465726C79696E6720436F726520496D61676520646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  declare function CIImage lib UIKitLibname selector "CIImage" (id as ptr) as ptr
			  return AppleCIImage.MakefromPtr (CIImage(id))
			End Get
		#tag EndGetter
		CIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = nil then targetId = FoundationFramework.NSClassFromString ("UIImage")
			  return targetID
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D6520696E74657276616C207573656420746F20646973706C617920616E20616E696D6174656420696D6167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function duration lib UIKitLibname selector "duration" (id as ptr) as Double
			  return  duration(id)
			End Get
		#tag EndGetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D6167652073686F756C6420666C697020696E20612072696768742D746F2D6C656674206C61796F75742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  const SEL as text = "flipsForRightToLeftLayoutDirection"
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString (SEL)) then
			    Declare function flipsForRightToLeftLayoutDirection lib UIKitLibname selector "flipsForRightToLeftLayoutDirection" (id as ptr) as Boolean
			    return  (flipsForRightToLeftLayoutDirection(id))
			  end if
			  
			End Get
		#tag EndGetter
		FlipsInRightToLeftLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.height
			End Get
		#tag EndGetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7269656E746174696F6E206F662074686520696D6167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function imageOrientation lib UIKitLibname selector "imageOrientation" (id as ptr) as UIImageOrientation
			  return imageOrientation (id)
			  
			End Get
		#tag EndGetter
		ImageOrientation As UIImageOrientation
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 466F7220616E20616E696D6174656420696D6167652C20746869732070726F706572747920686F6C64732074686520636F6D706C657465206172726179206F66204170706C65496D616765732074686174206D616B652075702074686520616E696D6174696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function images lib UIKitLibname selector "images" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (images(id))
			End Get
		#tag EndGetter
		Images As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleData.MakeFromPtr (UIImagePNGRepresentation(id))
			End Get
		#tag EndGetter
		PNGData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 44657465726D696E657320686F7720616E20696D6167652069732072656E64657265642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function renderingMode lib UIKitLibname selector "renderingMode" (id as ptr) as UIImageRenderingMode
			  return renderingMode (id)
			  
			End Get
		#tag EndGetter
		RenderingMode As UIImageRenderingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726573697A696E67206D6F6465206F662074686520696D6167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function resizingMode lib UIKitLibname selector "resizingMode" (id as ptr) as UIImageResizingMode
			  return resizingMode (id)
			  
			End Get
		#tag EndGetter
		ResizingMode As UIImageResizingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C6520666163746F72206F662074686520696D6167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Return UIKitFramework.getscale (id)
			  
			End Get
		#tag EndGetter
		Scale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064696D656E73696F6E73206F662074686520696D6167652C2074616B696E67206F7269656E746174696F6E20696E746F206163636F756E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getSize(mid)
			End Get
		#tag EndGetter
		Size As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return if (id = nil, nil, iOSImage.FromHandle (id))
			End Get
		#tag EndGetter
		toiOSImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520747261697420636F6C6C656374696F6E2074686174206465736372696265732074686520696D6167652E2028726561642D6F6E6C79290A0A
		#tag Getter
			Get
			  if AppleTraitCollection.ClassAvailable then
			    Declare function traitCollection lib UIKitLibname selector "traitCollection" (id as ptr) as ptr
			    return AppleTraitCollection.MakefromPtr (traitCollection(id))
			  end if
			End Get
		#tag EndGetter
		TraitCollection As AppleTraitCollection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.width
			End Get
		#tag EndGetter
		Width As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FlipsInRightToLeftLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageOrientation"
			Group="Behavior"
			Type="UIImageOrientation"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normal"
				"1 - HalfwayRound"
				"2 - QuarterRight"
				"3 - QuarerLeft"
				"4 - UpMirrored"
				"5 - DownMirrored"
				"6 - LeftMirrored"
				"7 - RightMirrored"
			#tag EndEnumValues
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
			Name="RenderingMode"
			Group="Behavior"
			Type="UIImageRenderingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - AlwaysOriginal"
				"2 - AlwaysTemplate"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ResizingMode"
			Group="Behavior"
			Type="UIImageResizingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Tiled"
				"1 - Stretched"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scale"
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
			Name="toiOSImage"
			Group="Behavior"
			Type="iOSImage"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
