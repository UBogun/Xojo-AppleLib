#tag Class
Protected Class iOSLibResponder
Inherits iOSUserControl
	#tag Event
		Sub Close()
		  RaiseEvent close
		  me.AppleObject = nil
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As UInteger
		  dim subID as uinteger = raiseEvent CreateView
		  if  subid <> 0 then
		    AppleObject =  new AppleResponder (ptr(subid))
		  end if
		  return subid
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonEstimatedPropertiesUpdated(resp as appleresponder, Touches as appleset)
		  RaiseEvent EstimatedPropertiesUpdated (touches.toTouchCoreArray)
		  #pragma unused resp
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionBeganWithEvent(resp as appleresponder,type as AppleNSEvent.UIEventSubtype, anevent as Applensevent)
		  RaiseEvent MotionBegan (type, anevent)
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionCancelledWithEvent(resp as appleresponder,type as AppleNSEvent.UIEventSubtype, anevent as Applensevent)
		  RaiseEvent MotionCancelled (type, anevent)
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionEndedWithEvent(resp as appleresponder,type as AppleNSEvent.UIEventSubtype, anevent as Applensevent)
		  RaiseEvent MotionEnded (type, anevent)
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesBeganwithEvent(resp as appleresponder, Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesBegan (pressset.toPressCoreArray, anevent)
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesCancelledwithEvent(resp as appleresponder,Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesCancelled (pressset.toPressCoreArray, anevent)
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesChangedwithEvent(resp as appleresponder,Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesChanged (pressset.toPressCoreArray, anevent)
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesEndedwithEvent(resp as appleresponder,Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesEnded (pressset.toPressCoreArray, anevent)
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonRemoteControlReceived(anevent as applensevent)
		  RaiseEvent RemoteControl (anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesBeganwithEvent(resp as appleresponder, Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesBegan Touches.toTouchCoreArray, anevent
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesCancelledWithEvent(resp as appleresponder,Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesCancelled Touches.toTouchCoreArray, anevent
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesEndedwithEvent(resp as appleresponder, Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesEnded Touches.toTouchCoreArray, anevent
		  #pragma unused resp
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesMovedwithEvent(resp as appleresponder,Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesMoved Touches.toTouchCoreArray, anevent
		  #pragma unused resp
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 496E7465726E616C206576656E7420666F7220737562636C61737365732E
		Attributes( hidden ) Event CreateView() As UInteger
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520657374696D617465642070726F7065727469657320666F72206120746F7563682068617665206368616E67656420736F2074686174207468657920617265206E6F206C6F6E67657220657374696D617465642C206F7220616E20757064617465206973206E6F206C6F6E6765722065787065637465642E
		Event EstimatedPropertiesUpdated(Touches() as AppleTouch)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Event MotionBegan(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E207761732063616E63656C6C65642E
		Event MotionCancelled(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E2068617320656E6465642E
		Event MotionEnded(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120706879736963616C20627574746F6E206973207072657373656420696E20746865206173736F63696174656420766965772E
		Event PressesBegan(Presses() as Applepress, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20612073797374656D206576656E742063616E63656C732061207072657373206576656E742E
		Event PressesCancelled(Presses() as Applepress, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520666F726365206F662061207072657373206576656E74206368616E676573
		Event PressesChanged(Presses() as Applepress, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265207768656E206120627574746F6E207761732072656C65617365642E
		Event PressesEnded(Presses() as Applepress, anEvent as ApplePressesEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Event RemoteControl(anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206D6F74696F6E2068617320656E646564
		Event RemoteControlReceived(anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Event TouchesBegan(Touches() as appletouch, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20612073797374656D2D6576656E7420286C696B65206C6F77206D656D6F7279292063616E63656C73206120746F756368206576656E742E
		Event TouchesCancelled(Touches() as AppleTouch, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Event TouchesEnded(Touches() as AppleTouch, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206F6E65206F72206D6F72652066696E67657273206173736F636961746564207769746820616E206576656E74206D6F76652077697468696E20612076696577206F722077696E646F772E
		Event TouchesMoved(Touches() as AppleTouch, anEvent as AppleNSEvent)
	#tag EndHook


	#tag Note, Name = Info
		
		This is a bridge class working as an interface for controls inheriting from AppleResponder
	#tag EndNote


	#tag Property, Flags = &h21
		Private AppleObject As AppleREsponder
	#tag EndProperty


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
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
			Type="Integer"
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
