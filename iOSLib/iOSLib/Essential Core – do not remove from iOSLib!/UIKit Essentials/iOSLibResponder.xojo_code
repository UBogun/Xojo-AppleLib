#tag Class
Protected Class iOSLibResponder
Inherits iOSUserControl
	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionBeganWithEvent(type as AppleNSEvent.UIEventSubtype, anevent as Applensevent)
		  RaiseEvent MotionBegan (type, anevent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionCancelledWithEvent(type as AppleNSEvent.UIEventSubtype, anevent as Applensevent)
		  RaiseEvent MotionCancelled (type, anevent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionEndedWithEvent(type as AppleNSEvent.UIEventSubtype, anevent as Applensevent)
		  RaiseEvent MotionEnded (type, anevent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesBeganwithEvent(Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesBegan (pressset.toPressCoreArray, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesCancelledwithEvent(Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesCancelled (pressset.toPressCoreArray, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesChangedwithEvent(Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesChanged (pressset.toPressCoreArray, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPressesEndedwithEvent(Pressset as AppleSet, anEvent as ApplePressesEvent)
		  RaiseEvent PressesEnded (pressset.toPressCoreArray, anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonRemoteControlReceived(anevent as applensevent)
		  RaiseEvent RemoteControl (anevent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesBeganwithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesBegan Touches.toTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesCancelledWithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesCancelled Touches.toTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesEndedwithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesEnded Touches.toTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesMovedwithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesMoved Touches.toTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod


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

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Event TouchesMoved(Touches() as AppleTouch, anEvent as AppleNSEvent)
	#tag EndHook


	#tag Note, Name = Info
		
		This is a bridge class working as an interface for controls inheriting from AppleResponder
	#tag EndNote


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
