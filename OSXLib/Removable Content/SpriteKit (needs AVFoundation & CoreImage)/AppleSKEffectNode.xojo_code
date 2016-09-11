#tag Class
Protected Class AppleSKEffectNode
Inherits AppleSKNode
	#tag Method, Flags = &h0, Description = 437265617465732061206E6577206566666563746E6F6465
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(alloc(init(classptr)),true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfilter Lib SpriteKitLibName Selector "filter" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldCenterFilter Lib SpriteKitLibName Selector "shouldCenterFilter" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldEnableEffects Lib SpriteKitLibName Selector "shouldEnableEffects" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldRasterize Lib SpriteKitLibName Selector "shouldRasterize" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfilter Lib SpriteKitLibName Selector "setFilter:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldCenterFilter Lib SpriteKitLibName Selector "setShouldCenterFilter:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldEnableEffects Lib SpriteKitLibName Selector "setShouldEnableEffects:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldRasterize Lib SpriteKitLibName Selector "setShouldRasterize:;" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		SKWarpable missing, rest macOS 10.12.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520626C656E64206D6F6465207573656420746F2064726177207468652066696C746572656420696D61676520696E746F2074686520706172656E74E2809973206672616D656275666665722E2044656661756C7420416C7068612E
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

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520656666656374206E6F6465206175746F6D61746963616C6C792073657473207468652066696C746572E280997320696D6167652063656E7465722E
		#tag Getter
			Get
			  return getshouldCenterFilter (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshouldCenterFilter mid, value
			End Set
		#tag EndSetter
		CenterFilter As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKEffectNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520656666656374206E6F6465206170706C696573207468652066696C74657220746F20697473206368696C6472656E20617320746865792061726520647261776E2E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getshouldEnableEffects (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshouldEnableEffects mid, value
			End Set
		#tag EndSetter
		EnableEffects As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520436F726520496D6167652066696C74657220746F206170706C792E
		#tag Getter
			Get
			  return AppleCIFilter.MakefromPtr (getfilter(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfilter mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Filter As AppleCIFilter
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 776865746865722074686520726573756C7473206F662072656E646572696E6720746865206368696C64206E6F6465732073686F756C64206265206361636865642E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getshouldRasterize (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshouldRasterize mid, value
			End Set
		#tag EndSetter
		Rasterize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120637573746F6D2073686164657220746861742069732063616C6C6564207768656E2074686520656666656374206E6F646520697320626C656E64656420696E746F2074686520706172656E74E2809973206672616D656275666665722E
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


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
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
