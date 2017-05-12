#tag Class
Protected Class AppleButton
Inherits AppleControl
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function buttonWithImage Lib appkitlibname Selector "buttonWithImage:target:action:" (id as ptr, image as ptr, target as ptr, action as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function buttonWithTitle Lib appkitlibname Selector "buttonWithTitle:target:action:" (id as ptr, title as cfstringRef, target as ptr, action as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function buttonWithTitleImage Lib appkitlibname Selector "buttonWithTitle:image:target:action:" (id as ptr, title as cfstringRef, image as ptr, target as ptr, action as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720636865636B626F782077697468206120737065636966696564207469746C652C2073657474696E67207468652074617267657420746F20696E666F726D206F6E20706572666F726D436C69636B3A206576656E74732E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Shared Function CheckBox(Title as CFStringRef, target as appleobject, action as ptr = nil) As AppleButton
		  if action = nil then action =FoundationFrameWork.NSSelectorFromString(actionString)
		  if RespondsToSelector("checkboxWithTitle:target:action:", classptr) then _
		  return new AppleButton(checkboxWithTitle(Classptr, Title, Target.id, action), true, true)
		  
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function checkboxWithTitle Lib appkitlibname Selector "checkboxWithTitle:target:action:" (id as ptr, title as cfstringRef, target as ptr, action as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720627574746F6E207769746820616E20696D6167652C2073657474696E67207468652074617267657420746F20696E666F726D206F6E206120706572666F726D436C69636B3A20616374696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Sub Constructor(Image as AppleImage, target as appleobject, action as ptr = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(x as double, y as double, width as double, height as double, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  if action = nil then action =FoundationFrameWork.NSSelectorFromString(actionString)
		  if RespondsToSelector("buttonWithImage:target:action:", classptr) then _
		  Super.Constructor(buttonWithImage(Classptr, image.Id, Target.id, action), true, true)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720627574746F6E20776974682061207469746C6520616E6420616E20696D6167652C2073657474696E67207468652074617267657420746F20696E666F726D206F6E206120706572666F726D436C69636B3A20616374696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Sub Constructor(Title as CFStringRef, image as appleimage, target as appleobject, action as ptr = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(x as double, y as double, width as double, height as double, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  if action = nil then action =FoundationFrameWork.NSSelectorFromString(actionString)
		  if RespondsToSelector("buttonWithTitle:image:target:action:", classptr) then _
		  Super.Constructor(buttonWithTitleImage(Classptr, Title, image.id, Target.id, action), true, true)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720627574746F6E20776974682061207469746C652C2073657474696E67207468652074617267657420746F20696E666F726D206F6E206120706572666F726D436C69636B3A20616374696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Sub Constructor(Title as CFStringRef, target as appleobject, action as ptr = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(x as double, y as double, width as double, height as double, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  if action = nil then action =FoundationFrameWork.NSSelectorFromString(actionString)
		  if RespondsToSelector("buttonWithTitle:target:action:", classptr) then _
		  Super.Constructor(buttonWithTitle(Classptr, Title, Target.id, action), true, true)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720627574746F6E2077697468206120737065636966696564206672616D652E
		Sub Constructor(AFrame As FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(x as double, y as double, width as double, height as double, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(AppKitFramework.initWithframe(alloc(classptr), aframe), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageHugsTitle Lib appkitlibname Selector "imageHugsTitle" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmaxAcceleratorLevel Lib appkitlibname Selector "maxAcceleratorLevel" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 486967686C696768747320286F7220756E686967686C6967687473292074686520627574746F6E2E
		Sub Highlight(assigns value as Boolean)
		  AppKitFramework.sethighlight mid, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720726164696F427574746F6E2077697468206120737065636966696564207469746C652C2073657474696E67207468652074617267657420746F20696E666F726D206F6E20706572666F726D436C69636B3A206576656E74732E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Shared Function RadioButton(Title as CFStringRef, target as appleobject, action as ptr = nil) As AppleButton
		  if action = nil then action =FoundationFrameWork.NSSelectorFromString(actionString)
		  if RespondsToSelector("radioButtonWithTitle:target:action:", classptr) then _
		  return new AppleButton(radioButtonWithTitle(Classptr, Title, Target.id, action), true, true)
		  
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function radioButtonWithTitle Lib appkitlibname Selector "radioButtonWithTitle:target:action:" (id as ptr, title as cfstringRef, target as ptr, action as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimageHugsTitle Lib appkitlibname Selector "setImageHugsTitle:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmaxAcceleratorLevel Lib appkitlibname Selector "setMaxAcceleratorLevel:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20746F20697473206E6578742073746174652E
		Sub SetNextState()
		  AppKitFramework.setNextState mid
		End Sub
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		missing:
		performKeyEquivalent 
		(Event handler)
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520627574746F6E20616C6C6F77732061206D697865642073746174652E
		#tag Getter
			Get
			  return appkitframework.getallowsMixedState (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setallowsMixedState mid,value
			End Set
		#tag EndSetter
		AllowsMixedState As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D61676520746861742061707065617273206F6E2074686520627574746F6E207768656E206974E280997320696E20616E206F66662073746174652C206F72206E696C206966207468657265206973206E6F207375636820696D6167652E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(AppKitFramework.getalternateImage (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setalternateImage mid, nilptr(value)
			End Set
		#tag EndSetter
		AlternateImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C6520746861742074686520627574746F6E20646973706C617973207768656E2074686520627574746F6E20697320696E20616E206F6E2073746174652E
		#tag Getter
			Get
			  return AppKitFramework.getalternateTitle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setalternateTitle mid, value
			End Set
		#tag EndSetter
		AlternateTitle As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C6520746861742074686520627574746F6E20646973706C61797320696E20616E206F6E2073746174652C20617320616E206174747269627574656420737472696E672E
		#tag Getter
			Get
			  return AppleAttributedString.MakeFromPtr(appkitframework.getattributedAlternateTitle (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setattributedAlternateTitle mid, nilptr(value)
			End Set
		#tag EndSetter
		AttributedAlternateTitle As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C6520746861742074686520627574746F6E20646973706C61797320696E20616E206F66662073746174652C20617320616E206174747269627574656420737472696E672E
		#tag Getter
			Get
			  return AppleAttributedString.MakeFromPtr(appkitframework.getattributedTitle (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setattributedTitle mid, nilptr(value)
			End Set
		#tag EndSetter
		AttributedTitle As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520627574746F6E27732062657A656C2C20696E20617070656172616E636573207468617420737570706F72742069742E
		#tag Getter
			Get
			  return AppleColor.MakeFromPtr(AppKitFramework.getbezelColor (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbezelColor mid, nilptr(value)
			End Set
		#tag EndSetter
		BezelColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F662074686520627574746F6EE280997320626F726465722C20696620697420686173206F6E652E
		#tag Getter
			Get
			  return AppleButtonCell.getbezelStyle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleButtonCell.setbezelStyle mid, value
			End Set
		#tag EndSetter
		BezelStyle As AppleButtonCell.NSBezelStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520627574746F6E20686173206120626F726465722E
		#tag Getter
			Get
			  return appkitframework.getBordered (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setBordered id,value
			End Set
		#tag EndSetter
		Bordered As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F772074686520627574746F6E20686967686C6967687473207768696C65207072657373656420616E6420686F772069742073686F7773206974732073746174652E
		#tag Getter
			Get
			  return AppKitFramework.getButtonType (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setButtonType mid, value
			End Set
		#tag EndSetter
		ButtonType As AppleButton.NSButtonType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then mClassPtr = FoundationFrameWork.NSClassFromString("NSButton")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D61676520746861742061707065617273206F6E2074686520627574746F6E207768656E206974E280997320696E20616E206F66662073746174652C206F72206E696C206966207468657265206973206E6F207375636820696D6167652E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(AppKitFramework.getImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Image As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D616765206875677320746865207469746C652E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  if RespondsToSelector("imageHugsTitle", classptr) then return getimageHugsTitle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("imageHugsTitle", classptr) then setimageHugsTitle mid, value
			End Set
		#tag EndSetter
		ImageHugsTitle As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F736974696F6E206F662074686520627574746F6EE280997320696D6167652072656C617469766520746F20697473207469746C652E
		#tag Getter
			Get
			  return AppleButtonCell.getimagePosition(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleButtonCell.setimagePosition mid, value
			End Set
		#tag EndSetter
		ImagePosition As Applebuttoncell.NSCellImagePosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C696E67206D6F6465206170706C69656420746F206D616B65207468652063656C6CE280997320696D6167652066697420746865206672616D65206F662074686520696D61676520766965772E
		#tag Getter
			Get
			  return AppKitFramework.getimageScaling (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setimageScaling mid, value
			End Set
		#tag EndSetter
		ImageScaling As appkitframework.NSImagescaling
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B65792D6571756976616C656E7420636861726163746572206F662074686520627574746F6E2E0A546F20646973706C61792061206B6579206571756976616C656E74206F6E206120627574746F6E2C207365742074686520696D61676520616E6420616C7465726E61746520696D61676520746F206E696C2C2073657420746865206B6579206571756976616C656E742C20616E64207468656E207365742074686520696D61676520706F736974696F6E2E
		#tag Getter
			Get
			  return AppKitFramework.getkeyEquivalent(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setkeyEquivalent mid, value
			End Set
		#tag EndSetter
		KeyEquivalent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D61736B2073706563696679696E6720746865206D6F646966696572206B65797320666F722074686520627574746F6EE2809973206B6579206571756976616C656E742E
		#tag Getter
			Get
			  return new AppleNSEventModifierFlags(AppleNSMenuItem.getkeyEquivalentModifierMask(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleNSMenuItem.setkeyEquivalentModifierMask mid, value.id
			End Set
		#tag EndSetter
		KeyEquivalentModifierMask As AppleNSEventModifierFlags
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D207072657373757265206C6576656C20666F72206120627574746F6E206F662074797065204E534D756C74694C6576656C416363656C657261746F72427574746F6E2E
		#tag Getter
			Get
			  return getmaxAcceleratorLevel (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmaxAcceleratorLevel mid, value
			End Set
		#tag EndSetter
		MaxAcceleratorLevel As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6573736167652064656C617920696E207365636F6E64732074686174206120636F6E74696E756F757320627574746F6E2077696C6C207061757365206265666F7265207374617274696E6720746F20706572696F646963616C6C792073656E6420616374696F6E206D6573736167657320746F2074686520746172676574206F626A6563742E20204D6178696D756D2036302C2064656661756C7420302E342E
		#tag Getter
			Get
			  dim d, i as single
			  AppKitFramework.getPeriodicDelayInterval(mid, d, i)
			  return d
			  #pragma unused i
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setPeriodicDelayInterval mid, value, PeriodicInterval
			End Set
		#tag EndSetter
		PeriodicDelay As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 2054686520616D6F756E74206F662074696D652028696E207365636F6E647329206120636F6E74696E756F757320627574746F6E2077696C6C207061757365206265747765656E2073656E64696E67206561636820616374696F6E206D6573736167652E204D6178696D756D2036302C2064656661756C7420302E3037352E
		#tag Getter
			Get
			  dim d, i as single
			  AppKitFramework.getPeriodicDelayInterval(mid, d, i)
			  return i
			  #pragma unused d
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setPeriodicDelayInterval mid,  PeriodicDelay, value
			End Set
		#tag EndSetter
		PeriodicInterval As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520627574746F6E20646973706C6179732069747320626F72646572206F6E6C79207768656E2074686520706F696E746572206973206F7665722069742E2044456661756C742046616C73652E
		#tag Getter
			Get
			  return AppKitFramework.getshowsBorderOnlyWhileMouseInside(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setshowsBorderOnlyWhileMouseInside mid, value
			End Set
		#tag EndSetter
		ShowsBorderOnlyWhileMouseInside As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736F756E64207468617420706C617973207768656E20746865207573657220636C69636B732074686520627574746F6E2E
		#tag Getter
			Get
			  return AppleSound.MakeFromPtr(AppKitFramework.getsound (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setsound mid, Nilptr(value)
			End Set
		#tag EndSetter
		Sound As AppleSound
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220737072696E67206C6F6164696E6720697320656E61626C656420666F722074686520627574746F6E2E0A0A
		#tag Getter
			Get
			  return AppKitFramework.getSpringLoaded(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setSpringLoaded mid, value
			End Set
		#tag EndSetter
		SpringLoaded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6EE28099732073746174652E
		#tag Getter
			Get
			  return applecell.NSCellStateValue(AppKitFramework.getState(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setState mid, integer(value)
			End Set
		#tag EndSetter
		State As AppleCell.NSCellStateValue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C65206F662074686520627574746F6E2E
		#tag Getter
			Get
			  return AppKitFramework.getTitle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTitle mid, value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520627574746F6E206973207472616E73706172656E742E
		#tag Getter
			Get
			  return appkitframework.getTransparent (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTransparent mid,value
			End Set
		#tag EndSetter
		Transparent As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = actionString, Type = Text, Dynamic = False, Default = \"performClick:", Scope = Private
	#tag EndConstant


	#tag Enum, Name = NSButtonType, Type = UInteger, Flags = &h0
		MomentaryLight = 0
		  PushOnPushOff = 1
		  Toggle = 2
		  Switch = 3
		  Radio = 4
		  MomentaryChange = 5
		  OnOff = 6
		  MomentaryPushIn = 7
		  Accelerator = 8
		MultiLevelAccelerator = 9
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
			Name="AllowsMixedState"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateTitle"
			Group="Behavior"
			Type="Text"
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
			Name="BezelStyle"
			Group="Behavior"
			Type="AppleButtonCell.NSBezelStyle"
			EditorType="Enum"
			#tag EnumValues
				"1 - Rounded"
				"2 - Square"
				"5 - Disclosure"
				"6 - ShadowlessSquare"
				"7 - Circular"
				"8 - TexturedSquare"
				"9 - HelpButton"
				"10 - SmallSquare"
				"11 - TextureRounded"
				"12 - RoundRect"
				"13 - Recessed"
				"14 - RoundedDisclosure"
				"15 - Inline"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bordered"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonType"
			Group="Behavior"
			Type="AppleButton.NSButtonType"
			EditorType="Enum"
			#tag EnumValues
				"0 - MomentaryLight"
				"1 - PushOnPushOff"
				"2 - Toggle"
				"3 - Switch"
				"4 - Radio"
				"5 - MomentaryChange"
				"6 - OnOff"
				"7 - MomentaryPushIn"
				"8 - Accelerator"
				"9 - MultiLevelAccelerator"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawinBackground"
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
			Name="ImageHugsTitle"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageScaling"
			Group="Behavior"
			Type="appkitframework.NSImagescaling"
			EditorType="Enum"
			#tag EnumValues
				"0 - ProportionallyDown"
				"1 - AxesIndependently"
				"2 - None"
				"3 - ProportionallyUpOrDown"
			#tag EndEnumValues
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
			Name="KeyEquivalent"
			Group="Behavior"
			Type="Text"
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
			Name="MaxAcceleratorLevel"
			Group="Behavior"
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
			Name="PeriodicDelay"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PeriodicInterval"
			Group="Behavior"
			Type="Single"
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
			Name="ShowsBorderOnlyWhileMouseInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleLineMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpringLoaded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="AppleCell.NSCellStateValue"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Mixed"
				"0 - Off"
				"1 - On"
			#tag EndEnumValues
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
			Name="Title"
			Group="Behavior"
			Type="Text"
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
			Name="Transparent"
			Group="Behavior"
			Type="Boolean"
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
