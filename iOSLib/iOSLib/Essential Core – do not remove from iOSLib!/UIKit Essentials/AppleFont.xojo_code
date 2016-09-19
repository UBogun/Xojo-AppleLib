#tag Class
Protected Class AppleFont
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E73206120666F6E74206F626A65637420666F72207468652073706563696669656420666F6E74206E616D6520616E642073697A652E
		Sub Constructor(FontName as CFStringRef, Size as Double)
		  #if Target64Bit
		    Declare function fontWithName lib UIKitLibname selector "fontWithName:size:" (id as ptr, Fontname as CFStringRef, Size as double) as Ptr
		  #elseif Target32Bit
		    Declare function fontWithName lib UIKitLibname selector "fontWithName:size:" (id as ptr, Fontname as CFStringRef, Size as single) as Ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (fontwithName (classptr, FontName, size))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Font as iOSFont)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Constructor (font.Name, Font.Size)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FontNamesForFamilyName(FamilyName as CFStringRef) As AppleArray
		  Declare function fontNamesForFamilyName lib UIKitLibname selector "fontNamesForFamilyName:" (id as ptr, FamilyName as CFStringRef) as ptr
		  Return AppleArray.MakeFromPtr (fontNamesForFamilyName (ClassPtr, FamilyName))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073616D6520666F6E742077697468206120646966666572656E742073697A652E
		Function FontWithSize(Size as Double) As AppleFont
		  #if Target64Bit
		    Declare function fontWithSize lib UIKitLibname selector "fontWithSize:" ( id as ptr, Size as double) as Ptr
		  #elseif Target32Bit
		    Declare function fontWithSize lib UIKitLibname selector "fontWithSize:" ( id as ptr, Size as single) as Ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  return new AppleFont (FontWithSize(id, size))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromiOSFont(Font as iOSFont) As AppleFont
		  return new AppleFont (Font)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getpreferredFontForTextStyle Lib UikitLibname Selector "preferredFontForTextStyle:" (id as ptr, textStyle as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleFont
		  return if (aptr = nil, nil, new AppleFont(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20696E7374616E6365206F662074686520666F6E74206173736F6369617465642077697468207468652074657874207374796C6520616E64207363616C656420617070726F7072696174656C7920666F7220746865207573657227732073656C656374656420636F6E74656E742073697A652063617465676F72792E
		Shared Function PreferredFontForTextStyle(style as UIFontTextStyle) As AppleFont
		  dim result as applefont = new AppleFont(getpreferredFontForTextStyle(classptr, TextStyleconstant(style)))
		  result.retainclassobject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74206F626A656374207573656420666F72207374616E6461726420696E74657266616365206974656D7320696E20746865207370656369666965642073697A652E
		Shared Function SmallSystemFont() As AppleFont
		  return SystemFont(SmallSystemFontSize)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74206F626A656374207573656420666F72207374616E6461726420696E74657266616365206974656D7320696E20746865207370656369666965642073697A652E
		Shared Function SystemFont(FontSize as double = 0) As AppleFont
		  #if Target64Bit
		    Declare function systemFontOfSize lib UIKitLibname selector "systemFontOfSize:" (id as ptr, Fontsize as double) as ptr
		  #elseif Target32Bit
		    Declare function systemFontOfSize lib UIKitLibname selector "systemFontOfSize:" (id as ptr, Fontsize as single) as ptr
		  #endif
		  if Fontsize = 0 then FontsIze = SystemFontSize
		  Dim Result as new applefont (systemFontOfSize (ClassPtr, fontsize))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function TextStyleconstant(style as UIFontTextStyle) As text
		  Select case style
		  case UIFontTextStyle.Body
		    return UIFontTextStyleBody
		  case UIFontTextStyle.Callout
		    return UIFontTextStyleCallout
		  case UIFontTextStyle.Caption1
		    return UIFontTextStyleCaption1
		  case UIFontTextStyle.Caption2
		    return UIFontTextStyleCaption2
		  case UIFontTextStyle.Footnote
		    return UIFontTextStyleFootnote
		  case UIFontTextStyle.Headline
		    return UIFontTextStyleHeadline
		  case UIFontTextStyle.SubHeadline
		    return UIFontTextStyleSubHeadline
		  case UIFontTextStyle.Title1
		    return UIFontTextStyleTitle1
		  case UIFontTextStyle.Title2
		    return UIFontTextStyleTitle2
		  case UIFontTextStyle.Title3
		    return UIFontTextStyleTitle3
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toiOSFont() As iOSFont
		  return new iOSFont (FontName, PointSize)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function buttonFontSize lib UIKitLibname selector "buttonFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function buttonFontSize lib UIKitLibname selector "buttonFontSize" (id as ptr) as single
			  #endif
			  return  buttonFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared ButtonFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIFont")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function familyName lib UIKitLibname selector "familyName" (id as ptr) as CFStringRef
			  return familyName (id)
			End Get
		#tag EndGetter
		FamilyName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function familyNames lib UIKitLibname selector "familyNames" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (familyNames(ClassPtr))
			End Get
		#tag EndGetter
		Shared FamilyNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function fontName lib UIKitLibname selector "fontName" (id as ptr) as CFStringRef
			  return fontName (id)
			End Get
		#tag EndGetter
		FontName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static muisize as double
			  if muisize = 0 then muisize = SystemConstantCGFLoat (UIKitPath, "UIFontWeightRegular")
			  return muisize
			End Get
		#tag EndGetter
		Shared kUIFontWeightUltraLight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function labelFontSize lib UIKitLibname selector "labelFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function labelFontSize lib UIKitLibname selector "labelFontSize" (id as ptr) as single
			  #endif
			  return  LabelFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared LabelFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function pointSize lib UIKitLibname selector "pointSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function pointSize lib UIKitLibname selector "pointSize" (id as ptr) as single
			  #endif
			  
			  return PointSize (id)
			End Get
		#tag EndGetter
		PointSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function smallSystemFontSize lib UIKitLibname selector "smallSystemFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function smallSystemFontSize lib UIKitLibname selector "smallSystemFontSize" (id as ptr) as single
			  #endif
			  return  smallSystemFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared SmallSystemFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function systemFontSize lib UIKitLibname selector "systemFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function systemFontSize lib UIKitLibname selector "systemFontSize" (id as ptr) as single
			  #endif
			  return  systemFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared SystemFontSize As Double
	#tag EndComputedProperty


	#tag Constant, Name = UIFontTextStyleBody, Type = Text, Dynamic = False, Default = \"UIFontTextStyleBody", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleCallout, Type = Text, Dynamic = False, Default = \"UIFontTextStyleCallout", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleCaption1, Type = Text, Dynamic = False, Default = \"UIFontTextStyleCaption1", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleCaption2, Type = Text, Dynamic = False, Default = \"UIFontTextStyleCaption2", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleFootnote, Type = Text, Dynamic = False, Default = \"UIFontTextStyleFootnote", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleHeadline, Type = Text, Dynamic = False, Default = \"UIFontTextStyleHeadline", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleSubheadline, Type = Text, Dynamic = False, Default = \"UIFontTextStyleSubheadline", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleTitle1, Type = Text, Dynamic = False, Default = \"UIFontTextStyleTitle1", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleTitle2, Type = Text, Dynamic = False, Default = \"UIFontTextStyleTitle2", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = UIFontTextStyleTitle3, Type = Text, Dynamic = False, Default = \"UIFontTextStyleTitle3", Scope = Private, Attributes = \"hidden"
	#tag EndConstant


	#tag Enum, Name = UIFontTextStyle, Type = Integer, Flags = &h0
		Title1
		  Title2
		  Title3
		  Headline
		  SubHeadline
		  Body
		  Footnote
		  Caption1
		  Caption2
		Callout
	#tag EndEnum

	#tag Enum, Name = UIFontWeight, Type = Integer, Flags = &h0
		UltraLight
		  Thin
		  Light
		  Regular
		  Medium
		  Semibold
		  Bold
		  Heavy
		Black
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FamilyName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Group="Behavior"
			Type="Text"
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
			Name="PointSize"
			Group="Behavior"
			Type="Double"
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
	#tag EndViewBehavior
End Class
#tag EndClass
