#tag Class
Protected Class iOSLibTextfield
Inherits iOSLIbView
	#tag Event , Description = 4669726573207768656E20612073756276696577207761732061646465642E
		Sub AddedSubview(Subview as AppleView)
		  #pragma unused subview
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20636C6F7365732E
		Sub Close()
		  RaiseEvent close
		  mid = nil
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As uinteger
		  dim subID as uinteger = raiseEvent CreateView
		  if  subid = 0 then
		    dim myview as new AppleTextfield (FoundationFrameWork.nsmakerect (0,0,100,100))
		    mid = myview
		    mid.UserInteractionEnabled = true
		    // myview.RegisterControl (self)
		    AttachHandlers
		    return uinteger(myview.id)
		  else
		    return subid
		  end if
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720686173206368616E676564206974732073697A652C206C696B65206166746572206120726F746174696F6E2E
		Sub Resized()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Sub TouchesBegan(Touches() as appletouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20612073797374656D2D6576656E7420286C696B65206C6F77206D656D6F7279292063616E63656C73206120746F756368206576656E742E
		Sub TouchesCancelled(Touches() as AppleTouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Sub TouchesEnded(Touches() as AppleTouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E206F6E65206F72206D6F72652066696E67657273206173736F636961746564207769746820616E206576656E74206D6F76652077697468696E20612076696577206F722077696E646F772E
		Sub TouchesMoved(Touches() as AppleTouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520694F5320696E7465726661636520656E7669726F6E6D656E74206368616E6765642E
		Sub TraitCollectionChanged(PreviousCollection As AppleTraitCollection)
		  RaiseEvent TraitCollectionChanged (PreviousCollection)
		  RaiseEvent Resized
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772069732061626F757420746F2072656D6F766520616E6F7468657220766965772E
		Sub WillRemoveSubview(Subview as AppleView)
		  #pragma unused Subview
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772069732061626F757420746F2062652073686F776E20696E20612077696E646F772E
		Sub WillShow(window as applewindow)
		  me.UserInteractionEnabled = true
		  me.ExclusiveTouch = false
		  #pragma unused window
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AttachHandlers()
		  // AddHandler mid.DidAddSubview, AddressOf informonDidAddSubview
		  AddHandler mid.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		  AddHandler mid.DidMoveToWindow, AddressOf informOnDidMoveToWindow
		  // AddHandler mid.DrawRect, AddressOf informOnDrawRect
		  // AddHandler mid.layoutSubviews, AddressOf informOnlayoutSubviews
		  AddHandler mid.tintColorDidChange, AddressOf informontintColorDidChange
		  // AddHandler mid.TraitCollectionDidChange, AddressOf informonTraitCollectionDidChange
		  AddHandler mid.WillMoveToSuperview, AddressOf informonWillMoveToSuperview
		  // AddHandler mid.WillMoveToWindow, AddressOf informonWillMoveToWindow
		  // AddHandler mid.WillRemoveSubview, AddressOf informonWillRemoveSubview
		  
		  
		  // AddHandler AppleObject.TouchesBeganwithEvent, AddressOf informonTouchesBeganwithEvent
		  // AddHandler AppleObject.TouchesCancelledwithEvent, AddressOf informonTouchesCancelledwithEvent
		  // AddHandler AppleObject.TouchesEndedwithEvent, AddressOf informonTouchesEndedwithEvent
		  // AddHandler AppleObject.TouchesMovedwithEvent, AddressOf informonTouchesMovedwithEvent
		  AddHandler AppleObject.EstimatedPropertiesUpdated, AddressOf informonEstimatedPropertiesUpdated
		  
		  
		  AddHandler AppleObject.MotionBeganwithEvent, AddressOf informonMotionBeganwithEvent
		  AddHandler AppleObject.MotionCancelledwithEvent, AddressOf informonMotionCancelledwithEvent
		  AddHandler AppleObject.MotionEndedwithEvent, AddressOf informonMotionEndedwithEvent
		  
		  AddHandler AppleObject.PressesBeganwithEvent, AddressOf informonPressesBeganwithEvent
		  AddHandler AppleObject.PressesCancelledwithEvent, AddressOf informonPressesCancelledwithEvent
		  AddHandler AppleObject.PressesEndedwithEvent, AddressOf informonPressesEndedwithEvent
		  AddHandler AppleObject.PressesChangedwithEvent, AddressOf informonPressesChangedwithEvent
		  
		  AddHandler AppleObject.AnimationDidStart, Addressof informonAnimationDidStart
		  AddHandler AppleObject.animationDidStop, AddressOf informonAnimationDidStop
		  
		  AddHandler AppleObject.DidBeginEditing, addressof informonDidBeginEditing
		  AddHandler AppleObject.ShouldBeginEditing, addressof informonShouldBeginEditing
		  AddHandler AppleObject.DidEndEditing, addressof informonDidEndEditing
		  AddHandler AppleObject.ShouldChangeCharactersInRange, addressof informonShouldChangeCharactersInRange
		  AddHandler AppleObject.ShouldClear, addressof informonShouldClear
		  AddHandler AppleObject.ShouldEndEditing, addressof informonShouldEndEditing
		  AddHandler AppleObject.ShouldReturn, addressof informonShouldReturn
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 447261777320746865206669656C642773207465787420696E20746865207370656369666965642072656374616E676C6520286966206120636F6E746578742065786973747329
		Sub DrawText(rect as xojo.core.rect)
		  AppleObject.DrawText (rect.tonsrect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidBeginEditing(view as AppleTextfield)
		  RaiseEvent EditBegin
		  
		  
		  #pragma unused view
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEndEditing(view as appletextfield)
		  RaiseEvent TextChange
		  
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldBeginEditing(view as AppleTextfield) As boolean
		  return RaiseEvent ShouldNotEdit
		  
		  
		  #pragma unused view
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldChangeCharactersInRange(view as appletextfield, Start as UInteger, Length as UInteger, Replacement as Text) As boolean
		  return RaiseEvent ShouldNotChangeCharacters (Start, Length, Replacement)
		  #pragma unused view
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldClear(view as appletextfield) As Boolean
		  return RaiseEvent ShouldNotClear
		  #pragma unused view
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldEndEditing(view as appletextfield) As Boolean
		  return RaiseEvent ShouldNotEndEdit
		  #pragma unused view
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldReturn(view as appletextfield) As Boolean
		  return RaiseEvent ShouldNotReturn
		  
		  #pragma unused view
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers()
		  // AddHandler mid.DidAddSubview, AddressOf informonDidAddSubview
		  RemoveHandler mid.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		  RemoveHandler mid.DidMoveToWindow, AddressOf informOnDidMoveToWindow
		  // AddHandler mid.DrawRect, AddressOf informOnDrawRect
		  // AddHandler mid.layoutSubviews, AddressOf informOnlayoutSubviews
		  RemoveHandler mid.tintColorDidChange, AddressOf informontintColorDidChange
		  // AddHandler mid.TraitCollectionDidChange, AddressOf informonTraitCollectionDidChange
		  RemoveHandler mid.WillMoveToSuperview, AddressOf informonWillMoveToSuperview
		  // AddHandler mid.WillMoveToWindow, AddressOf informonWillMoveToWindow
		  // AddHandler mid.WillRemoveSubview, AddressOf informonWillRemoveSubview
		  
		  
		  // AddHandler AppleObject.TouchesBeganwithEvent, AddressOf informonTouchesBeganwithEvent
		  // AddHandler AppleObject.TouchesCancelledwithEvent, AddressOf informonTouchesCancelledwithEvent
		  // AddHandler AppleObject.TouchesEndedwithEvent, AddressOf informonTouchesEndedwithEvent
		  // AddHandler AppleObject.TouchesMovedwithEvent, AddressOf informonTouchesMovedwithEvent
		  RemoveHandler AppleObject.EstimatedPropertiesUpdated, AddressOf informonEstimatedPropertiesUpdated
		  
		  
		  RemoveHandler AppleObject.MotionBeganwithEvent, AddressOf informonMotionBeganwithEvent
		  RemoveHandler AppleObject.MotionCancelledwithEvent, AddressOf informonMotionCancelledwithEvent
		  RemoveHandler AppleObject.MotionEndedwithEvent, AddressOf informonMotionEndedwithEvent
		  
		  RemoveHandler AppleObject.PressesBeganwithEvent, AddressOf informonPressesBeganwithEvent
		  RemoveHandler AppleObject.PressesCancelledwithEvent, AddressOf informonPressesCancelledwithEvent
		  RemoveHandler AppleObject.PressesEndedwithEvent, AddressOf informonPressesEndedwithEvent
		  RemoveHandler AppleObject.PressesChangedwithEvent, AddressOf informonPressesChangedwithEvent
		  
		  RemoveHandler AppleObject.AnimationDidStart, Addressof informonAnimationDidStart
		  RemoveHandler AppleObject.animationDidStop, AddressOf informonAnimationDidStop
		  
		  RemoveHandler AppleObject.DidBeginEditing, addressof informonDidBeginEditing
		  RemoveHandler AppleObject.ShouldBeginEditing, addressof informonShouldBeginEditing
		  RemoveHandler AppleObject.DidEndEditing, addressof informonDidEndEditing
		  RemoveHandler AppleObject.ShouldChangeCharactersInRange, addressof informonShouldChangeCharactersInRange
		  RemoveHandler AppleObject.ShouldClear, addressof informonShouldClear
		  RemoveHandler AppleObject.ShouldEndEditing, addressof informonShouldEndEditing
		  RemoveHandler AppleObject.ShouldReturn, addressof informonShouldReturn
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CreateView() As uinteger
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditBegin()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Resized()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotChangeCharacters(Start as UInteger, Length as UInteger, Replacement as Text) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotClear() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotEdit() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotEndEdit() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotReturn() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextChange()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TraitCollectionChanged(PreviousCollection as AppleTraitCollection)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520666F6E742073697A652073686F756C64206265207265647563656420696E206F7264657220746F2066697420746865207465787420737472696E6720696E746F207468652074657874206669656C64E280997320626F756E64696E672072656374616E676C652E
		#tag Getter
			Get
			  Return me.AppleObject.AdjustsFontSizeToFitWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.AdjustsFontSizeToFitWidth = value
			End Set
		#tag EndSetter
		AdjustFontSize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mFontType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mFontType = value
			End Set
		#tag EndSetter
		aFontType As FontSelection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652075736572206D61792065646974207468652061747472696275746573206F6620746865207465787420696E207468652074657874206669656C642E
		#tag Getter
			Get
			  return me.AppleObject.AllowsEditingTextAttributes
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.AllowsEditingTextAttributes = value
			End Set
		#tag EndSetter
		AllowTextAttributesEdit As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appletextfield(mID)
			End Get
		#tag EndGetter
		AppleObject As AppleTextfield
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C6564207465787420646973706C61796564206279207468652074657874206669656C642E
		#tag Getter
			Get
			  return me.AppleObject.AttributedCaption
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.AttributedCaption = value
			End Set
		#tag EndSetter
		AttributedCaption As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C656420737472696E67207468617420697320646973706C61796564207768656E207468657265206973206E6F206F74686572207465787420696E207468652074657874206669656C642E
		#tag Getter
			Get
			  return me.AppleObject.AttributedPlaceholder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.AttributedPlaceholder = value
			End Set
		#tag EndSetter
		AttributedPlaceholder As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206175746F2D6361706974616C697A6174696F6E207374796C6520666F72207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return me.AppleObject.AutocapitalizationType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.AutocapitalizationType = value
			End Set
		#tag EndSetter
		AutocapitalizationType As AppleTextfield.UITextAutocapitalizationType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206175746F636F7272656374696F6E207374796C6520666F72207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return me.AppleObject.AutocorrectionType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.AutocorrectionType = value
			End Set
		#tag EndSetter
		AutocorrectionType As appletextfield.UITextAutocorrectionType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765207468617420726570726573656E747320746865206261636B67726F756E6420617070656172616E6365206F66207468652074657874206669656C64207768656E20697420697320656E61626C65642E
		#tag Getter
			Get
			  return me.AppleObject.BackgroundImage.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.BackgroundImage = value.toAppleImage
			End Set
		#tag EndSetter
		BackgroundImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E280997320626F726465722072656374616E676C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return me.AppleObject.BorderRect.tocorerect
			End Get
		#tag EndGetter
		BorderRect As xojo.core.rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F72646572207374796C652075736564206279207468652074657874206669656C642E0A4966207468652076616C75652069732073657420746F2074686520554954657874426F726465725374796C65526F756E64656452656374207374796C652C2074686520637573746F6D206261636B67726F756E6420696D616765206173736F6369617465642077697468207468652074657874206669656C642069732069676E6F7265642E
		#tag Getter
			Get
			  return me.AppleObject.BorderStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.BorderStyle = value
			End Set
		#tag EndSetter
		BorderStyle As appletextfield.UITextFieldBorderStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420646973706C61796564206279207468652074657874206669656C642E
		#tag Getter
			Get
			  return me.AppleObject.Caption
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.caption = value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768656E20746865207374616E6461726420636C65617220627574746F6E206170706561727320696E207468652074657874206669656C642E
		#tag Getter
			Get
			  return AppleObject.ClearButtonMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ClearButtonMode = value
			End Set
		#tag EndSetter
		ClearButtonMode As appletextfield.UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C6520666F7220746865206275696C742D696E20636C65617220627574746F6E2E
		#tag Getter
			Get
			  return AppleObject.ClearButtonRect.tocorerect
			End Get
		#tag EndGetter
		ClearButtonRect As xojo.core.rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206669656C642072656D6F766573206F6C642074657874207768656E2065646974696E6720626567696E732E
		#tag Getter
			Get
			  Return AppleObject.ClearsOnEditBegin
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ClearsOnEditBegin = value
			End Set
		#tag EndSetter
		ClearsOnEditBegin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220696E73657274696E672074657874207265706C61636573207468652070726576696F757320636F6E74656E74732E
		#tag Getter
			Get
			  return AppleObject.ClearsOnInsertion
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ClearsOnInsertion = value
			End Set
		#tag EndSetter
		ClearsOnInsertion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765207468617420726570726573656E747320746865206261636B67726F756E6420617070656172616E6365206F66207468652074657874206669656C64207768656E2069742069732064697361626C65642E
		#tag Getter
			Get
			  return AppleObject.DisabledBackgroundImage.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.DisabledBackgroundImage = value.toAppleImage
			End Set
		#tag EndSetter
		DisabledBackgroundImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206669656C642069732063757272656E746C7920696E2065646974206D6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleObject.Editing
			End Get
		#tag EndGetter
		Editing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732072656374616E676C6520666F72206564697461626520746578742E
		#tag Getter
			Get
			  return AppleObject.EditingRect.tocorerect
			End Get
		#tag EndGetter
		EditingRect As xojo.core.rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652052657475726E206B6579206973206175746F6D61746963616C6C7920656E61626C6564207768656E20746865207573657220697320656E746572696E6720746578742E
		#tag Getter
			Get
			  return AppleObject.EnablesReturnKeyAutomatically
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.EnablesReturnKeyAutomatically = value
			End Set
		#tag EndSetter
		EnablesReturnKeyAutomatically As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74206F662074686520746578742E
		#tag Getter
			Get
			  return AppleObject.Font
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Font = value
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return font.FontName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case aFontType
			  case FontSelection.System
			    AppleObject.Font = AppleFont.SystemFont
			  case FontSelection.SystemSmall
			    AppleObject.Font = AppleFont.SmallSystemFont
			  case FontSelection.Custom
			    AppleObject.font = new applefont (value, FontSize)
			  end select
			  
			  
			End Set
		#tag EndSetter
		FontName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case aFontType
			  case FontSelection.System
			    return AppleFont.SystemFontSize
			  case FontSelection.SystemSmall
			    return AppleFont.SmallSystemFontSize
			  case FontSelection.Custom
			    return AppleObject.Font.PointSize
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case aFontType
			  case FontSelection.System
			    AppleObject.Font = AppleFont.SystemFont
			  case FontSelection.SystemSmall
			    AppleObject.Font = AppleFont.SmallSystemFont
			  case FontSelection.Custom
			    AppleObject.font = new applefont (FontName, value)
			  end select
			  
			  
			End Set
		#tag EndSetter
		FontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365207374796C65206F6620746865206B6579626F6172642074686174206973206173736F6369617465642077697468207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return AppleObject.KeyboardAppearance
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.KeyboardAppearance = value
			End Set
		#tag EndSetter
		KeyboardAppearance As appletextfield.UIKeyboardAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B6579626F617264207374796C65206173736F6369617465642077697468207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return AppleObject.KeyboardType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.KeyboardType = value
			End Set
		#tag EndSetter
		KeyboardType As appletextfield.UIKeyboardType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7665726C6179207669657720646973706C61796564206F6E20746865206C65667420286F72206C656164696E67292073696465206F66207468652074657874206669656C642E
		#tag Getter
			Get
			  return AppleObject.LeftView
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.LeftView = value
			End Set
		#tag EndSetter
		LeftView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768656E20746865206C656674206F7665726C61792076696577206170706561727320696E207468652074657874206669656C642E
		#tag Getter
			Get
			  return AppleObject.LeftViewMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.LeftViewMode = value
			End Set
		#tag EndSetter
		LeftViewMode As appletextfield.UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C65206F6620746865207265636569766572E2809973206C656674206F7665726C617920766965772E
		#tag Getter
			Get
			  return AppleObject.LeftViewRect.tocorerect
			End Get
		#tag EndGetter
		LeftViewRect As xojo.core.rect
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mFontType As FontSelection = Fontselection.System
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520736D616C6C657374207065726D69737369626C6520666F6E74207769746820776869636820746F2064726177207468652074657874206669656C64E280997320746578742E
		#tag Getter
			Get
			  return AppleObject.MinimumFontSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.MinimumFontSize = value
			End Set
		#tag EndSetter
		MinimumFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4964656E7469666965732077686574686572207468652074657874206F626A6563742073686F756C642068696465207468652074657874206265696E6720656E74657265642E
		#tag Getter
			Get
			  return AppleObject.Secure
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.secure = value
			End Set
		#tag EndSetter
		Password As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E67207468617420697320646973706C61796564207768656E207468657265206973206E6F206F74686572207465787420696E207468652074657874206669656C642E
		#tag Getter
			Get
			  return AppleObject.Placeholder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Placeholder = value
			End Set
		#tag EndSetter
		Placeholder As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C6520666F72207468652074657874206669656C64E280997320706C616365686F6C6465722074657874
		#tag Getter
			Get
			  return AppleObject.PlaceholderRect.tocorerect
			End Get
		#tag EndGetter
		PlaceholderRect As xojo.core.rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076697369626C65207469746C65206F66207468652052657475726E206B65792E
		#tag Getter
			Get
			  return AppleObject.ReturnKeyType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.ReturnKeyType = value
			End Set
		#tag EndSetter
		ReturnKeyType As appletextfield.UIReturnKeyType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7665726C6179207669657720646973706C61796564206F6E2074686520726967687420286F7220747261696C696E67292073696465206F66207468652074657874206669656C642E
		#tag Getter
			Get
			  return AppleObject.RightView
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.RightView = value
			End Set
		#tag EndSetter
		RightView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768656E20746865207269676874206F7665726C61792076696577206170706561727320696E207468652074657874206669656C642E
		#tag Getter
			Get
			  return AppleObject.RightViewMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.RightViewMode = value
			End Set
		#tag EndSetter
		RightViewMode As appletextfield.UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E67206C6F636174696F6E206F6620746865206669656C642773207269676874206F7665726C617920766965772E
		#tag Getter
			Get
			  Return AppleObject.RightViewRect.tocorerect
			End Get
		#tag EndGetter
		RightViewRect As xojo.core.rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207370656C6C2D636865636B696E67207374796C6520666F72207468652074657874206F626A6563742E
		#tag Getter
			Get
			  return AppleObject.SpellCheckingType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.SpellCheckingType = value
			End Set
		#tag EndSetter
		SpellCheckingType As appletextfield.UITextSpellCheckingType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746563686E6971756520746F2075736520666F7220616C69676E696E672074686520746578742E
		#tag Getter
			Get
			  return AppleObject.TextAlignment
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.TextAlignment = value
			End Set
		#tag EndSetter
		TextAlignment As appletextfield.NSTextAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520746578742E
		#tag Getter
			Get
			  return AppleObject.TextColor.toColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.TextColor = value.toapplecolor
			End Set
		#tag EndSetter
		TextColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E672072656374616E676C6520666F72207468652074657874206669656C64E280997320746578742E
		#tag Getter
			Get
			  return AppleObject.TextRect.tocorerect
			End Get
		#tag EndGetter
		TextRect As xojo.core.rect
	#tag EndComputedProperty


	#tag Enum, Name = FontSelection, Type = Integer, Flags = &h0
		System
		  SystemSmall
		Custom
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AdjustFontSize"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="aFontType"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="FontSelection"
			EditorType="Enum"
			#tag EnumValues
				"0 - System"
				"1 - SystemSmall"
				"2 - Custom"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTextAttributesEdit"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutocapitalizationType"
			Visible=true
			Group="Behavior"
			InitialValue="None"
			Type="AppleTextfield.UITextAutocapitalizationType"
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
			Visible=true
			Group="Behavior"
			InitialValue="Default"
			Type="appletextfield.UITextAutocorrectionType"
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
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundImage"
			Group="Behavior"
			Type="iOSImage"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderStyle"
			Visible=true
			Group="Behavior"
			InitialValue="RoundedRect"
			Type="appletextfield.UITextFieldBorderStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Line"
				"2 - Bezel"
				"3 - RoundedRect"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Appearance"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearButtonMode"
			Group="Behavior"
			Type="appletextfield.UITextFieldViewMode"
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
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnEditBegin"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnInsertion"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIKitFramework.UIViewContentMode"
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
			Group="Appearance"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisabledBackgroundImage"
			Group="Behavior"
			Type="iOSImage"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnablesReturnKeyAutomatically"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=true
			Group="Behavior"
			InitialValue="13"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Visible=true
			Group="Appearance"
			InitialValue="False"
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
			Name="KeyboardAppearance"
			Visible=true
			Group="Behavior"
			InitialValue="Default"
			Type="appletextfield.UIKeyboardAppearance"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Dark"
				"2 - Light"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyboardType"
			Visible=true
			Group="Behavior"
			InitialValue="Default"
			Type="appletextfield.UIKeyboardType"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeftViewMode"
			Visible=true
			Group="Behavior"
			InitialValue="Never"
			Type="appletextfield.UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumFontSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Visible=true
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
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Placeholder"
			Visible=true
			Group="Appearance"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReturnKeyType"
			Visible=true
			Group="Behavior"
			InitialValue="Default"
			Type="appletextfield.UIReturnKeyType"
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
			Visible=true
			Group="Behavior"
			InitialValue="Never"
			Type="appletextfield.UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpellCheckingType"
			Visible=true
			Group="Behavior"
			InitialValue="Default"
			Type="appletextfield.UITextSpellCheckingType"
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
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Visible=true
			Group="Behavior"
			InitialValue="Left"
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
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Visible=true
			Group="Behavior"
			InitialValue="Automatic"
			Type="AppleView.UIViewTintAdjustmentMode"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
