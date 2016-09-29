#tag Class
Protected Class AppleLabel
Inherits AppleView
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206C6162656C2077697468207468652073656C65637465642064696D656E73696F6E732E
		Sub Constructor(Rect as FoundationFramework.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (UIKitFramework.initWithFrame(Alloc(classptr), rect), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getallowsDefaultTighteningForTruncation Lib uikitlibname Selector "allowsDefaultTighteningForTruncation" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function gettextRectForBounds Lib uikitlibname Selector "textRectForBounds:limitedToNumberOfLines:" (id as ptr, bounds as foundationframework . nsrect, Lines as Integer) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleLabel
		  return if (aptr = nil, nil, new AppleLabel(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setallowsDefaultTighteningForTruncation Lib uikitlibname Selector "setAllowsDefaultTighteningForTruncation:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6D70757465642064726177696E672072656374616E676C6520666F7220746865206C6162656CE280997320746578742E
		Function TextRectForBounds(bounds as FoundationFrameWork.nsrect, lines as integer) As FoundationFrameWork.nsrect
		  return gettextRectForBounds(id, bounds, lines)
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		iOS 9.2.
		No custom class, no event integration.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520666F6E742073697A652073686F756C64206265207265647563656420696E206F7264657220746F2066697420746865207469746C6520737472696E6720696E746F20746865206C6162656CE280997320626F756E64696E672072656374616E676C652E
		#tag Getter
			Get
			  Return UIKitFramework.getAdjustsFontSizeToFitWidth (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setAdjustsFontSizeToFitWidth mid, value
			End Set
		#tag EndSetter
		AdjustsFontSizeToFitWidth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206C6162656C207469676874656E732074657874206265666F7265207472756E636174696E672E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector( "allowsDefaultTighteningForTruncation", classptr) then
			    Return getallowsDefaultTighteningForTruncation(mid)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector( "setAllowsDefaultTighteningForTruncation:", classptr ) then
			    setallowsDefaultTighteningForTruncation mid, value
			  end if
			End Set
		#tag EndSetter
		AllowsDefaultTighteningForTruncation As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C6564207465787420646973706C6179656420627920746865206C6162656C2E
		#tag Getter
			Get
			  Return AppleAttributedString.MakeFromPtr(UIKitFramework.getAttributedText (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setAttributedText mid, NilPtr(value)
			End Set
		#tag EndSetter
		AttributedCaption As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F77207465787420626173656C696E6573206172652061646A7573746564207768656E2074657874206E6565647320746F20736872696E6B20746F2066697420696E20746865206C6162656C2E
		#tag Getter
			Get
			  Declare function baselineAdjustment lib UIKitLibname selector "baselineAdjustment" (id as ptr) as UIBaselineAdjustment
			  return baselineAdjustment (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setBaselineAdjustment lib UIKitLibname selector "setBaselineAdjustment:" (id as ptr, value as UIBaselineAdjustment)
			  setBaselineAdjustment id, value
			End Set
		#tag EndSetter
		BaselineAdjustment As UIBaselineAdjustment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420646973706C6179656420627920746865206C6162656C2E
		#tag Getter
			Get
			  Return UIKitFramework.GetText (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setText mid, value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UILabel")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E61626C656420737461746520746F20757365207768656E2064726177696E6720746865206C6162656CE280997320746578742E
		#tag Getter
			Get
			  return UIKitFramework.getenabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.SetEnabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74206F662074686520746578742E
		#tag Getter
			Get
			  return AppleFont.MakefromPtr(UIKitFramework.getFont(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setfont mid, NilPtr(value)
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C2073686F756C6420626520647261776E2077697468206120686967686C696768742E
		#tag Getter
			Get
			  Declare function isHighlighted lib UIKitLibname selector "isHighlighted" (id as ptr) as Boolean
			  return isHighlighted (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setHighlighted lib UIKitLibname selector "setHighlighted:" (id as ptr, value as Boolean)
			  setHighlighted id, value
			End Set
		#tag EndSetter
		Highlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686967686C6967687420636F6C6F72206170706C69656420746F20746865206C6162656CE280997320746578742E
		#tag Getter
			Get
			  Declare function highlightedTextColor lib UIKitLibname selector "highlightedTextColor" (id as ptr) as ptr
			  return AppleColor.MakeFromPtr (highlightedTextColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setHighlightedTextColor lib UIKitLibname selector "setHighlightedTextColor:" (id as ptr, value as ptr)
			  setHighlightedTextColor id, value.id
			End Set
		#tag EndSetter
		HighlightedTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746563686E6971756520746F2075736520666F72207772617070696E6720616E64207472756E636174696E6720746865206C6162656CE280997320746578742E
		#tag Getter
			Get
			  Declare function lineBreakMode lib UIKitLibname selector "lineBreakMode" (id as ptr) as NSLineBreakMode
			  return lineBreakMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLineBreakMode lib UIKitLibname selector "setLineBreakMode:" (id as ptr, value as NSLineBreakMode)
			  setLineBreakMode id, value
			End Set
		#tag EndSetter
		LineBreakMode As NSLineBreakMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D207363616C6520666163746F7220737570706F7274656420666F7220746865206C6162656CE280997320746578742E
		#tag Getter
			Get
			  #if Target64Bit
			    declare function MinimumScaleFactor lib FoundationLibName  selector "minimumScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function MinimumScaleFactor lib FoundationLibName  selector "minimumScaleFactor" (id as ptr) as single
			  #endif
			  return MinimumScaleFactor (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setMinimumScaleFactor lib FoundationLibName  selector "setMinimumScaleFactor:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare Sub setMinimumScaleFactor lib FoundationLibName  selector "setMinimumScaleFactor:" (id as ptr, value as single)
			  #endif
			  setMinimumScaleFactor (id, value)
			End Set
		#tag EndSetter
		MinimumScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F66206C696E657320746F2075736520666F722072656E646572696E6720746578742E2044656661756C74203D20312E20556E6C696D69746564203D20302E
		#tag Getter
			Get
			  Declare function numberOfLines lib UIKitLibname selector "numberOfLines" (id as ptr) as Integer
			  return numberOfLines (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setNumberOfLines lib UIKitLibname selector "setNumberOfLines:" (id as ptr, value as integer)
			  setNumberOfLines id, value
			End Set
		#tag EndSetter
		NumberOfLines As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520707265666572726564206D6178696D756D2077696474682028696E20706F696E74732920666F722061206D756C74696C696E65206C6162656C2E
		#tag Getter
			Get
			  #if Target64Bit
			    declare function preferredMaxLayoutWidth lib FoundationLibName  selector "preferredMaxLayoutWidth" (id as ptr) as double
			  #elseif Target32Bit
			    declare function preferredMaxLayoutWidth lib FoundationLibName  selector "preferredMaxLayoutWidth" (id as ptr) as single
			  #endif
			  return preferredMaxLayoutWidth (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setPreferredMaxLayoutWidth lib FoundationLibName  selector "setPreferredMaxLayoutWidth:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare Sub setPreferredMaxLayoutWidth lib FoundationLibName  selector "setPreferredMaxLayoutWidth:" (id as ptr, value as single)
			  #endif
			  setPreferredMaxLayoutWidth (id, value)
			End Set
		#tag EndSetter
		PreferredMaxLayoutWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736861646F7720636F6C6F72206F662074686520746578742E
		#tag Getter
			Get
			  Declare function shadowColor lib UIKitLibname selector "shadowColor" (id as ptr) as ptr
			  return  AppleColor.MakeFromPtr (shadowColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setShadowColor lib UIKitLibname selector "setShadowColor:" (id as ptr, value as ptr)
			  setShadowColor id, value.id
			End Set
		#tag EndSetter
		ShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736861646F77206F666673657420286D6561737572656420696E20706F696E74732920666F722074686520746578742E
		#tag Getter
			Get
			  DEclare Function shadowOffset lib UIKitLibname selector "shadowOffset" (id as ptr) as FoundationFramework.NSSize
			  return shadowOffset (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShadowOffset lib UIKitLibname selector "setShadowOffset:" (id as ptr, value as FoundationFramework.NSSize)
			  setShadowOffset id, value
			  
			End Set
		#tag EndSetter
		ShadowOffset As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746563686E6971756520746F2075736520666F7220616C69676E696E672074686520746578742E
		#tag Getter
			Get
			  return UIKitFramework.gettextAlignment(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setTextAlignment mid, value
			End Set
		#tag EndSetter
		TextAlignment As appletextfield.NSTextAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520746578742E
		#tag Getter
			Get
			  return applecolor.MakeFromPtr(UIKitFramework.getTextColor (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setTextColor mid, NilPtr(value)
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6D70757465642064726177696E672072656374616E676C6520666F7220746865206C6162656CE280997320746578742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return TextRectForBounds(me.bounds, me.NumberOfLines)
			End Get
		#tag EndGetter
		TextRect As FoundationFrameWork.nsrect
	#tag EndComputedProperty


	#tag Enum, Name = NSLineBreakMode, Type = Integer, Flags = &h0
		WordWrap = 0
		  CharacterWrap
		  Clip
		  TruncateHead
		  TruncateTail
		TruncateMiddle
	#tag EndEnum

	#tag Enum, Name = UIBaselineAdjustment, Type = Integer, Flags = &h0
		BaseLines
		  Centers
		None
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdjustsFontSizeToFitWidth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsDefaultTighteningForTruncation"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineAdjustment"
			Group="Behavior"
			Type="UIBaselineAdjustment"
			EditorType="Enum"
			#tag EnumValues
				"0 - BaseLines"
				"1 - Centers"
				"2 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
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
			Name="Highlighted"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineBreakMode"
			Group="Behavior"
			Type="NSLineBreakMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - WordWrap"
				"1 - CharacterWrap"
				"2 - Clip"
				"3 - TruncateHead"
				"4 - TruncateTail"
				"5 - TruncateMiddle"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfLines"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredMaxLayoutWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Group="Behavior"
			Type="appletextfield.NSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"1 - Center"
				"2 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
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
	#tag EndViewBehavior
End Class
#tag EndClass
