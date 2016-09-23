#tag Class
Protected Class AppleLayoutConstraint
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Activate(Constraints as AppleArray)
		  activateConstraints ClassPtr, Constraints.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub activateConstraints Lib uikitlibname Selector "activateConstraints:" (id as ptr, constraints as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintsWithVisualFormat Lib uikitlibname Selector "constraintsWithVisualFormat:options:metrics:views:" (id as ptr, format as cfstringref, options as uinteger, metrics as ptr, views as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function constraintWithItem Lib uikitlibname Selector "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" (id as ptr, item1 as ptr, attr1 as NSLayoutAttribute, relation as NSLayoutRelation, item2 as ptr, attr2 as NSLayoutAttribute, multiplier as CGFloat, constant as CGFloat) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21, Description = 43726561746573206120636F6E73747261696E74207468617420646566696E6573207468652072656C6174696F6E73686970206265747765656E20746865207370656369666965642061747472696275746573206F662074686520676976656E2076696577732E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E74207468617420646566696E6573207468652072656C6174696F6E73686970206265747765656E20746865207370656369666965642061747472696275746573206F662074686520676976656E2076696577732E
		Sub Constructor(Item1 as AppleObject, Attribute1 as NSLayoutAttribute, Relation as NSLayoutRelation, Item2 As AppleObject, Attribute2 as NSLayoutAttribute, Multiplier As Double, constant as Double)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(constraintWithItem(ClassPtr, item1.id, Attribute1, Relation, Item2.Id, Attribute2, Multiplier, constant))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E74207468617420646566696E6573207468652072656C6174696F6E73686970206265747765656E20746865207370656369666965642061747472696275746573206F662074686520676976656E2076696577732E
		Sub Constructor(Format as CFStringRef, Attribute as NSLayoutAttribute, Direction As NSLayoutFormatDirection, Metrics As AppleDictionary, Views As AppleDictionary)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  dim options as uinteger = Integer(Attribute) + (UInteger(Direction).shiftleft(8))
		  Super.Constructor(constraintsWithVisualFormat(ClassPtr, format, options, Metrics.Id, Views.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4465616374697661746573206561636820636F6E73747261696E7420696E20746865204172726179
		Sub Deactivate(Constraints as AppleArray)
		  deactivateConstraints ClassPtr, Constraints.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub deactivateConstraints Lib uikitlibname Selector "deactivateConstraints:" (id as ptr, constraints as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getActive Lib uikitlibname Selector "isActive" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 54686520617474726962757465206F6620746865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		Protected Declare Function getconstant Lib uikitlibname Selector "constant" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 54686520617474726962757465206F6620746865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		Protected Declare Function getfirstAttribute Lib uikitlibname Selector "firstAttribute" (id as ptr) As NSLayoutAttribute
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfirstItem Lib uikitlibname Selector "firstItem" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 54686520617474726962757465206F6620746865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		Protected Declare Function getmultiplier Lib uikitlibname Selector "multiplier" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpriority Lib uikitlibname Selector "priority" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 54686520617474726962757465206F6620746865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		Protected Declare Function getrelation Lib uikitlibname Selector "relation" (id as ptr) As NSLayoutRelation
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 54686520617474726962757465206F6620746865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		Protected Declare Function getsecondAttribute Lib uikitlibname Selector "secondAttribute" (id as ptr) As NSLayoutAttribute
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsecondItem Lib uikitlibname Selector "secondItem" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldBeArchived Lib uikitlibname Selector "shouldBeArchived" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleLayoutConstraint
		  Return if (aptr = nil, nil, new AppleLayoutConstraint(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setActive Lib uikitlibname Selector "setActive:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 54686520617474726962757465206F6620746865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		Protected Declare Sub setconstant Lib uikitlibname Selector "setConstant:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpriority Lib uikitlibname Selector "setPriority:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldBeArchived Lib uikitlibname Selector "setShouldBeArchived:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		OS X 10.11.5
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686120616374697665207374617465206F662074686520636F6E73747261696E74
		#tag Getter
			Get
			  return getActive (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setActive id, value
			End Set
		#tag EndSetter
		Active As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E73747261696E742073686F756C6420626520617263686976656420627920697473206F776E696E6720766965772E
		#tag Getter
			Get
			  return getshouldBeArchived (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshouldBeArchived id, value
			End Set
		#tag EndSetter
		Archive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSLayoutConstraint")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E7374616E7420616464656420746F20746865206D756C7469706C696564207365636F6E64206174747269627574652070617274696369706174696E6720696E2074686520636F6E73747261696E742E
		#tag Getter
			Get
			  return getconstant (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setconstant id, value
			End Set
		#tag EndSetter
		constant As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617474726962757465206F6620746865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getfirstAttribute(id)
			End Get
		#tag EndGetter
		FirstAttribute As NSLayoutAttribute
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206669727374206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(getfirstItem (id))
			End Get
		#tag EndGetter
		FirstItem As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D652074686174206964656E7469666965732074686520636F6E73747261696E742E
		#tag Getter
			Get
			  return UIKitFramework.getidentifier(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setidentifier id, value
			End Set
		#tag EndSetter
		Identifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D756C7469706C696572206170706C69656420746F20746865207365636F6E64206174747269627574652070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmultiplier (id)
			End Get
		#tag EndGetter
		Multiplier As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207072696F72697479206F662074686520636F6E73747261696E742E
		#tag Getter
			Get
			  dim val as Integer = getpriority(id)
			  return NSLayoutPriority(val)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim val as Single = Integer(value)
			  setpriority id, val
			End Set
		#tag EndSetter
		Priority As NSLayoutPriority
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656C6174696F6E206265747765656E207468652074776F206174747269627574657320696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getrelation (id)
			End Get
		#tag EndGetter
		Relation As NSLayoutRelation
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617474726962757465206F6620746865207365636F6E64206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getsecondAttribute(id)
			End Get
		#tag EndGetter
		SecondAttribute As NSLayoutAttribute
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207365636F6E64206F626A6563742070617274696369706174696E6720696E2074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(getsecondItem (id))
			End Get
		#tag EndGetter
		SecondItem As AppleObject
	#tag EndComputedProperty


	#tag Enum, Name = NSLayoutAttribute, Type = Integer, Flags = &h0
		Left = 1
		  Right
		  Top
		  Bottom
		  Leading
		  Trailing
		  Width
		  Height
		  CenterX
		  CenterY
		  Baseline
		  LastBaseline = Baseline
		FirstBaseline
	#tag EndEnum

	#tag Enum, Name = NSLayoutConstraintOrientation, Type = Integer, Flags = &h0, Attributes = \""
		Horizontal = 0
		Vertical = 1
	#tag EndEnum

	#tag Enum, Name = NSLayoutFormatDirection, Type = UInteger, Flags = &h0
		LeadingToTrailing = 0
		  LeftToRight = 1
		RightToLeft = 2
	#tag EndEnum

	#tag Enum, Name = NSLayoutPriority, Type = Integer, Flags = &h0
		Required = 1000
		  High = 750
		  DragThatCanResizeWindow = 510
		  WindowSizeStayPut = 500
		  DragThatCannotResizeWindow = 490
		  DefaultLow = 250
		FittingSizeCompression = 50
	#tag EndEnum

	#tag Enum, Name = NSLayoutRelation, Type = Integer, Flags = &h0
		LessThanOrEqual = -1
		  Equal = 0
		GreaterThanOrEqual = 1
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Active"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Archive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="constant"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstAttribute"
			Group="Behavior"
			Type="NSLayoutAttribute"
			EditorType="Enum"
			#tag EnumValues
				"1 - Left"
				"2 - Right"
				"3 - Top"
				"4 - Bottom"
				"5 - Leading"
				"6 - Trailing"
				"7 - Width"
				"8 - Height"
				"9 - CenterX"
				"10 - CenterY"
				"11 - Baseline"
				"0 - LastBaseline"
				"1 - FirstBaseline"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Group="Behavior"
			Type="Text"
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
			Name="Multiplier"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Group="Behavior"
			Type="NSLayoutPriority"
			EditorType="Enum"
			#tag EnumValues
				"1000 - Required"
				"750 - High"
				"510 - DragThatCanResizeWindow"
				"500 - WindowSizeStayPut"
				"490 - DragThatCannotResizeWindow"
				"250 - DefaultLow"
				"50 - FittingSizeCompression"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Relation"
			Group="Behavior"
			Type="NSLayoutRelation"
			EditorType="Enum"
			#tag EnumValues
				"-1 - LessThanOrEqual"
				"0 - Equal"
				"1 - GreaterThanOrEqual"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondAttribute"
			Group="Behavior"
			Type="NSLayoutAttribute"
			EditorType="Enum"
			#tag EnumValues
				"1 - Left"
				"2 - Right"
				"3 - Top"
				"4 - Bottom"
				"5 - Leading"
				"6 - Trailing"
				"7 - Width"
				"8 - Height"
				"9 - CenterX"
				"10 - CenterY"
				"11 - Baseline"
				"0 - LastBaseline"
				"1 - FirstBaseline"
			#tag EndEnumValues
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
	#tag EndViewBehavior
End Class
#tag EndClass
