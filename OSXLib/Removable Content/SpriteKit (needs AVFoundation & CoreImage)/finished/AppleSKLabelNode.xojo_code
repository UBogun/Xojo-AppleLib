#tag Class
Protected Class AppleSKLabelNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577204C6162656C4E6F6465207769746820616E20696E697469616C2063617074696F6E20616E642066726F6D20616E206F7074696F6E616C20666F6E742E
		Sub Constructor(aText as CFStringRef, FontName as cfstringRef = "")
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if FontName <> "" then
		    Super.Constructor (labelNodeWithFontNamed(ClassPtr, FontName))
		    Caption = aText
		  else
		    Super.Constructor (labelNodeWithText(ClassPtr, aText))
		  end if
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FontColor(assigns aColor as Color)
		  me.FontColor = new AppleColor(aColor)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfontColor Lib SpriteKitLibName Selector "fontColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfontName Lib SpriteKitLibName Selector "fontName" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfontSize Lib SpriteKitLibName Selector "fontSize" (id as ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethorizontalAlignmentMode Lib SpriteKitLibName Selector "horizontalAlignmentMode" (id as ptr) As SKLabelHorizontalAlignmentMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getText Lib SpriteKitLibName Selector "text" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalAlignmentMode Lib SpriteKitLibName Selector "verticalAlignmentMode" (id as ptr) As SKLabelVerticalAlignmentMode
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577206C6162656C206F626A656374207769746820736F6D6520696E697469616C20746578742E
		Shared Function LabelNodeWithFont(Fontname As CFStringRef) As AppleSKLabelNode
		  dim result as new AppleSKLabelNode(labelNodeWithFontNamed(classptr, Fontname))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function labelNodeWithFontNamed Lib SpriteKitLibName Selector "labelNodeWithFontNamed:" (id as ptr, Fontname As CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577206C6162656C206F626A656374207769746820736F6D6520696E697469616C20746578742E
		Shared Function LabelNodeWithText(aText As CFStringRef) As AppleSKLabelNode
		  dim result as new AppleSKLabelNode(LabelNodeWithText(classptr, aText))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function labelNodeWithText Lib SpriteKitLibName Selector "labelNodeWithText:" (id as ptr, aText As CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfontColor Lib SpriteKitLibName Selector "setFontColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfontName Lib SpriteKitLibName Selector "setFontName:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfontSize Lib SpriteKitLibName Selector "setFontSize:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethorizontalAlignmentMode Lib SpriteKitLibName Selector "setHorizontalAlignmentMode:" (id as ptr, value as SKLabelHorizontalAlignmentMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setText Lib SpriteKitLibName Selector "setText:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setverticalAlignmentMode Lib SpriteKitLibName Selector "setVerticalAlignmentMode:" (id as ptr, value as SKLabelVerticalAlignmentMode)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


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

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C656E64206D6F6465207573656420746F206472617720746865206C6162656C20696E746F2074686520706172656E74E2809973206672616D656275666665722E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E67207468617420746865206C6162656C206E6F646520646973706C6179732E
		#tag Getter
			Get
			  return getText (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setText mid, value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKLabelNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666C6F6174696E672D706F696E742076616C756520746861742064657363726962657320686F772074686520636F6C6F7220697320626C656E64656420776974682074686520666F6E7420636F6C6F722E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F6620746865206C6162656C2E
		#tag Getter
			Get
			  return  AppleColor.MakefromPtr (getfontColor (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFontColor mid, value.id
			End Set
		#tag EndSetter
		FontColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74207573656420666F7220746865207465787420696E20746865206C6162656C2E
		#tag Getter
			Get
			  return getfontName (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFontName mid, value
			End Set
		#tag EndSetter
		FontName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520666F6E74207573656420696E20746865206C6162656C2E2044656661756C742033322070742E
		#tag Getter
			Get
			  return getFontSize (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfontSize mid, value
			End Set
		#tag EndSetter
		FontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686F72697A6F6E74616C20706F736974696F6E206F662074686520746578742072656C617469766520746F20746865206E6F6465E280997320706F736974696F6E2E
		#tag Getter
			Get
			  return gethorizontalAlignmentMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setHorizontalAlignmentMode mid, value
			End Set
		#tag EndSetter
		HorizontalAlignment As SKLabelHorizontalAlignmentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520766572746963616C20706F736974696F6E206F662074686520746578742072656C617469766520746F20746865206E6F6465E280997320706F736974696F6E2E
		#tag Getter
			Get
			  return getverticalAlignmentMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setVerticalAlignmentMode mid, value
			End Set
		#tag EndSetter
		VerticalAlignment As SKLabelVerticalAlignmentMode
	#tag EndComputedProperty


	#tag Enum, Name = SKLabelHorizontalAlignmentMode, Type = Integer, Flags = &h0
		Center
		  Left
		Right
	#tag EndEnum

	#tag Enum, Name = SKLabelVerticalAlignmentMode, Type = Integer, Flags = &h0
		Baseline
		  Center
		  Top
		Bottom
	#tag EndEnum


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
			Name="Caption"
			Group="Behavior"
			Type="Text"
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
			Name="FontName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
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
			Name="HorizontalAlignment"
			Group="Behavior"
			Type="SKLabelHorizontalAlignmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
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
			Name="VerticalAlignment"
			Group="Behavior"
			Type="SKLabelVerticalAlignmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Baseline"
				"1 - Center"
				"2 - Top"
				"3 - Bottom"
			#tag EndEnumValues
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
