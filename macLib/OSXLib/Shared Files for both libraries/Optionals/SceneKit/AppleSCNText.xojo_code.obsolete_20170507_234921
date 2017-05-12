#tag Class
Protected Class AppleSCNText
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120746578742067656F6D657472792066726F6D20612073706563696669656420737472696E672C20657874727564656420776974682061207370656369666965642064657074682E
		Sub Constructor(aText As appleAttributedString, extrusionDepth As Double)
		  #if Target64Bit
		    Declare function textWithString Lib SceneKitLibname selector "textWithString:extrusionDepth:" (id as ptr, atext as ptr, extrusionDepth as double) as ptr
		  #elseif Target32Bit
		    Declare function textWithString Lib SceneKitLibname selector "textWithString:extrusionDepth:" (id as ptr, atext as ptr, extrusionDepth as single) as ptr
		  #endif
		  Super.Constructor (textWithString (ClassPtr, atext.Id, extrusionDepth))
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120746578742067656F6D657472792066726F6D20612073706563696669656420737472696E672C20657874727564656420776974682061207370656369666965642064657074682E
		Sub Constructor(aText As CFStringRef, extrusionDepth As Double)
		  #if Target64Bit
		    Declare function textWithString Lib SceneKitLibname selector "textWithString:extrusionDepth:" (id as ptr, atext as cfstringref, extrusionDepth as double) as ptr
		  #elseif Target32Bit
		    Declare function textWithString Lib SceneKitLibname selector "textWithString:extrusionDepth:" (id as ptr, atext as cfstringref, extrusionDepth as single) as ptr
		  #endif
		  Super.Constructor (textWithString (ClassPtr, atext, extrusionDepth))
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getAttributedString Lib SceneKitLibname Selector "string" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfont Lib SceneKitLibname Selector "font" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getString Lib SceneKitLibname Selector "string" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setAttributedString Lib SceneKitLibname Selector "setString:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfont Lib SceneKitLibname Selector "setFont:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setString Lib SceneKitLibname Selector "setString:" (id as ptr, value as cfstringref)
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1, Description = 546865205465787456616C75652070726F70657274792061732041747472696275746564537472696E67
		#tag Getter
			Get
			  return getalignmentMode(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAlignmentMode id,value
			End Set
		#tag EndSetter
		Protected AlignmentMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865205465787456616C75652070726F70657274792061732041747472696275746564537472696E67
		#tag Getter
			Get
			  return AppleAttributedString.MakeFromPtr(getAttributedString (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttributedString id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AttributedStringValue As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207061746820746861742064657465726D696E6573207468652063726F73732D73656374696F6E616C20636F6E746F7572206F662065616368206368616D666572656420656467652E
		#tag Getter
			Get
			  return AppleBezierPath.MakefromPtr(getchamferProfile(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setchamferProfile id, if (value = nil,nil, value.id)
			End Set
		#tag EndSetter
		ChamferProfile As AppleBezierPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468206F72206465707468206F662065616368206368616D666572656420656467652E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getchamferRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setChamferRadius id, value
			End Set
		#tag EndSetter
		ChamferRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNText")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412072656374616E676C652073706563696679696E6720746865206172656120696E207768696368205363656E654B69742073686F756C64206C6179206F75742074686520746578742E
		#tag Getter
			Get
			  return getcontainerFrame(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontainerFrame(mid, value)
			  
			End Set
		#tag EndSetter
		ContainerFrame As FoundationFrameWork.nsrect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746869636B6E657373206F662074686520657874727564656420736861706520616C6F6E6720746865207A2D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getextrusionDepth(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setExtrusionDepth id, value
			End Set
		#tag EndSetter
		ExtrusionDepth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E756D62657220746861742064657465726D696E657320746865206163637572616379206F7220736D6F6F74686E657373206F662074686520746578742067656F6D657472792E2044656661756C7420302E362E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function flatness Lib SceneKitLibname selector "flatness" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function flatness Lib SceneKitLibname selector "flatness" (id as ptr) as Single
			  #endif
			  return flatness (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setFlatness Lib SceneKitLibname selector "setFlatness:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setFlatness Lib SceneKitLibname selector "setFlatness:" (id as ptr, value as Single)
			  #endif
			  setFlatness (id, value)
			End Set
		#tag EndSetter
		Flatness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E742074686174205363656E654B6974207573657320746F206372656174652067656F6D657472792066726F6D2074686520746578742E
		#tag Getter
			Get
			  return AppleFont.MakeFromPtr(getfont (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfont id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 486F77205363656E654B6974207472756E63617465732074657874207468617420697320746F6F206C6F6E6720746F206669742069747320636F6E7461696E65722E2053657473205472756E636174696F6E4D6F646520616E64205772617070656420696E7465726E616C6C792E
		#tag Getter
			Get
			  select case TruncationMode
			  case AppleCATextLayer.kCATruncationNone
			    if Wrapped then
			      return AppleLabel.NSLineBreakMode.WordWrap
			    else
			      return AppleLabel.NSLineBreakMode.Clip
			    end if
			  case AppleCATextLayer.kCATruncationStart
			    return AppleLabel.NSLineBreakMode.TruncateHead
			  case AppleCATextLayer.kCATruncationMiddle
			    return AppleLabel.NSLineBreakMode.TruncateMiddle
			  case AppleCATextLayer.kCATruncationEnd
			    return AppleLabel.NSLineBreakMode.TruncateTail
			  end select
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case AppleLabel.NSLineBreakMode.WordWrap
			    Wrapped = true
			    TruncationMode = AppleCATextLayer.kCATruncationNone
			  case AppleLabel.NSLineBreakMode.Clip
			    Wrapped = False
			    TruncationMode = AppleCATextLayer.kCATruncationNone
			  case AppleLabel.NSLineBreakMode.TruncateHead
			    TruncationMode = AppleCATextLayer.kCATruncationStart
			  case AppleLabel.NSLineBreakMode.TruncateMiddle
			    TruncationMode = AppleCATextLayer.kCATruncationMiddle
			  case AppleLabel.NSLineBreakMode.TruncateTail
			    TruncationMode = AppleCATextLayer.kCATruncationEnd
			  end select
			  
			  
			End Set
		#tag EndSetter
		LineBreakMode As AppleText.NSLineBreakMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 486F77205363656E654B697420686F72697A6F6E74616C6C7920616C69676E732065616368206C696E65206F6620746578742077697468696E2069747320636F6E7461696E65722E205365747320746865207072697661746520416C69676E6D656E74206D6F646520636F6E7374616E7420696E7465726E616C6C792E
		#tag Getter
			Get
			  return AppleCATextLayer.TextAlignmentForConstant (AlignmentMode)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AlignmentMode = AppleCATextLayer.TextAlignmentConstant (value)
			End Set
		#tag EndSetter
		TextAlignment As AppleTextfield.NSTextAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E67206F626A6563742077686F73652074657874207468652067656F6D6574727920726570726573656E74732E
		#tag Getter
			Get
			  return getString (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setString id, value
			End Set
		#tag EndSetter
		TextValue As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1, Description = 546865205465787456616C75652070726F70657274792061732041747472696275746564537472696E67
		#tag Getter
			Get
			  return gettruncationMode(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTruncationMode id,value
			End Set
		#tag EndSetter
		Protected TruncationMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B6974207772617073206C6F6E67206C696E6573206F6620746578742E
		#tag Getter
			Get
			  declare Function isWrapped Lib SceneKitLibname selector "isWrapped" (id as ptr) as Boolean
			  return isWrapped (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setWrapped Lib SceneKitLibname selector "setWrapped:" (id as ptr, value as Boolean)
			  setWrapped (id, value)
			End Set
		#tag EndSetter
		Wrapped As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = SCNChamferMode, Type = Integer, Flags = &h0
		Both
		  Front
		Back
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ChamferRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtrusionDepth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flatness"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryElementCount"
			Group="Behavior"
			Type="Integer"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SubdivisionLevel"
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
			Name="TextValue"
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
			Name="Wrapped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
