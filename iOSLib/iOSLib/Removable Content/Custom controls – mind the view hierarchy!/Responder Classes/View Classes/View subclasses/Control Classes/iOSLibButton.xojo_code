#tag Class
Protected Class iOSLibButton
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
		    dim myview as new AppleButton (AppleButton.UIButtonType.System)
		    myview.Title (AppleControlState.Normal) = "Test"
		    mid = myview
		    mid.UserInteractionEnabled = true
		    AttachHandlers
		    return uinteger(myview.id)
		  else
		    return subid
		  end if
		End Function
	#tag EndEvent

	#tag Event
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

	#tag Event
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

	#tag Event
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


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleButton(mID)
			End Get
		#tag EndGetter
		AppleObject As AppleButton
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.AppleObject.Title(AppleControlState.Normal)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.AppleObject.Title(AppleControlState.Normal) = value
			End Set
		#tag EndSetter
		NormalTitle As Text
	#tag EndComputedProperty


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
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
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
			Name="CanBecomeFocused"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Visible=true
			Group="Behavior"
			InitialValue="False"
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
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
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
			Name="NormalTitle"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
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
			Visible=true
			Group="ID"
			Type="Integer"
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
