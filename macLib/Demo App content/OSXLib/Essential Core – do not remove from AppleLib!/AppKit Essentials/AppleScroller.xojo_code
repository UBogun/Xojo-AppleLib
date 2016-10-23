#tag Class
Protected Class AppleScroller
Inherits AppleControl
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Frame as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(AppKitFramework.initwithFrame(alloc(classptr), frame))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getarrowsPosition Lib appkitlibname Selector "arrowsPosition" (id as ptr) As NSScrollArrowPosition
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getknobProportion Lib appkitlibname Selector "knobProportion" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getknobStyle Lib appkitlibname Selector "knobStyle" (id as ptr) As NSScrollerKnobStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpreferredScrollerStyle Lib appkitlibname Selector "preferredScrollerStyle" (id as ptr) As NSScrollerStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getRectforPart Lib appkitlibname Selector "rectForPart:" (id as ptr, part as NSScrollerPart) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscrollerStyle Lib appkitlibname Selector "preferredScrollerStyle" (id as ptr) As NSScrollerStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusableParts Lib appkitlibname Selector "usableParts" (id as ptr) As NSUsableScrollerParts
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleScroller
		  return if (aptr= nil, nil, new AppleScroller(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C65206F636375706965642062792061506172742C20776869636820666F722074686973206D6574686F6420697320696E746572707265746564206C69746572616C6C7920726174686572207468616E20617320616E20696E64696361746F72206F66207363726F6C6C696E6720646972656374696F6E2E
		Function RectForPart(Part as NSScrollerPart) As FoundationFrameWork.NSRect
		  return getRectForPart (id, part)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520776964746820666F72207363726F6C6C657273206F662074686520726563656976696E6720636C61737320666F72206120676976656E20636F6E74726F6C2073697A6520616E64207363726F6C6C6572207374796C652E
		Function ScrollerWidth(Controlsize as NSControlSize, style as NSScrollerStyle) As Double
		  return scrollerWidthForControlSize (id, Controlsize, style)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function scrollerWidthForControlSize Lib appkitlibname Selector "scrollerWidthForControlSize:scrollerStyle:" (id as ptr, size as nscontrolsize, style as NSScrollerStyle) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setarrowsPosition Lib appkitlibname Selector "setArrowsPosition:" (id as ptr, value as NSScrollArrowPosition)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setknobProportion Lib appkitlibname Selector "setKnobProportion:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setknobStyle Lib appkitlibname Selector "setKnobStyle:" (id as ptr, value as NSScrollerKnobStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpreferredScrollerStyle Lib appkitlibname Selector "setPreferredScrollerStyle:" (id as ptr, value as NSScrollerStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setscrollerStyle Lib appkitlibname Selector "setScrollerStyle:" (id as ptr, value as NSScrollerStyle)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652070617274207468617420776F756C64206265206869742062792061206D6F7573652D646F776E206576656E742061742061506F696E74202865787072657373656420696E207468652077696E646F77E280997320636F6F7264696E6174652073797374656D292E
		Function TestPart(Point As FoundationFrameWork.Nspoint) As NSScrollerPart
		  return testPart (id, point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function testPart Lib appkitlibname Selector "testPart:" (id as ptr, point as FoundationFrameWork . NSPoint) As NSScrollerPart
	#tag EndExternalMethod


	#tag Note, Name = status incomplete
		
		but mainly because it seems better to rely on the Defaults than to implement everything which would cause you to build the scrolllogics yourself:
		
		missing
		draw… Methods
		hitPart
		track… methods
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F636174696F6E206F6620746865207363726F6C6C20627574746F6E732077697468696E20746865207363726F6C6C65722E
		#tag Getter
			Get
			  return getArrowsPosition (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setArrowsPosition id, value
			End Set
		#tag EndSetter
		ArrowsPosition As NSScrollArrowPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSScroller")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C6572E280997320636F6E74726F6C2074696E742E
		#tag Getter
			Get
			  return applecolor.MakefromPtr (getcontrolTint(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontrolTint id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ControlTint As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070726F706F7274696F6E206F6620746865206B6E6F6220736C6F74207468617420746865206B6E6F622073686F756C642066696C6C2E0A546869732070726F706572747920636F6E7461696E73206120666C6F6174696E672D706F696E742076616C75652066726F6D20302E3020286D696E696D616C2073697A652920746F20312E30202866696C6C732074686520736C6F7429
		#tag Getter
			Get
			  return getknobProportion (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setknobProportion id, value
			End Set
		#tag EndSetter
		KnobProportion As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C6572E2809973206B6E6F62207374796C652E
		#tag Getter
			Get
			  return getknobStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setknobStyle id, value
			End Set
		#tag EndSetter
		KnobStyle As NSScrollerKnobStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSPreferredScrollerStyleDidChangeNotification as text = "NSPreferredScrollerStyleDidChangeNotification"
			  return mNSPreferredScrollerStyleDidChangeNotification
			End Get
		#tag EndGetter
		Shared kNSPreferredScrollerStyleDidChangeNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C65206F66207363726F6C6C6572732074686174206170706C69636174696F6E732073686F756C642075736520776865726576657220706F737369626C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getpreferredScrollerStyle(ClassPtr)
			End Get
		#tag EndGetter
		Shared PreferredScrollerStyle As NSScrollerStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C6572207374796C6520666F722074686973207363726F6C6C65722E
		#tag Getter
			Get
			  return getscrollerStyle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setscrollerStyle id, value
			End Set
		#tag EndSetter
		ScrollerStyle As NSScrollerStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768696368207061727473206F66207468652072656365697665722061726520646973706C6179656420616E6420757361626C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getusableParts (id)
			End Get
		#tag EndGetter
		UsableParts As NSUsableScrollerParts
	#tag EndComputedProperty


	#tag Enum, Name = NSScrollArrowPosition, Type = UInteger, Flags = &h0
		Default = 0
		  MinEnd_Deprecated = 1
		None = 2
	#tag EndEnum

	#tag Enum, Name = NSScrollerKnobStyle, Type = Integer, Flags = &h0
		Default
		  Dark
		Light
	#tag EndEnum

	#tag Enum, Name = NSScrollerPart, Type = UInteger, Flags = &h0
		NoPart = 0
		  DecrementPage = 1
		  Knob = 2
		  IncrementPage = 3
		  DecrementLine = 4
		  IncrementLine = 5
		KnobSlot = 6
	#tag EndEnum

	#tag Enum, Name = NSScrollerStyle, Type = Integer, Flags = &h0
		Legacy = 0
		Overlay = 1
	#tag EndEnum

	#tag Enum, Name = NSUsableScrollerParts, Type = UInteger, Flags = &h0
		NoParts = 0
		  OnlyScrollerArrows= 1
		AllParts = 2
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alignment"
			Group="Behavior"
			Type="AppleText.NSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"2 - Center"
				"1 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowExpansionTooltips"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ArrowsPosition"
			Group="Behavior"
			Type="NSScrollArrowPosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - MinEnd_Deprecated"
				"2 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaseWritingDirection"
			Group="Behavior"
			Type="AppleText.NSWritingDirection"
			EditorType="Enum"
			#tag EnumValues
				"1 - Natural"
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Group="Behavior"
			Type="NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusRingType"
			Group="Behavior"
			Type="Appkitframework.NSFocusRingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Exterior"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameCenterRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
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
			Name="HeightAdjustLimit"
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
			Name="IgnoresMultiClick"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImportsGraphics"
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
			Name="Int32Value"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerValue"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDrawingFindIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInFullScreenMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInLiveResize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedOrScaledFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KnobProportion"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KnobStyle"
			Group="Behavior"
			Type="NSScrollerKnobStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Dark"
				"2 - Light"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastBaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleAxesIndependently"
				"1 - ScaleProprtionallyToFit"
				"2 - ScaleProprtionallyToFill"
				"3 - Center"
				"4 - Top"
				"5 - TopRight"
				"6 - Right"
				"7 - BottomRight"
				"8 - Bottom"
				"9 - BottomLeft"
				"10 - Left"
				"11 - TopLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="NSViewLayerContentsRedrawPolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - OnSetNeedsDisplay"
				"2 - DuringResize"
				"3 - BeforeResize"
				"4 - Crossfade"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerUsesCoreImageFilters"
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
			Type="AppleText.NSLineBreakMode"
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
			Name="NeedsDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsUpdateConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsBoundsChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsFrameChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefusesFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollerStyle"
			Group="Behavior"
			Type="NSScrollerStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Legacy"
				"1 - Overlay"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
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
			Name="TextValue"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolTip"
			Group="Behavior"
			Type="Text"
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
			Name="UsableParts"
			Group="Behavior"
			Type="NSUsableScrollerParts"
			EditorType="Enum"
			#tag EnumValues
				"0 - NoParts"
				"1 - OnlyScrollerArrows"
				"2 - AllParts"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
