#tag Class
Protected Class AppleTextfield
Inherits AppleControl
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub DidAddSubview(view as AppleView)
		  #pragma unused view
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652072656374616E676C6520286F722077686F6C65206172656129206F662074686520766965772067657473207265647261776E
		Sub DrawRect(Rect  as FoundationFramework.NSRect)
		  #pragma unused rect
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720686173206368616E6765642073697A65206C696B6520616674657220616E206F7269656E746174696F6E206368616E67652E
		Sub LayoutSubviews()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061206D6F74696F6E2068617320656E646564
		Sub RemoteControlReceived(anEvent as AppleNSEvent)
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Sub TouchesBeganwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  #pragma unused touchset
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20612073797374656D2D6576656E7420286C696B65206C6F77206D656D6F7279292063616E63656C73206120746F756368206576656E742E
		Sub TouchesCancelledwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  #pragma unused touchset
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Sub TouchesEndedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  #pragma unused touchset
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520706F736974696F6E206F662074686520746F756368206368616E676573202873696E636520694F532039
		Sub TouchesMovedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
		  #pragma unused touchset
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520747261697420636F6C6C656374696F6E20686173206368616E6765642C206C696B65207768656E2074686520646576696365206F7269656E746174696F6E206368616E6765642E
		Sub TraitCollectionDidChange(PreviousCollection As AppleTraitCollection)
		  #pragma unused PreviousCollection
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077696C6C2062652073686F776E206F6E2073637265656E2E
		Sub WillMoveToWindow(window as applewindow)
		  #pragma unused window
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077696C6C206C6F7365206120737562766965772E
		Sub WillRemoveSubview(view as AppleView)
		  #pragma unused view
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6E74726F6CE280997320626F726465722072656374616E676C652E
		Function BorderRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  Declare Function borderRectForBounds lib UIKitLibname selector "borderRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		  return  borderRectForBounds (id, bounds)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064726177696E672072656374616E676C6520666F7220746865206275696C742D696E20636C65617220627574746F6E2E
		Function ClearButtonRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  Declare Function clearButtonRectForBounds lib UIKitLibname selector "clearButtonRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		  return  clearButtonRectForBounds (id, bounds)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aframe as FoundationFramework.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (InitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  me.UserInteractionEnabled = true
		  me.ExclusiveTouch = False
		  me.AutoresizesSubviews = true
		  me.setDelegate id, id
		  me.BorderStyle = UITextFieldBorderStyle.RoundedRect
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As AppleTextField
		  return AppleTextField.MakefromPtr( getCopy(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 447261777320746865206669656C642773207465787420696E20746865207370656369666965642072656374616E676C6520286966206120636F6E746578742065786973747329
		Sub DrawText(rect as FoundationFrameWork.nsrect)
		  DrawTextinRect (id, rect)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub drawTextInRect Lib uikitlibname Selector "drawTextInRect:" (id as ptr, rect as FoundationFrameWork . nsrect)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520696E207768696368206564697461626C6520746578742063616E20626520646973706C617965642E
		Function EditingRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  Declare Function editingRectForBounds lib UIKitLibname selector "editingRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		  return  editingRectForBounds (id, bounds)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getautocapitalizationType Lib uikitlibname Selector "autocapitalizationType" (id as ptr) As UITextAutocapitalizationType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getautocorrectionType Lib uikitlibname Selector "autocorrectionType" (id as ptr) As UITextAutocorrectionType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getenablesReturnKeyAutomatically Lib uikitlibname Selector "enablesReturnKeyAutomatically" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getkeyboardAppearance Lib uikitlibname Selector "keyboardAppearance" (id as ptr) As UIKeyboardAppearance
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getkeyboardType Lib uikitlibname Selector "keyboardType" (id as ptr) As UIKeyboardType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getreturnKeyType Lib uikitlibname Selector "returnKeyType" (id as ptr) As UIReturnKeyType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getsecureTextEntry Lib uikitlibname Selector "isSecureTextEntry" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getspellCheckingType Lib uikitlibname Selector "spellCheckingType" (id as ptr) As UITextSpellCheckingType
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TextFieldDidBeginEditing(pid as ptr, sel as ptr, textfield as ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDidBeginEditing
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_textFieldDidEndEditing(pid as ptr, sel as ptr, textfield as ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDidEndEditing
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_TextFieldShouldBeginEditing(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldBeginEditing
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldshouldChangeCharactersInRange(pid as ptr, sel as ptr, textfield as ptr, range as FoundationFramework.NSRange, ReplacementString As CFStringRef) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldChangeCharactersInRange (range, ReplacementString)
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldShouldClear(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldClear
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldShouldEndEditing(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldEndEditing
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldShouldReturn(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldReturn
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidBeginEditing()
		  if ParentControl <> nil then
		    ParentControl.informonDidBeginEditing
		  else
		    RaiseEvent DidBeginEditing
		  end if
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEndEditing()
		  if ParentControl <> nil then
		    ParentControl.informonDidEndEditing
		  else
		    RaiseEvent DidEndEditing
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldBeginEditing() As boolean
		  if ParentControl <> nil then
		    return not ParentControl.informonShouldBeginEditing
		  else
		    return not RaiseEvent ShouldBeginEditing
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldChangeCharactersInRange(Range as FoundationFramework.NSRange, Replacement as Text) As boolean
		  if ParentControl <> nil then
		    return not ParentControl.informonShouldChangeCharactersInRange(range.location, range.length, replacement)
		  else
		    return not RaiseEvent ShouldChangeCharactersInRange (range.location, range.length, replacement)
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldClear() As boolean
		  if ParentControl <> nil then
		    return not ParentControl.informonShouldClear
		  else
		    return not RaiseEvent ShouldClear
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldEndEditing() As boolean
		  if ParentControl <> nil then
		    return not ParentControl.informonShouldEndEditing
		  else
		    return not RaiseEvent ShouldEndEditing
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldReturn() As boolean
		  if ParentControl <> nil then
		    return not ParentControl.informonShouldReturn
		  else
		    return not RaiseEvent ShouldReturn
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064726177696E672072656374616E676C65206F6620746865206669656C642773206C656674206F7665726C617920766965772E
		Function LeftViewRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  Declare Function leftViewRectForBounds lib UIKitLibname selector "leftViewRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		  return  leftViewRectForBounds (id, bounds)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTextField
		  return if (aptr = nil, nil, new AppleTextField(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As iOSLibTextfield
		  dim  wr as weakref = XojoControls.Lookup (id, nil)  
		  return if (wr = nil, nil,  iOSLibTextfield(wr.Value))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064726177696E672072656374616E676C6520666F72207468652074657874206669656C64E280997320706C616365686F6C64657220746578742E
		Function PlaceholderRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  Declare Function placeholderRectForBounds lib UIKitLibname selector "placeholderRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		  return  placeholderRectForBounds (id, bounds)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064726177696E67206C6F636174696F6E206F6620746865207265636569766572E2809973207269676874206F7665726C617920766965772E
		Function RightViewRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  Declare Function rightViewRectForBounds lib UIKitLibname selector "rightViewRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		  return  rightViewRectForBounds (id, bounds)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setautocapitalizationType Lib uikitlibname Selector "setAutocapitalizationType:" (id as ptr, value as UITextAutocapitalizationType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setautocorrectionType Lib uikitlibname Selector "setAutocorrectionType:" (id as ptr, value as UITextAutocorrectionType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setenablesReturnKeyAutomatically Lib uikitlibname Selector "setEnablesReturnKeyAutomatically:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setkeyboardAppearance Lib uikitlibname Selector "setKeyboardAppearance:" (id as ptr, value as UIKeyboardAppearance)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setkeyboardType Lib uikitlibname Selector "setKeyboardType:" (id as ptr, value as UIKeyboardType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setreturnKeyType Lib uikitlibname Selector "setReturnKeyType:" (id as ptr, value as UIReturnKeyType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setsecureTextEntry Lib uikitlibname Selector "setSecureTextEntry:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setspellCheckingType Lib uikitlibname Selector "setSpellCheckingType:" (id as ptr, value as UITextSpellCheckingType)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5468652064726177696E672072656374616E676C6520666F72207468652074657874206669656C64E280997320746578742E
		Function TextRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  Declare Function textRectForBounds lib UIKitLibname selector "textRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		  return  textRectForBounds (id, bounds)
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 546865207573657220686173207374617274656420616E2065646974696E672073657373696F6E2E
		Event DidBeginEditing()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5468652065646974696E672073657373696F6E207761732066696E69736865642E
		Event DidEndEditing()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E205472756520696620796F7520646F206E6F742077616E7420746865207573657220746F2062652061626C6520746F2065646974206E6F772E
		Event ShouldBeginEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865207465787469656C64E28099732063617074696F6E2073746172696E6720617420537461727420666F72204C656E677468206368617261637465727320776173206368616E67656420616761696E737420746865206E657720746578742E2052657475726E205472756520746F20646973616C6C6F7720746865206368616E67652E
		Event ShouldChangeCharactersInRange(Start as UInteger, Length as UInteger, Replacement as Text) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E20547275652069662074686520746578742073686F756C64206E6F7420626520636C65617265642E
		Event ShouldClear() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207472756520696620796F7520646F206E6F742077616E74207468652065646974696E672073657373696F6E20746F20656E642E
		Event ShouldEndEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207472756520696620796F752077616E7420746F207375707072657373206120686974206F6E207468652052657475726E20627574746F6E2E
		Event ShouldReturn() As Boolean
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520666F6E742073697A652073686F756C64206265207265647563656420696E206F7264657220746F2066697420746865207465787420737472696E6720696E746F207468652074657874206669656C64E280997320626F756E64696E672072656374616E676C652E
		#tag Getter
			Get
			  Return getAdjustsFontSizeToFitWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAdjustsFontSizeToFitWidth value
			End Set
		#tag EndSetter
		AdjustsFontSizeToFitWidth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652075736572206D61792065646974207468652061747472696275746573206F6620746865207465787420696E207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function allowsEditingTextAttributes lib UIKitLibname selector "allowsEditingTextAttributes" (id as ptr) as boolean
			  return allowsEditingTextAttributes (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setAllowsEditingTextAttributes lib UIKitLibname selector "setAllowsEditingTextAttributes:" (id as ptr, value as boolean)
			  setAllowsEditingTextAttributes id, value
			End Set
		#tag EndSetter
		AllowsEditingTextAttributes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C6564207465787420646973706C61796564206279207468652074657874206669656C642E
		#tag Getter
			Get
			  Return getAttributedText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttributedText value
			End Set
		#tag EndSetter
		AttributedCaption As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C656420737472696E67207468617420697320646973706C61796564207768656E207468657265206973206E6F206F74686572207465787420696E207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function attributedPlaceholder lib UIKitLibname selector "attributedPlaceholder" (id as ptr) as Ptr
			  Return AppleAttributedString.MakeFromPtr (attributedPlaceholder (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAttributedPlaceholder lib UIKitLibname selector "setAttributedPlaceholder:" (id as ptr, value as Ptr)
			  setAttributedPlaceholder id, if ( value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AttributedPlaceholder As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206175746F2D6361706974616C697A6174696F6E207374796C6520666F72207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return getautocapitalizationType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautocapitalizationType id, value
			End Set
		#tag EndSetter
		AutocapitalizationType As UITextAutocapitalizationType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206175746F636F7272656374696F6E207374796C6520666F72207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return getautocorrectionType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautocorrectionType id, value
			End Set
		#tag EndSetter
		AutocorrectionType As UITextAutocorrectionType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765207468617420726570726573656E747320746865206261636B67726F756E6420617070656172616E6365206F66207468652074657874206669656C64207768656E20697420697320656E61626C65642E
		#tag Getter
			Get
			  Declare Function background lib UIKitLibname selector "background" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (background(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setBackground lib UIKitLibname selector "setBackground:" (id as ptr, value as ptr)
			  setBackground id, value.id
			End Set
		#tag EndSetter
		BackgroundImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E280997320626F726465722072656374616E676C652E
		#tag Getter
			Get
			  Return BorderRectForBounds (Bounds)
			End Get
		#tag EndGetter
		BorderRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F72646572207374796C652075736564206279207468652074657874206669656C642E0A4966207468652076616C75652069732073657420746F2074686520554954657874426F726465725374796C65526F756E64656452656374207374796C652C2074686520637573746F6D206261636B67726F756E6420696D616765206173736F6369617465642077697468207468652074657874206669656C642069732069676E6F7265642E
		#tag Getter
			Get
			  declare Function borderStyle lib UIKitLibname selector "borderStyle" (id as ptr) as UITextFieldBorderStyle
			  return borderStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setBorderStyle lib UIKitLibname selector "setBorderStyle:" (id as ptr, style as UITextFieldBorderStyle)
			  setBorderStyle id, value
			End Set
		#tag EndSetter
		BorderStyle As UITextFieldBorderStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420646973706C61796564206279207468652074657874206669656C642E
		#tag Getter
			Get
			  Return GetText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setText value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  // static targetID as ptr = FoundationFramework.NSClassFromString ("UITextField")
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    // methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			    methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			    
			    // #if Target64Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    // #elseif Target32Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    // #endif
			    
			    //TraitEnvironment Protocol
			    // methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			    
			    
			    //Add UIResponder methods too
			    // methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			    methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			    
			    if ApplePress.ClassAvailable then
			      methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			    end if
			    
			    //UITextfield methods
			    methods.Append new TargetClassMethodHelper ("textFieldShouldBeginEditing:", AddressOf impl_textFieldShouldBeginEditing, "B@:@")
			    methods.Append new TargetClassMethodHelper ("textFieldDidBeginEditing:", AddressOf impl_textFieldDidBeginEditing, "v@:@")
			    methods.Append new TargetClassMethodHelper ("textFieldShouldEndEditing:", AddressOf impl_textFieldShouldEndEditing, "B:@")
			    methods.Append new TargetClassMethodHelper ("textFieldDidEndEditing:", AddressOf impl_textFieldDidEndEditing, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper ("textField:shouldChangeCharactersInRange:replacementString:", AddressOf impl_textFieldshouldChangeCharactersInRange, "B@:@{NSRange}@")
			    methods.Append new TargetClassMethodHelper ("textFieldShouldClear:", AddressOf impl_textFieldShouldClear, "B@:@")
			    methods.Append new TargetClassMethodHelper ("textFieldShouldReturn:", AddressOf impl_textFieldShouldReturn, "B@:@")
			    
			    
			    targetID = BuildTargetClass ("UITextField", "iOSLibTextField",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768656E20746865207374616E6461726420636C65617220627574746F6E206170706561727320696E207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function clearButtonMode lib UIKitLibname selector "clearButtonMode" (id as ptr) as UITextFieldViewMode
			  return clearButtonMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearButtonMode lib UIKitLibname selector "setClearButtonMode:" (id as ptr, value as UITextFieldViewMode)
			  setClearButtonMode id, value
			End Set
		#tag EndSetter
		ClearButtonMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C6520666F7220746865206275696C742D696E20636C65617220627574746F6E2E
		#tag Getter
			Get
			  Return ClearButtonRectForBounds (Bounds)
			End Get
		#tag EndGetter
		ClearButtonRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206669656C642072656D6F766573206F6C642074657874207768656E2065646974696E6720626567696E732E
		#tag Getter
			Get
			  Declare Function clearsOnBeginEditing lib UIKitLibname selector "clearsOnBeginEditing" (id as ptr) as boolean
			  return clearsOnBeginEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearsOnBeginEditing lib UIKitLibname selector "setClearsOnBeginEditing:" (id as ptr, value as boolean)
			  setClearsOnBeginEditing id, value
			End Set
		#tag EndSetter
		ClearsOnEditBegin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220696E73657274696E672074657874207265706C61636573207468652070726576696F757320636F6E74656E74732E
		#tag Getter
			Get
			  Declare Function clearsOnInsertion lib UIKitLibname selector "clearsOnInsertion" (id as ptr) as boolean
			  return clearsOnInsertion (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearsOnInsertion lib UIKitLibname selector "setClearsOnInsertion:" (id as ptr, value as boolean)
			  setClearsOnInsertion id, value
			End Set
		#tag EndSetter
		ClearsOnInsertion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C74206174747269627574657320746F206170706C7920746F2074686520746578742E
		#tag Getter
			Get
			  Declare Function defaultTextAttributes lib UIKitLibname selector "defaultTextAttributes" (id as ptr) as Ptr
			  Return AppleDictionary.MakeFromPtr( defaultTextAttributes (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setdefaultTextAttributes lib UIKitLibname selector "setdefaultTextAttributes:" (id as ptr, value as Ptr)
			  setdefaultTextAttributes id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		DefaultTextAttributes As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74726F6CE28099732064656C65676174652E20496E207468697320637573746F6D20636C617373206175746F6D61746963616C6C792069642E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr (getDelegate (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Delegate_ As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765207468617420726570726573656E747320746865206261636B67726F756E6420617070656172616E6365206F66207468652074657874206669656C64207768656E2069742069732064697361626C65642E
		#tag Getter
			Get
			  Declare Function disabledBackground lib UIKitLibname selector "disabledBackground" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (disabledBackground(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setDisabledBackground lib UIKitLibname selector "setDisabledBackground:" (id as ptr, value as ptr)
			  setDisabledBackground id, value.id
			End Set
		#tag EndSetter
		DisabledBackgroundImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206669656C642069732063757272656E746C7920696E2065646974206D6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function isEditing lib UIKitLibname selector "isEditing" (id as ptr) as boolean
			  return isEditing (id)
			End Get
		#tag EndGetter
		Editing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732072656374616E676C6520666F72206564697461626520746578742E
		#tag Getter
			Get
			  Return EditingRectForBounds (Bounds)
			End Get
		#tag EndGetter
		EditingRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652052657475726E206B6579206973206175746F6D61746963616C6C7920656E61626C6564207768656E20746865207573657220697320656E746572696E6720746578742E
		#tag Getter
			Get
			  return getenablesReturnKeyAutomatically (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setenablesReturnKeyAutomatically id, value
			End Set
		#tag EndSetter
		EnablesReturnKeyAutomatically As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74206F662074686520746578742E
		#tag Getter
			Get
			  return getFont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfont value
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365207374796C65206F6620746865206B6579626F6172642074686174206973206173736F6369617465642077697468207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return getkeyboardAppearance (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setkeyboardAppearance id, value
			End Set
		#tag EndSetter
		KeyboardAppearance As UIKeyboardAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B6579626F617264207374796C65206173736F6369617465642077697468207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return getkeyboardType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setkeyboardType id, value
			End Set
		#tag EndSetter
		KeyboardType As UIKeyboardType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7665726C6179207669657720646973706C61796564206F6E20746865206C65667420286F72206C656164696E67292073696465206F66207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function leftView lib UIKitLibname selector "leftView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (leftView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLeftView lib UIKitLibname selector "setLeftView:" (id as ptr, value as ptr)
			  setLeftView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		LeftView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768656E20746865206C656674206F7665726C61792076696577206170706561727320696E207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function leftViewMode lib UIKitLibname selector "leftViewMode" (id as ptr) as UITextFieldViewMode
			  return leftViewMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setLeftViewMode lib UIKitLibname selector "setLeftViewMode:" (id as ptr, value as UITextFieldViewMode)
			  setLeftViewMode id, value
			End Set
		#tag EndSetter
		LeftViewMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C65206F6620746865207265636569766572E2809973206C656674206F7665726C617920766965772E
		#tag Getter
			Get
			  Return LeftViewRectForBounds (Bounds)
			End Get
		#tag EndGetter
		LeftViewRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520736D616C6C657374207065726D69737369626C6520666F6E74207769746820776869636820746F2064726177207468652074657874206669656C64E280997320746578742E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function minimumFontSize lib UIKitLibname selector "minimumFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function minimumFontSize lib UIKitLibname selector "minimumFontSize" (id as ptr) as single
			  #endif
			  return  minimumFontSize (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setMinimumFontSize lib UIKitLibname selector "setMinimumFontSize:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setMinimumFontSize lib UIKitLibname selector "setMinimumFontSize:" (id as ptr, value as single)
			  #endif
			  setMinimumFontSize id, value
			End Set
		#tag EndSetter
		MinimumFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E67207468617420697320646973706C61796564207768656E207468657265206973206E6F206F74686572207465787420696E207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function placeholder lib UIKitLibname selector "placeholder" (id as ptr) as CFStringRef
			  Return placeholder (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPlaceholder lib UIKitLibname selector "setPlaceholder:" (id as ptr, value as CFStringRef)
			  setPlaceholder id, value
			End Set
		#tag EndSetter
		Placeholder As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C6520666F72207468652074657874206669656C64E280997320706C616365686F6C6465722074657874
		#tag Getter
			Get
			  Return PlaceholderRectForBounds (Bounds)
			End Get
		#tag EndGetter
		PlaceholderRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076697369626C65207469746C65206F66207468652052657475726E206B65792E
		#tag Getter
			Get
			  return getreturnKeyType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setreturnKeyType id, value
			End Set
		#tag EndSetter
		ReturnKeyType As UIReturnKeyType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7665726C6179207669657720646973706C61796564206F6E2074686520726967687420286F7220747261696C696E67292073696465206F66207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function rightView lib UIKitLibname selector "rightView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (rightView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setRightView lib UIKitLibname selector "setRightView:" (id as ptr, value as ptr)
			  setRightView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		RightView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768656E20746865207269676874206F7665726C61792076696577206170706561727320696E207468652074657874206669656C642E
		#tag Getter
			Get
			  Declare Function rightViewMode lib UIKitLibname selector "rightViewMode" (id as ptr) as UITextFieldViewMode
			  return rightViewMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setRightViewMode lib UIKitLibname selector "setRightViewMode:" (id as ptr, value as UITextFieldViewMode)
			  setRightViewMode id, value
			End Set
		#tag EndSetter
		RightViewMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E67206C6F636174696F6E206F6620746865206669656C642773207269676874206F7665726C617920766965772E
		#tag Getter
			Get
			  Return RightViewRectForBounds (Bounds)
			End Get
		#tag EndGetter
		RightViewRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4964656E7469666965732077686574686572207468652074657874206F626A6563742073686F756C642068696465207468652074657874206265696E6720656E74657265642E
		#tag Getter
			Get
			  return getsecureTextEntry (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsecureTextEntry id, value
			End Set
		#tag EndSetter
		Secure As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207370656C6C2D636865636B696E67207374796C6520666F72207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return getspellCheckingType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setspellCheckingType id, value
			End Set
		#tag EndSetter
		SpellCheckingType As UITextSpellCheckingType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746563686E6971756520746F2075736520666F7220616C69676E696E672074686520746578742E
		#tag Getter
			Get
			  Declare Function textAlignment lib UIKitLibname selector "textAlignment" (id as ptr) as NSTextAlignment
			  return textAlignment (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setTextAlignment lib UIKitLibname selector "setTextAlignment:" (id as ptr, value as NSTextAlignment)
			  setTextAlignment id, value
			End Set
		#tag EndSetter
		TextAlignment As NSTextAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520746578742E
		#tag Getter
			Get
			  return getTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTextColor value
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C6520666F72207468652074657874206669656C64E280997320746578742E
		#tag Getter
			Get
			  Return TextRectForBounds (Bounds)
			End Get
		#tag EndGetter
		TextRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206174747269627574657320746F206170706C7920746F206E65772074657874206265696E6720656E74657265642062792074686520757365722E
		#tag Getter
			Get
			  Declare Function typingAttributes lib UIKitLibname selector "typingAttributes" (id as ptr) as ptr
			  return AppleDictionary.MakeFromPtr (typingAttributes(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTypingAttributes lib UIKitLibname selector "setTypingAttributes:" (id as ptr, value as ptr)
			  setTypingAttributes id, value.id
			End Set
		#tag EndSetter
		TypingAttributes As AppleDictionary
	#tag EndComputedProperty


	#tag Enum, Name = NSTextAlignment, Flags = &h0
		Left
		  Center
		  Right
		  Justified
		Natural
	#tag EndEnum

	#tag Enum, Name = UIKeyboardAppearance, Type = Integer, Flags = &h0
		Default
		  Dark
		Light
	#tag EndEnum

	#tag Enum, Name = UIKeyboardType, Type = Integer, Flags = &h0
		Default
		  ASCIICapable
		  NumbersAndPunctuation
		  URL
		  NumberPad
		  PhonePad
		  NamePhonePad
		  EMailAddress
		  DecimalPad
		  Twitter
		WebSearch
	#tag EndEnum

	#tag Enum, Name = UIReturnKeyType, Type = Integer, Flags = &h0
		Default
		  Go
		  Google
		  Join
		  Next_
		  Route
		  Search
		  Send
		  Yahoo
		  Done
		  EmergencyCall
		Continue_
	#tag EndEnum

	#tag Enum, Name = UITextAutocapitalizationType, Type = Integer, Flags = &h0
		None
		  Words
		  Sentences
		AllCharacters
	#tag EndEnum

	#tag Enum, Name = UITextAutocorrectionType, Type = Integer, Flags = &h0
		Default
		  No
		Yes
	#tag EndEnum

	#tag Enum, Name = UITextFieldBorderStyle, Flags = &h0
		None
		  Line
		  Bezel
		RoundedRect
	#tag EndEnum

	#tag Enum, Name = UITextFieldViewMode, Flags = &h0
		Never
		  WhileEditing
		  UnlessEditing
		Always
	#tag EndEnum

	#tag Enum, Name = UITextSpellCheckingType, Type = Integer, Flags = &h0
		Default
		  No
		Yes
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdjustsFontSizeToFitWidth"
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
			Name="AutocapitalizationType"
			Group="Behavior"
			Type="UITextAutocapitalizationType"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Words"
				"2 - Sentences"
				"3 - AllCharacters"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutocorrectionType"
			Group="Behavior"
			Type="UITextAutocorrectionType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - No"
				"2 - Yes"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderStyle"
			Group="Behavior"
			Type="UITextFieldBorderStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Line"
				"2 - Bezel"
				"3 - RoundedRect"
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
			Name="ClearButtonMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnEditBegin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnInsertion"
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
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnablesReturnKeyAutomatically"
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
			Name="KeyboardAppearance"
			Group="Behavior"
			Type="UIKeyboardAppearance"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Dark"
				"2 - Light"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyboardType"
			Group="Behavior"
			Type="UIKeyboardType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - ASCIICapable"
				"2 - NumbersAndPunctuation"
				"3 - URL"
				"4 - NumberPad"
				"5 - PhonePad"
				"6 - NamePhonePad"
				"7 - EMailAddress"
				"8 - DecimalPad"
				"9 - Twitter"
				"10 - WebSearch"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeftViewMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumFontSize"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Placeholder"
			Group="Behavior"
			Type="Text"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReturnKeyType"
			Group="Behavior"
			Type="UIReturnKeyType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Go"
				"2 - Google"
				"3 - Join"
				"4 - Next_"
				"5 - Route"
				"6 - Search"
				"7 - Send"
				"8 - Yahoo"
				"9 - Done"
				"10 - EmergencyCall"
				"11 - Continue_"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightViewMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Secure"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpellCheckingType"
			Group="Behavior"
			Type="UITextSpellCheckingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - No"
				"2 - Yes"
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
			Name="TextAlignment"
			Group="Behavior"
			Type="NSTextAlignment"
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
