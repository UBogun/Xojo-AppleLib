#tag Class
Protected Class OSXLibVisualEffectView
Inherits OSXLibView
	#tag Event
		Sub Activate()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub AddedSubview(Subview as AppleView)
		  #pragma unused Subview
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E69736865642E
		Sub AnimationFinished()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E69736865642E
		Sub AnimationStarted(Animation As AppleCAANimation)
		  #pragma unused  Animation
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E69736865642E
		Sub AnimationStopped(Animation As AppleCAANimation, Finished As Boolean)
		  #pragma unused  Animation
		  #pragma unused Finished
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub BecameSubview()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120746F75636820676573747572652E
		Sub BeginGesture(anEvent As AppleNSEvent)
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event
		Function CloseControl() As Boolean
		  if not raiseevent CloseControl then
		    if UsedAddhandler then RemoveHandlers(AppleObject)
		    mAppleObject = nil
		  end if
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 5573652074686973206576656E7420746F2063726561746520637573746F6D204D656E757320666F7220646966666572656E74206B696E64206F66206576656E74732E
		Function ConstructContextMenu(AnEvent As AppleNSEvent) As AppleMenu
		  #pragma unused  anevent
		End Function
	#tag EndEvent

	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #pragma unused  base
		  #pragma unused x
		  #pragma unused y
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  #pragma unused hitItem
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772069732061626F757420746F20646973706C617920616E206572726F72206D6573736167652E2055736520697420746F206368616E676520746865206572726F72206F626A6563742E
		Function CustomizeError(Error As AppleError) As AppleError
		  #pragma unused error
		End Function
	#tag EndEvent

	#tag Event
		Sub Deactivate()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C2073686F756C64206C6F73652074686520666F6375732E2052657475726E207472756520746F2064656E7920746869732E
		Function DontLoseFocus() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  #pragma unused obj
		  #pragma unused  action
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206861732066696E6973686564206120746F75636820676573747572652E
		Sub EndGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 52657475726E207768657468657220746F20666F727761726420656C6173746963207363726F6C6C696E672067657374757265206576656E74732075702074686520726573706F6E6465722E
		Function ForwardElasticScroll(Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
		  #pragma unused Axis
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772069732068696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E672068696464656E2E
		Sub Hidden()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Function InitControl() As AppleView
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  dim obj as AppleVisualEffectView = raiseevent InitControl // Let’s see if a subclass wants to establish itself instead
		  if obj = nil then // no!
		    obj = if (mAppleObject = nil, CreateObject, AppleObject)
		    UsedAddhandler = true
		  end if
		  return obj // So it will receive its super’s events
		  
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520757365722068617320707265737365642061206B65792E
		Sub KeyDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520757365722068617320707265737365642061206B65792E
		Sub KeyUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652074686520757365722068617320626567756E20612070696E636820676573747572652E
		Sub MagnifyGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206861732070726573736564206F722072656C65617365642061206D6F646966696572206B6579202853686966742C20436F6E74726F6C2C20616E6420736F206F6E292E
		Sub ModifierKeysChange(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Sub MouseDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365207769746820746865206C65667420627574746F6E20707265737365642E
		Sub MouseDrag(anEvent As AppleNSEvent)
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Sub MouseEnter(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520637572736F722068617320657869746564206120747261636B696E672072656374616E676C652E
		Sub MouseExit(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520637572736F722068617320656E7465726564206120747261636B696E672072656374616E676C652E
		Sub MouseMove(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206861732072656C656173656420746865206C656674206D6F75736520627574746F6E2E
		Sub MouseUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365E2809973207363726F6C6C20776865656C2E
		Sub MouseWheel(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event
		Function Open() As Boolean
		  if RaiseEvent open then
		    return true
		  else
		    me.AppleObject.WantsLayer = false
		  end if
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573206265666F7265206120636F6E7465787475616C206D656E7520697320646973706C617965642E205573652074686973206576656E7420746F206D6F6466792069742E
		Sub OpenContextMenu(Menu As AppleMenu, AnEvent As AppleNSEvent)
		  #pragma unused Menu
		  #pragma unused AnEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520757365722068617320707265737365642061207465727469617279206D6F75736520627574746F6E2E
		Sub OtherMouseDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F7573652077697468206120746572746961727920627574746F6E20707265737365642E
		Sub OtherMouseDrag(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206861732072656C65617365642061207465727469617279206D6F75736520627574746F6E2E
		Sub OtherMouseUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061207072657373757265206368616E6765206F63637572732061732074686520726573756C74206F662061207573657220696E707574206576656E74206F6E20612073797374656D207468617420737570706F7274732070726573737572652073656E73697469766974792E
		Sub PressureChange(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206861732066696E697368656420726573697A696E672074686520766965772E
		Sub Resized()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 466972657320696620746865207573657220686173207374617274656420726573697A696E672074686520766965772E
		Sub Resizing()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173207072657373656420746865207269676874206D6F75736520627574746F6E2E
		Sub RightMouseDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F75736520776974682074686520726967687420627574746F6E20707265737365642E
		Sub RightMouseDragged(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206861732072656C656173656420746865207269676874206D6F75736520627574746F6E2E
		Sub RightMouseUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120726F746174696F6E20676573747572652E
		Sub RotationGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event
		Sub Shown()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220706572666F726D6564206120736D617274207A6F6F6D20676573747572652028646F75626C652D746170292E203634626974206F6E6C7921
		Sub SmartMagnifyGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120737769706520676573747572652E
		Sub SwipeGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061207461626C65742D706F696E74206576656E7420686173206F636375727265642E
		Sub TabletPoint(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061207461626C65742D70726F78696D697479206576656E7420686173206F636375727265642E
		Sub TabletProximity(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061206E657720736574206F6620746F756368657320686173206265656E207265636F676E697A65642E0A546F206765742074686520736574206F6620746F7563686573207468617420626567616E20666F722074686973207669657720286F722064657363656E64616E7473206F6620746869732076696577292073656E64205B6576656E7420746F75636865734D61746368696E6750686173653A4E53546F7563685068617365426567616E20696E566965773A73656C665D2E
		Sub TouchesBegan(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 547261636B696E67206F6620746F756368657320686173206265656E2063616E63656C6C656420666F7220616E7920726561736F6E2E
		Sub TouchesCancelled(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E206120736574206F6620746F756368657320686173206265656E2072656D6F7665642E
		Sub TouchesEnded(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E206F6E65206F72206D6F726520746F75636865732068617665206D6F7665642E
		Sub TouchesMoved(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 52657475726E207472756520746F20747261636B2067657374757265207363726F6C6C206576656E7473207375636820617320612073776970652E
		Function TrackSwipes(Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
		  #pragma unused axis
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720697320756E68696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E6720756E68696464656E2E
		Sub Unhidden()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillBecomeSubview(SuperView as AppleView)
		  #pragma unused SuperView
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillRemoveSubview(SubView as AppleView)
		  #pragma unused SubView
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillShow(Window As Applewindow)
		  #pragma unused window
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 436F7069657320656D6265646465642073756276696577732066726F6D20746865207772617070657220636F6E74726F6C20696620746865792065786973742E
		Protected Sub CopyEmbeddedObjects()
		  dim tempview as new appleview(me)
		  if tempview.Subviews <> nil then
		    dim count as integer = tempview.subviews.count -1
		    if count > -1 then
		      me.AppleObject.AutoresizesSubviews = true
		      for q as integer = 0 to count
		        dim subview as appleview = appleview.MakefromPtr(tempview.Subviews.PtrAtIndex(0))
		        // subview.AutoResizingMask = new AppleAutoresizingMask(subview.
		        subview.TranslatesAutoresizingMaskIntoConstraints = true
		        me.AppleObject.AddSubview subview
		      next
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C206D6574686F6420746F2061766F696420496E73706563746F722070726F706572746965732068697474696E672061204E696C20766965772E
		Function CreateObject() As AppleVisualEffectView
		  dim obj as new AppleVisualEffectView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		  
		  // AttachHandlers(obj) // Reroute its events so this Xojo control gets them
		  
		  return obj
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveHandlers(obj as AppleVisualEffectView)
		  #pragma unused obj
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CloseControl() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event InitControl() As AppleVisualEffectView
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open() As Boolean
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mAppleObject = nil then
			    mAppleObject = RaiseEvent InitControl
			    if mAppleObject = nil then mAppleObject = CreateObject
			  end if
			  return AppleVisualEffectView(mAppleObject)
			  
			End Get
		#tag EndGetter
		AppleObject As AppleVisualEffectView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320686F77207468652076696577E280997320636F6E74656E74732061726520626C75727265642E2044456661756C7420697320426568696E6457696E646F772E
		#tag Getter
			Get
			  return AppleObject.BlendingMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value = AppleVisualEffectView.NSVisualEffectBlendingMode.WithinWindow then AppleObject.WantsLayer = true
			  AppleObject.BlendingMode = value
			End Set
		#tag EndSetter
		BlendingMode As AppleVisualEffectView.NSVisualEffectBlendingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4966207468652073656C656374696F6E2073686F756C64206472617720696E2022666972737420726573706F6E64657222207374617475732C206F72206E6F742E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  return AppleObject.Emphasized
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Emphasized = value
			End Set
		#tag EndSetter
		Emphasized As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if AppleObject.Maskimage <> nil then return AppleObject.MaskImage.toPicture
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.MaskImage = if (value = nil, nil, value.toAppleImage)
			End Set
		#tag EndSetter
		Maskimage As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.Material
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.Material = value
			End Set
		#tag EndSetter
		Material As AppleVisualEffectView.NSVisualEffectMaterial
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mTempObject As AppleVisualEffectView
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F7720746865206D6174657269616C20617070656172616E63652073686F756C64207265666C6563742077696E646F772061637469766974792073746174652E
		#tag Getter
			Get
			  return AppleObject.state
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppleObject.state = value
			End Set
		#tag EndSetter
		State As AppleVisualEffectView.NSVisualEffectState
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTouchEvents"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowVibrancy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Group="Behavior"
			InitialValue="&cFFFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlendingMode"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleVisualEffectView.NSVisualEffectBlendingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - BehindWindow"
				"1 - WithinWindow"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Emphasized"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FlippedCoordinates"
			Group="Behavior"
			Type="Boolean"
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Position"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Maskimage"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Material"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleVisualEffectView.NSVisualEffectMaterial"
			EditorType="Enum"
			#tag EnumValues
				"0 - AppearanceBased"
				"1 - Light"
				"2 - Dark"
				"3 - Titlebar"
				"4 - Selection"
				"5 - Menu"
				"6 - Popover"
				"7 - Sidebar"
				"8 - MediumLight"
				"9 - UltraDark"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Visible=true
			Group="Behavior"
			Type="AppleVisualEffectView.NSVisualEffectState"
			EditorType="Enum"
			#tag EnumValues
				"0 - FollowsWindowActiveState"
				"1 - Active"
				"2 - Inactive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TrackSwipes"
			Group="Behavior"
			Type="Boolean"
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
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
