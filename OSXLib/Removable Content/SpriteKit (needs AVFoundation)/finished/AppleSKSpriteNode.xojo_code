#tag Class
Protected Class AppleSKSpriteNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120636F6C6F726564207370726974652E
		Sub Constructor(acolor as AppleColor, aSize as FoundationFramework.NSSize)
		  super.Constructor (initWithColor (Alloc(ClassPtr), acolor.id, asize))
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120746578747572656420737072697465207573696E6720616E206578697374696E672074657874757265206F626A6563742E
		Sub Constructor(texture as AppleSKTexture)
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

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120636F6C6F72656420616E6420746578747572656420737072697465207573696E6720616E206578697374696E672074657874757265206F626A6563742E
		Sub Constructor(texture as AppleSKTexture, aColor as AppleColor, size as FoundationFramework.NSSize)
		  Super.Constructor (initWithTextureColor (alloc(classptr), texture.id, acolor.id, size))
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

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320612074657874757265642073707269746520776974682061206E6F726D616C206D617020746F2073696D756C617465203344206C69676874696E67
		Sub Constructor(texture as AppleSKTexture, NormalMap as AppleSKTexture)
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

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120746578747572656420737072697465207573696E6720616E206578697374696E672074657874757265206F626A6563742062757420776974682061207370656369666965642073697A652E
		Sub Constructor(texture as AppleSKTexture, size as FoundationFramework.NSSize)
		  Super.Constructor (spriteNodeWithTextureSize (classptr, texture.id, size))
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

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120746578747572656420737072697465207573696E6720616E20696D6167652066696C652C206F7074696F6E616C6C792067656E65726174696E672061206E6F726D616C206D61702066726F6D2074686520696D616765207465787475726520776974686F7574206170706C79696E6720616E792066696C74657220746F2069742E
		Sub Constructor(ImageName as CFStringRef, NormalMapped As Boolean = False)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (spriteNodeWithImageNamed (classptr, ImageName, NormalMapped))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithColor Lib SpriteKitLibName Selector "initWithColor:size:" (id as ptr, acolor as ptr, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithTexture Lib SpriteKitLibName Selector "initWithTexture:" (id as ptr, texture as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithTextureColor Lib SpriteKitLibName Selector "initWithTexture:color:size:" (id as ptr, texture as ptr, acolor as ptr, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5343616C6573207468652053707269746520746F2061207370656369666965642073697A652E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Sub ScaleToSize(Size as FoundationFrameWork.NSSize)
		  if RespondsToSelector ("scaleToSize", classptr) then scaleToSize mid, Size
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function spriteNodeWithImageNamed Lib SpriteKitLibName Selector "spriteNodeWithImageNamed:normalMapped:" (id as ptr, imagename as CFStringRef, normal as Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function spriteNodeWithTextureNormal Lib SpriteKitLibName Selector "spriteNodeWithTexture:normalMap:" (id as ptr, Texture as Ptr, normal as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function spriteNodeWithTextureSize Lib SpriteKitLibName Selector "spriteNodeWithTexture:size:" (id as ptr, texture as ptr, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 446566696E65732074686520706F696E7420696E2074686520737072697465207468617420636F72726573706F6E647320746F20746865206E6F6465E280997320706F736974696F6E2E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520737072697465E280997320636F6C6F722E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C656E64206D6F6465207573656420746F2064726177207468652073707269746520696E746F2074686520706172656E74E2809973206672616D656275666665722E
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

	#tag ComputedProperty, Flags = &h0, Description = 412070726F7065727479207468617420646566696E657320686F77207468652074657874757265206973206170706C69656420746F20746865207370726974652E
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

	#tag ComputedProperty, Flags = &h0, Description = 4120666C6F6174696E672D706F696E742076616C756520746861742064657363726962657320686F772074686520636F6C6F7220697320626C656E64656420776974682074686520737072697465E280997320746578747572652E
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

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E657320686F77207468697320737072697465206973206C6974206279206C69676874206E6F64657320696E20746865207363656E65732E
		#tag Getter
			Get
			  return getlightingBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setLightingBitMask mid, value
			End Set
		#tag EndSetter
		LightingBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207465787475726520746861742073706563696669657320746865206E6F726D616C206D617020666F7220746865207370726974652E
		#tag Getter
			Get
			  return AppleSKTexture.MakefromPtr (getnormalTexture(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setNormalTexture mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		NormalTexture As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070726F706572747920746861742064657465726D696E6573207768657468657220746865207370726974652069732072656E6465726564207573696E67206120637573746F6D207368616465722E
		#tag Getter
			Get
			  return AppleSKShader.MakeFromPtr (getshader (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShader mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		Shader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E6573207768696368206C696768747320617265206F63636C756465642062792074686973207370726974652E
		#tag Getter
			Get
			  return getshadowCastBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShadowCastBitMask mid, value
			End Set
		#tag EndSetter
		ShadowCastBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E6573207768696368206C696768747320616464206164646974696F6E616C20736861646F777320746F20746865207370726974652E
		#tag Getter
			Get
			  return getshadowedBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShadowedBitMask mid, value
			End Set
		#tag EndSetter
		ShadowedBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064696D656E73696F6E73206F6620746865207370726974652C20696E20706F696E74732E
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652074657874757265207573656420746F206472617720746865207370726974652E
		#tag Getter
			Get
			  return AppleSKTexture.MakefromPtr (SpriteKitFramework.gettexture(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setTexture mid, value.id
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
