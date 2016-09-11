#tag Class
 Attributes ( incomplete ) Protected Class AppleSKTexture
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub CompletionBlock()
		  if self <> nil then RaiseEvent TextureLoaded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174652061206E65772074657874757265206F626A6563742066726F6D20612051756172747A20324420696D6167652E
		Sub Constructor(anImage as AppleCGImage)
		  super.Constructor (textureWithCGImage (ClassPtr, animage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E65772074657874757265206279206170706C79696E67206120436F726520496D6167652066696C74657220746F20616E206578697374696E6720746578747572652E
		Sub Constructor(Filter as AppleCIFilter)
		  super.Constructor (textureByApplyingCIFilter (alloc(ClassPtr), filter.id), true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720746578747572652066726F6D2072617720706978656C20646174612E
		Sub Constructor(data as appledata, size as FoundationFrameWork.NSSize)
		  super.Constructor (textureWithDataSize (ClassPtr, data.id, size))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720746578747572652066726F6D2072617720706978656C20646174612C206F7074696F6E616C6C7920766572746963616C6C7920666C69707065642E
		Sub Constructor(data as appledata, size as FoundationFrameWork.NSSize, flipped as boolean)
		  super.Constructor (textureWithDataSizeflipped (ClassPtr, data.id, size, flipped))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720746578747572652066726F6D20637573746F6D20666F726D61747465642072617720706978656C20646174612E
		Sub Constructor(data as appledata, size as FoundationFrameWork.NSSize, rowlength as Uinteger, Alignment As UInteger)
		  super.Constructor (textureWithDataSizerowLength (ClassPtr, data.id, size, rowlength, Alignment))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174652061206E65772074657874757265206F626A6563742066726F6D20616E20696D616765206F626A6563742E
		Sub Constructor(anImage as AppleImage)
		  super.Constructor (textureWithImage (ClassPtr, animage.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720746578747572652066726F6D206120737562736574206F6620616E206578697374696E6720746578747572652E
		Sub Constructor(aTexture as AppleSKTexture, aRect as FoundationFramework.NSRect)
		  super.Constructor (textureWithRect (ClassPtr, arect, aTexture.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174652061206E65772074657874757265206F626A6563742066726F6D20616E20696D6167652066696C652073746F72656420696E20746865206170702062756E646C652E
		Sub Constructor(imagename as CFStringRef)
		  super.Constructor (textureWithImageNamed (ClassPtr, imagename))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getCGImage Lib SpriteKitLibName Selector "CGImage" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfilteringMode Lib SpriteKitLibName Selector "filteringMode" (id as ptr) As SKTextureFilteringMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextureRect Lib SpriteKitLibName Selector "textureRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesMipmaps Lib SpriteKitLibName Selector "usesMipmaps" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKTexture
		  return if (aptr = nil, nil, new AppleSKTexture(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720746578747572652077686F736520636F6E74656E7473206172652070726F6365647572616C6C792067656E65726174656420646972656374696F6E616C206E6F69736520646174612E
		Shared Function NoiseTexture(Smoothness as Double, Size as FoundationFramework.NSSize) As AppleSKTexture
		  dim result as AppleSKTexture
		  result =  new AppleSKTexture (textureVectorNoiseWithSmoothness (ClassPtr, Smoothness, Size))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720746578747572652077686F736520636F6E74656E7473206172652070726F6365647572616C6C792067656E65726174656420636F6C6F726564206E6F69736520646174612E
		Shared Function NoiseTexture(Smoothness as Double, Size as FoundationFramework.NSSize, grayscale as boolean) As AppleSKTexture
		  dim result as AppleSKTexture
		  result =  new AppleSKTexture (textureVectorNoiseWithSmoothnessGRayScale (ClassPtr, Smoothness, Size, grayscale))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520746578747572652061732061206E6F726D616C206D617020746578747572652C2077697468206164646974696F6E616C20736D6F6F74686E65737320616E6420636F6E7472617374206C6576656C732E
		Function NormalMap(Smoothness As Double, Contrast As Double) As AppleSKTexture
		  return AppleSKTexture.MakefromPtr (textureByGeneratingNormalMapWithSmoothness(mid, Smoothness, Contrast))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F6164207468652074657874757265206461746120696E746F206D656D6F72792C2063616C6C696E67206120636F6D706C6574696F6E2068616E646C657220616674657220746865207461736B20636F6D706C657465732E
		Sub Preload(Block As AppleBlock = nil)
		  if block = nil then block =  new AppleBlock (AddressOf CompletionBlock)
		  preloadWithCompletionHandler mid, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F61642074686520746578747572652064617461206F66206D756C7469706C6520746578747572657320696E746F206D656D6F72792E2054686520626C6F636B20746861742077696C6C206265206578656375746564206166746572206C6F6164696E67206D7573742074616B6520616E642072657475726E206E6F2070726F706572746965732E
		Shared Sub PreloadTextures(textures as AppleArray, block as appleblock)
		  preloadTexturesWithCompletionHandler ( classptr, textures.id, block.Handle)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub preloadTexturesWithCompletionHandler Lib SpriteKitLibName Selector "preloadTextures:withCompletionHandler:" (id as ptr, textures as ptr, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub preloadWithCompletionHandler Lib SpriteKitLibName Selector "preloadWithCompletionHandler:" (id as ptr, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfilteringMode Lib SpriteKitLibName Selector "setFilteringMode:" (id as ptr, value as SKTextureFilteringMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesMipmaps Lib SpriteKitLibName Selector "setUsesMipmaps:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function TextureArray(paramarray Images() as Text) As AppleMutableArray
		  dim count as uinteger = Images.Ubound
		  dim myarray as new AppleMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.Addobject new AppleSKTexture(images(q))
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureByApplyingCIFilter Lib SpriteKitLibName Selector "textureByApplyingCIFilter:" (id as ptr, filter as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureByGeneratingNormalMap Lib SpriteKitLibName Selector "textureByGeneratingNormalMap" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureByGeneratingNormalMapWithSmoothness Lib SpriteKitLibName Selector "textureByGeneratingNormalMapWithSmoothness:contrast:" (id as ptr, smoothness as CGFloat, contrast as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureVectorNoiseWithSmoothness Lib SpriteKitLibName Selector "textureVectorNoiseWithSmoothness:size:" (id as ptr, smoothness as CGFloat, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureVectorNoiseWithSmoothnessGRayScale Lib SpriteKitLibName Selector "textureVectorNoiseWithSmoothness:size:grayscale:" (id as ptr, smoothness as CGFloat, size as FoundationFrameWork . NSSize, gray as Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureWithCGImage Lib SpriteKitLibName Selector "textureWithCGImage:" (id as ptr, data as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureWithDataSize Lib SpriteKitLibName Selector "textureWithData:size:" (id as ptr, data as ptr, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureWithDataSizeflipped Lib SpriteKitLibName Selector "textureWithData:size:flipped:" (id as ptr, data as ptr, size as FoundationFrameWork . NSSize, flipped as Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureWithDataSizerowLength Lib SpriteKitLibName Selector "textureWithData:size:rowLength:alignment:" (id as ptr, data as ptr, size as FoundationFrameWork . NSSize, rowlength as uinteger, alignment as uinteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureWithImage Lib SpriteKitLibName Selector "textureWithImage:" (id as ptr, image as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureWithImageNamed Lib SpriteKitLibName Selector "textureWithImageNamed:" (id as ptr, name as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function textureWithRect Lib SpriteKitLibName Selector "textureWithRect:inTexture:" (id as ptr, rect as FoundationFrameWork . NSRect, Texture as Ptr) As Ptr
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event TextureLoaded()
	#tag EndHook


	#tag Note, Name = Untitled
		
		NoiseMap missing (GKNoise)
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKTexture")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C746572696E67206D6F64652075736564207768656E207468652073697A65206F6620612073707269746520647261776E2077697468207468652074657874757265206973206E6F7420647261776E206174207468652074657874757265E2809973206E61746976652073697A652E2044656661756C74204C696E6561722E
		#tag Getter
			Get
			  return getfilteringMode (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFilteringMode mid, value
			  
			End Set
		#tag EndSetter
		FilteringMode As SKTextureFilteringMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746578747572652061732061206E6F726D616C206D617020746578747572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKTexture.MakefromPtr (textureByGeneratingNormalMap(mid))
			End Get
		#tag EndGetter
		NormalMap As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520746578747572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getSize (mid)
			End Get
		#tag EndGetter
		Size As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412072656374616E676C65207468617420646566696E65732074686520706F7274696F6E206F66207468652074657874757265207573656420746F2072656E6465722069747320696D6167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return gettextureRect (mid)
			  
			End Get
		#tag EndGetter
		TextureRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074657874757265E280997320696D616765206461746120617320612051756172747A20324420696D6167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new applecgimage (getCGImage(mid))
			End Get
		#tag EndGetter
		toCGImage As Applecgimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207465787475726520617474656D70747320746F2067656E6572617465206D69706D6170732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getusesMipmaps (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUsesMipmaps mid, value
			  
			End Set
		#tag EndSetter
		UsesMipMaps As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = SKTextureFilteringMode, Type = Integer, Flags = &h0
		Nearest
		Linear
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FilteringMode"
			Group="Behavior"
			Type="SKTextureFilteringMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Nearest"
				"1 - Linear"
			#tag EndEnumValues
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
		#tag ViewProperty
			Name="UsesMipMaps"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
