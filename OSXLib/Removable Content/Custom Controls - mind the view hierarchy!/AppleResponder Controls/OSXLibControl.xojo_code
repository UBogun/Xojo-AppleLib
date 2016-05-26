#tag Class
Protected Class OSXLibControl
Inherits canvas
	#tag Event
		Sub DoubleClick(X As Integer, Y As Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub DragExit(obj As DragItem, action As Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnAcceptsFirstResponder() As Boolean
		  return me.AcceptFocus
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnbecomeFirstResponder() As Boolean
		  return not raiseevent DontAcceptFocus
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnbeginGestureWithEvent(anEvent as applensevent)
		  raiseevent BeginGesture (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnendGestureWithEvent(anEvent as applensevent)
		  raiseevent EndGesture (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnflagsChanged(anEvent as applensevent)
		  raiseevent ModifierKeysChange (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnkeyDown(anEvent as applensevent)
		  raiseevent KeyDown(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnkeyUp(anEvent as applensevent)
		  raiseevent KeyUp(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmagnifyWithEvent(anEvent as applensevent)
		  raiseevent MagnifyGesture(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseDown(anEvent as applensevent)
		  raiseevent MouseDown (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseDragged(anEvent as applensevent)
		  raiseevent MouseDrag(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseEntered(anEvent as applensevent)
		  raiseevent MouseEnter(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseExited(anEvent as applensevent)
		  raiseevent MouseExit(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseMoved(anEvent as applensevent)
		  raiseevent MouseMove(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnmouseUp(anEvent as applensevent)
		  raiseevent MouseUp (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnotherMouseDown(anEvent as applensevent)
		  raiseevent OtherMouseDown (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnOthermouseDragged(anEvent as applensevent)
		  raiseevent OtherMouseDrag(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnOthermouseUp(anEvent as applensevent)
		  raiseevent OtherMouseUp (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnpressureChangeWithEvent(anEvent as applensevent)
		  raiseevent PressureChange(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnresignFirstResponder() As Boolean
		  return not raiseevent DontLoseFocus
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnrotateWithEvent(anEvent as applensevent)
		  raiseevent RotationGesture(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnscrollWheel(anEvent as applensevent)
		  raiseevent Mousewheel (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnsmartMagnifyWithEvent(anEvent as applensevent)
		  raiseevent SmartMagnifyGesture (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnswipeWithEvent(anEvent as applensevent)
		  raiseevent SwipeGesture(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntabletPoint(anEvent as applensevent)
		  raiseevent TabletPoint (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntabletProximity(anEvent as applensevent)
		  raiseevent TabletProximity (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOntouchesBeganWithEventl(anEvent as applensevent)
		  raiseevent TouchesBegan(anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnwillPresentError(error as appleerror) As appleerror
		  return raiseevent customizeError (error)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOrightMouseDown(anEvent as applensevent)
		  raiseevent RightMouseDown (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOrightMouseDragged(anEvent as applensevent)
		  raiseevent RightMouseDragged (anEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOrightMouseUp(anEvent as applensevent)
		  raiseevent RightMouseUp (anEvent)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320626567756E206120746F75636820676573747572652E
		Event BeginGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772069732061626F757420746F20646973706C617920616E206572726F72206D6573736167652E2055736520697420746F206368616E676520746865206572726F72206F626A6563742E
		Event CustomizeError(Error As AppleError) As AppleError
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C20676574732074686520666F6375732E2052657475726E207472756520746F2064656E7920746869732E
		Event DontAcceptFocus() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C2073686F756C64206C6F73652074686520666F6375732E2052657475726E207472756520746F2064656E7920746869732E
		Event DontLoseFocus() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732066696E6973686564206120746F75636820676573747572652E
		Event EndGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320707265737365642061206B65792E
		Event KeyDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320707265737365642061206B65792E
		Event KeyUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652074686520757365722068617320626567756E20612070696E636820676573747572652E
		Event MagnifyGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732070726573736564206F722072656C65617365642061206D6F646966696572206B6579202853686966742C20436F6E74726F6C2C20616E6420736F206F6E292E
		Event ModifierKeysChange(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Event MouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365207769746820746865206C65667420627574746F6E20707265737365642E
		Event MouseDrag(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Event MouseEnter(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520637572736F722068617320657869746564206120747261636B696E672072656374616E676C652E
		Event MouseExit(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520637572736F722068617320656E7465726564206120747261636B696E672072656374616E676C652E
		Event MouseMove(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732072656C656173656420746865206C656674206D6F75736520627574746F6E2E
		Event MouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365E2809973207363726F6C6C20776865656C2E
		Event MouseWheel(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320707265737365642061207465727469617279206D6F75736520627574746F6E2E
		Event OtherMouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F7573652077697468206120746572746961727920627574746F6E20707265737365642E
		Event OtherMouseDrag(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732072656C65617365642061207465727469617279206D6F75736520627574746F6E2E
		Event OtherMouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061207072657373757265206368616E6765206F63637572732061732074686520726573756C74206F662061207573657220696E707574206576656E74206F6E20612073797374656D207468617420737570706F7274732070726573737572652073656E73697469766974792E
		Event PressureChange(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173207072657373656420746865207269676874206D6F75736520627574746F6E2E
		Event RightMouseDown(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F75736520776974682074686520726967687420627574746F6E20707265737365642E
		Event RightMouseDragged(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732072656C656173656420746865207269676874206D6F75736520627574746F6E2E
		Event RightMouseUp(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320626567756E206120726F746174696F6E20676573747572652E
		Event RotationGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220706572666F726D6564206120736D617274207A6F6F6D20676573747572652028646F75626C652D746170292E203634626974206F6E6C7921
		Event SmartMagnifyGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722068617320626567756E206120737769706520676573747572652E
		Event SwipeGesture(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061207461626C65742D706F696E74206576656E7420686173206F636375727265642E
		Event TabletPoint(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061207461626C65742D70726F78696D697479206576656E7420686173206F636375727265642E
		Event TabletProximity(anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206E657720736574206F6620746F756368657320686173206265656E207265636F676E697A65642E0A546F206765742074686520736574206F6620746F7563686573207468617420626567616E20666F722074686973207669657720286F722064657363656E64616E7473206F6620746869732076696577292073656E64205B6576656E7420746F75636865734D61746368696E6750686173653A4E53546F7563685068617365426567616E20696E566965773A73656C665D2E
		Event TouchesBegan(anEvent As AppleNSEvent)
	#tag EndHook


	#tag Note, Name = Explanation
		This is a virtual superclass for implementing NSresponder events into custom controls. 
		It is not usable by itself.
		
	#tag EndNote


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
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
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
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
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
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
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
