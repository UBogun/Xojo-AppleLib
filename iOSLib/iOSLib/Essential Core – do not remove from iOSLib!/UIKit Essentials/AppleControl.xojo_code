#tag Class
Protected Class AppleControl
Inherits AppleView
	#tag Method, Flags = &h0, Description = 52657475726E732074686520616374696F6E73207468617420617265206173736F636961746564207769746820612074617267657420616E64206120706172746963756C617220636F6E74726F6C206576656E742E
		Function Actions(Target as appleobject, controlevent as UIControlEvent) As AppleArray
		  Declare function actionsForTarget lib UIKitLibname selector "actionsForTarget:forControlEvent:" (id as ptr, target as ptr, events as UIControlEvent) as ptr
		  return AppleArray.MakeFromPtr (actionsForTarget(id, Target.id, controlevent)) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320612074617267657420616E6420616374696F6E20666F72206120706172746963756C6172206576656E7420286F72206576656E74732920746F20616E20696E7465726E616C206469737061746368207461626C652E
		Sub AddTarget(Target as appleobject, SEL as Ptr, Events as AppleControlEvent)
		  Declare Sub addTarget lib UIKitLibname selector "addTarget:action:forControlEvents:" (id as ptr, target as ptr, SEL as ptr, events as UInteger)
		  addTarget id, target.id, sel, Events.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(frame as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(UIKitFramework.initWithFrame(alloc(ClassPtr), frame), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320612074617267657420616E6420616374696F6E20666F72206120706172746963756C6172206576656E7420286F72206576656E7473292066726F6D20616E20696E7465726E616C206469737061746368207461626C652E
		Sub RemoveTarget(Target as appleobject, SEL as Ptr, Events as AppleControlEvent)
		  Declare Sub removeTarget lib UIKitLibname selector "removeTarget:action:forControlEvents:" (id as ptr, target as ptr, SEL as ptr, events as UInteger)
		  removeTarget id, target.id, sel, Events.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E20726573706F6E736520746F206120676976656E206576656E742C20666F72776172647320616E20616374696F6E206D65737361676520746F20746865206170706C69636174696F6E206F626A65637420666F72206469737061746368696E6720746F2061207461726765742E
		Sub SendAction(SEL as Ptr, Target as AppleObject, UIEvent as AppleNSEvent)
		  Declare Sub sendActionTo lib UIKitLibname selector "sendAction:to:forEvent:" (id as ptr, SEL as ptr, Target as Ptr, UIEvent as ptr)
		  SendActionTo id, SEL, Target.id, if (UIEvent = nil, nil, UIEvent.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53656E647320616374696F6E206D6573736167657320666F722074686520676976656E20636F6E74726F6C206576656E74732E
		Sub SendActions(Events as AppleControlEvent)
		  Declare Sub sendActions lib UIKitLibname selector "sendActionsForControlEvents:" (id as ptr, events as UInteger)
		  SendActions id, Events.id
		End Sub
	#tag EndMethod


	#tag Note, Name = State completed
		
		with the exception of the touch events which could be extracted too, but I guess in most cases you will just use the View's features. 
		there is no custom classptr here and the UIView events are not implemented – AppleControl is just the base class for other controls which will make use of the events again.
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 616C6C20636F6E74726F6C206576656E7473206173736F63696174656420776974682074686520636F6E74726F6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function allControlEvents lib UIKitLibname selector "allControlEvents" (id as ptr) as UInteger
			  return new AppleControlEvent(allControlEvents(id))
			End Get
		#tag EndGetter
		AllControlEvents As AppleControlEvent
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C6C20746172676574206F626A65637473206173736F63696174656420776974682074686520636F6E74726F6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function allTargets lib UIKitLibname selector "allTargets" (id as ptr) as ptr
			  return appleset.MakeFromPtr (allTargets(id))
			End Get
		#tag EndGetter
		AllTargets As AppleSet
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIControl")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686F72697A6F6E74616C20616C69676E6D656E74206F6620636F6E74656E74202874657874206F7220696D616765292077697468696E2074686520636F6E74726F6C2E
		#tag Getter
			Get
			  Declare function contentHorizontalAlignment lib UIKitLibname selector "contentHorizontalAlignment" (id as ptr) as UIControlContentHorizontalAlignment
			  return contentHorizontalAlignment (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setcontentHorizontalAlignment lib UIKitLibname selector "contentHorizontalAlignment:" (id as ptr, value as UIControlContentHorizontalAlignment)
			  setcontentHorizontalAlignment id, value
			End Set
		#tag EndSetter
		ContentHorizontalAlignment As UIControlContentHorizontalAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520766572746963616C20616C69676E6D656E74206F6620636F6E74656E74202874657874206F7220696D616765292077697468696E2074686520636F6E74726F6C2E
		#tag Getter
			Get
			  Declare function contentVerticalAlignment lib UIKitLibname selector "contentVerticalAlignment" (id as ptr) as UIControlContentVerticalAlignment
			  return contentVerticalAlignment (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setContentVerticalAlignment lib UIKitLibname selector "setContentVerticalAlignment:" (id as ptr, value as UIControlContentVerticalAlignment)
			  setContentVerticalAlignment id, value
			End Set
		#tag EndSetter
		ContentVerticalAlignment As UIControlContentVerticalAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E74726F6C20697320656E61626C65642E
		#tag Getter
			Get
			  Declare function enabled lib UIKitLibname selector "isEnabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setEnabled lib UIKitLibname selector "setEnabled:" (id as ptr, value as Boolean)
			  setenabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E74726F6C20697320686967686C6967687465642E
		#tag Getter
			Get
			  Declare function Highlighted lib UIKitLibname selector "isHighlighted" (id as ptr) as Boolean
			  return Highlighted (id)
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

	#tag ComputedProperty, Flags = &h0, Description = 20426F6F6C65616E2076616C756520746861742064657465726D696E65732074686520636F6E74726F6CE28099732073656C65637465642073746174652E
		#tag Getter
			Get
			  Declare function selected lib UIKitLibname selector "isSelected" (id as ptr) as Boolean
			  return selected (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setSelected lib UIKitLibname selector "setSelected:" (id as ptr, value as Boolean)
			  setSelected id, value
			End Set
		#tag EndSetter
		Selected As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206269746D61736B2076616C7565207468617420696E6469636174657320746865207374617465206F662074686520636F6E74726F6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function state lib UIKitLibname selector "state" (id as ptr) as uinteger
			  return new AppleControlState ( state (id))
			End Get
		#tag EndGetter
		State As AppleControlState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206120746F75636820697320696E736964652074686520626F756E6473206F662074686520636F6E74726F6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function isTouchInside lib UIKitLibname selector "isTouchInside" (id as ptr) as Boolean
			  return isTouchInside (id)
			End Get
		#tag EndGetter
		TouchInside As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E6469636174657320776865746865722074686520636F6E74726F6C2069732063757272656E746C7920747261636B696E6720746F75636865732072656C6174656420746F20616E206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function tracking lib UIKitLibname selector "isTracking" (id as ptr) as Boolean
			  return tracking (id)
			End Get
		#tag EndGetter
		Tracking As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = UIControlContentHorizontalAlignment, Flags = &h0
		Center
		  Left
		  Right
		Fill
	#tag EndEnum

	#tag Enum, Name = UIControlContentVerticalAlignment, Flags = &h0
		Center
		  Top
		  Bottom
		Fill
	#tag EndEnum

	#tag Enum, Name = UIControlEvent, Type = Integer, Flags = &h0
		TouchDown = 1
		  TouchDownRepeat = 2
		  TouchDragInside = 4
		  TouchDragOutside = 8
		  TouchDragEnter = 16
		  TouchDragExit = 32
		  TouchUpInside = 64
		  TouchUpOutside = 128
		  TouchCancel = 256
		  ValueChanged = 4096
		  PrimaryActionTriggered = 8192
		  EditingDidBegin = 65536
		  EditingChanged = 131072
		  EditingDidEnd = 262144
		  EditingDidEndOnExit = 524288
		  AllTouchEvents = &h00000fff
		  AllEditingEvents = &h000f0000
		  ApplicationReserved = &h0f000000
		  SystemReserved = &hf0000000
		AllEvents = &hffffffff
	#tag EndEnum


	#tag ViewBehavior
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
			Name="ContentHorizontalAlignment"
			Group="Behavior"
			Type="UIControlContentHorizontalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
				"3 - Fill"
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
			Name="ContentVerticalAlignment"
			Group="Behavior"
			Type="UIControlContentVerticalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Fill"
			#tag EndEnumValues
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
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
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
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
			Name="TouchInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
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
