#tag Class
Protected Class AppleSKSpriteNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(acolor as AppleColor, aSize as FoundationFramework.NSSize)
		  #if Target64Bit
		    declare Function initWithColor lib spritekitlibname selector "initWithColor:size:" (id as ptr, acolor as ptr, asize as FoundationFramework.NSSize) as ptr
		    super.Constructor (initWithColor (Alloc(ClassPtr), acolor.id, asize))
		  #elseif Target32Bit
		    declare Function initWithColor lib spritekitlibname selector "initWithColor:size:" (id as ptr, acolor as ptr, asize as FoundationFramework.NSSize32Bit) as ptr
		    super.Constructor (initWithColor (Alloc(ClassPtr), acolor.id, asize.toNSSize32))
		  #endif
		  mhasownership = true
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture)
		  Declare function initWithTexture lib spritekitlibname selector "initWithTexture:" (id as ptr, texture as Ptr) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithTexture (alloc(classptr), texture.id))
		  Mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture, aColor as AppleColor, size as FoundationFramework.NSSize)
		  #if Target64Bit
		    Declare function initWithTextureColorSize lib spritekitlibname selector "initWithTexture:color:size:" (id as ptr, texture as Ptr, acolor as ptr, size as FoundationFramework.NSSize) as ptr
		    Super.Constructor (initWithTextureColorSize (alloc(classptr), texture.id, acolor.id, size))
		  #elseif Target32Bit
		    Declare function initWithTextureColorSize lib spritekitlibname selector "initWithTexture:color:size:" (id as ptr, texture as Ptr, acolor as ptr, size as FoundationFramework.NSSize32Bit) as ptr
		    Super.Constructor (initWithTextureColorSize (alloc(classptr), texture.id, acolor.id, size.toNSSize32))
		  #endif
		  MHasOwnership = true
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture, NormalMap as AppleSKTexture)
		  Declare function spriteNodeWithTextureNormal lib spritekitlibname selector "spriteNodeWithTexture:normalMap:" (id as ptr, texture as Ptr, normalmap as ptr) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (spriteNodeWithTextureNormal (classptr, texture.id, NormalMap.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture, size as FoundationFramework.NSSize)
		  #if Target64Bit
		    Declare function spriteNodeWithTextureSize lib spritekitlibname selector "spriteNodeWithTexture:size:" (id as ptr, texture as Ptr, size as FoundationFramework.NSSize) as ptr
		    Super.Constructor (spriteNodeWithTextureSize (classptr, texture.id, size))
		  #elseif Target32Bit
		    Declare function spriteNodeWithTextureSize lib spritekitlibname selector "spriteNodeWithTexture:size:" (id as ptr, texture as Ptr,  size as FoundationFramework.NSSize32Bit) as ptr
		    Super.Constructor (spriteNodeWithTextureSize (classptr, texture.id, size.toNSSize32))
		  #endif
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ImageName as CFStringRef, GenerateNormalMap as Boolean = false)
		  Declare function spriteNodeWithImageNamed lib spritekitlibname selector "spriteNodeWithImageNamed:normalMapped:" (id as ptr, imagename as CFStringRef, normalMapped as Boolean) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (spriteNodeWithImageNamed (classptr, ImageName, GenerateNormalMap))
		  RetainClassObject
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E7420696E207468652076696577E2809973206672616D65207468617420636F72726573706F6E647320746F20746865207363656E65E2809973206F726967696E2E
		#tag Getter
			Get
			  return SpriteKitFramework.getanchorPoint (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setanchorPoint mid,value
			End Set
		#tag EndSetter
		AnchorPoint As FoundationFrameWork.NSpoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6162656CE280997320626C656E6420636F6C6F722E
		#tag Getter
			Get
			  return AppleColor.MakefromPtr (SpriteKitFramework.getColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setColor mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BlendColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C656E64206D6F6465207573656420746F20626C656E642074686520736861706520696E746F2074686520706172656E74E2809973206672616D656275666665722E2044656661756C7420416C7068612E
		#tag Getter
			Get
			  return getBlendMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBlendMode mid, value
			End Set
		#tag EndSetter
		BlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return SpriteKitFramework.getCenterRect (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setcenterrect mid, value
			End Set
		#tag EndSetter
		CenterRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKSpriteNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return SpriteKitFramework.getColorBlendFactor (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setColorBlendfactor mid, value
			End Set
		#tag EndSetter
		ColorBlendFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function lightingBitMask lib spritekitlibname selector "lightingBitMask" (id as ptr) as UInt32
			  return lightingBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setLightingBitMask lib spritekitlibname selector "setLightingBitMask:" (id as ptr, value as UInt32)
			  setLightingBitMask id, value
			End Set
		#tag EndSetter
		LightingBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function normalTexture lib spritekitlibname selector "normalTexture" (id as ptr) as ptr
			  return AppleSKTexture.MakefromPtr (normalTexture(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setNormalTexture lib spritekitlibname selector "setNormalTexture:" (id as ptr, value as ptr)
			  setNormalTexture id, value.id
			End Set
		#tag EndSetter
		NormalTexture As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function shader lib spritekitlibname selector "shader" (id as ptr) as ptr
			  return AppleSKShader.MakeFromPtr (shader (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShader lib spritekitlibname selector "setShader:" (id as ptr, value as ptr)
			  setShader id, value.id
			  
			End Set
		#tag EndSetter
		Shader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function shadowCastBitMask lib spritekitlibname selector "shadowCastBitMask" (id as ptr) as UInt32
			  return shadowCastBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShadowCastBitMask lib spritekitlibname selector "setShadowCastBitMask:" (id as ptr, value as UInt32)
			  setShadowCastBitMask id, value
			End Set
		#tag EndSetter
		ShadowCastBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function shadowedBitMask lib spritekitlibname selector "shadowedBitMask" (id as ptr) as UInt32
			  return shadowedBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShadowedBitMask lib spritekitlibname selector "setShadowedBitMask:" (id as ptr, value as UInt32)
			  setShadowedBitMask id, value
			End Set
		#tag EndSetter
		ShadowedBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.getSize (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setSize mid, value
			End Set
		#tag EndSetter
		Size As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function texture lib spritekitlibname selector "texture" (id as ptr) as ptr
			  return AppleSKTexture.MakefromPtr (texture(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTexture lib spritekitlibname selector "setTexture:" (id as ptr, value as ptr)
			  setTexture id, value.id
			End Set
		#tag EndSetter
		Texture As AppleSKTexture
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorBlendFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
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
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
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
			Name="LightingBitMask"
			Group="Behavior"
			Type="UInt32"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowCastBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowedBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
