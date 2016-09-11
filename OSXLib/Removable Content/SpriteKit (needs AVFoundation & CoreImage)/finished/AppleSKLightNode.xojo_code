#tag Class
Protected Class AppleSKLightNode
Inherits AppleSKNode
	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204C696768744E6F64652E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, own as Boolean) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)))
		  MHAsOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getambientColor Lib SpriteKitLibName Selector "ambientColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfalloff Lib SpriteKitLibName Selector "falloff" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlightColor Lib SpriteKitLibName Selector "lightColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshadowColor Lib SpriteKitLibName Selector "shadowColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setambientColor Lib SpriteKitLibName Selector "setAmbientColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfalloff Lib SpriteKitLibName Selector "setFalloff:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlightColor Lib SpriteKitLibName Selector "setLightColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshadowColor Lib SpriteKitLibName Selector "setShadowColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status Complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6269656E7420636F6C6F72206F6620746865206C696768742E2044656661756C7420426C61636B203D206E6F20616D6269656E7420636F6D706F6E656E742E
		#tag Getter
			Get
			  return  AppleColor.MakefromPtr (getambientColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAmbientColor mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AmbientColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F726965732074686973206C696768742062656C6F6E677320746F2E2044656661756C7420312E
		#tag Getter
			Get
			  return SpriteKitFramework.getcategoryBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setCategoryBitMask mid, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKLightNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206E6F64652069732063617374696E67206C696768742E2044656661756C7420547275652E
		#tag Getter
			Get
			  return AppKitFramework.getenabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setenabled mid, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206578706F6E656E7420666F72207468652072617465206F66206465636179206F6620746865206C6967687420736F757263652E2044656661756C7420312E30203D206D61782E
		#tag Getter
			Get
			  return getfalloff (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFalloff mid, value
			  
			End Set
		#tag EndSetter
		Falloff As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206469666675736520616E642073706563756C617220636F6C6F72206F6620746865206C6967687420736F757263652E2044456661756C74205768697465
		#tag Getter
			Get
			  return  AppleColor.MakefromPtr (getlightColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setLightColor mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		LightColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F6620616E7920736861646F7720636173742062792061207370726974652E2044656661756C7420426C61636B207769746820616C70686120302E352E
		#tag Getter
			Get
			  return  AppleColor.MakefromPtr (getshadowColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShadowColor mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ShadowColor As AppleColor
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Falloff"
			Group="Behavior"
			Type="Double"
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
