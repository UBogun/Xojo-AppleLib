#tag Class
Protected Class AppleNSEvent
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getabsoluteX Lib appkitlibname Selector "absoluteX" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getabsoluteY Lib appkitlibname Selector "absoluteY" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getabsoluteZ Lib appkitlibname Selector "absoluteZ" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getButtonNumber Lib appkitlibname Selector "buttonNumber" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcapabilityMask Lib appkitlibname Selector "capabilityMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcharacters Lib appkitlibname Selector "characters" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcharactersIgnoringModifiers Lib appkitlibname Selector "charactersIgnoringModifiers" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getclickCount Lib appkitlibname Selector "clickCount" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdata1 Lib appkitlibname Selector "data1" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdata2 Lib appkitlibname Selector "data2" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getDeltaX Lib appkitlibname Selector "deltaX" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getDeltaY Lib appkitlibname Selector "deltaY" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getDeltaZ Lib appkitlibname Selector "deltaZ" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdeviceID Lib appkitlibname Selector "deviceID" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdoubleClickInterval Lib appkitlibname Selector "doubleClickInterval" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function geteventNumber Lib appkitlibname Selector "eventNumber" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasPreciseScrollingDeltas Lib appkitlibname Selector "hasPreciseScrollingDeltas" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisARepeat Lib appkitlibname Selector "isARepeat" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisDirectionInvertedFromDevice Lib appkitlibname Selector "isDirectionInvertedFromDevice" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisEnteringProximity Lib appkitlibname Selector "isEnteringProximity" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisSwipeTrackingFromScrollEventsEnabled Lib appkitlibname Selector "isSwipeTrackingFromScrollEventsEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getkeyCode Lib appkitlibname Selector "keyCode" (id as ptr) As UInt16
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getkeyRepeatDelay Lib appkitlibname Selector "keyRepeatDelay" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getkeyRepeatInterval Lib appkitlibname Selector "keyRepeatInterval" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlocationInWindow Lib appkitlibname Selector "locationInWindow" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmagnification Lib appkitlibname Selector "magnification" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmodifierFlags Lib appkitlibname Selector "modifierFlags" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmomentumPhase Lib appkitlibname Selector "momentumPhase" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getMouseCoalescingEnabled Lib appkitlibname Selector "isMouseCoalescingEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmouseLocation Lib appkitlibname Selector "mouseLocation" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getphase Lib appkitlibname Selector "phase" (id as ptr) As Uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpointingDeviceID Lib appkitlibname Selector "pointingDeviceID" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpointingDeviceSerialNumber Lib appkitlibname Selector "pointingDeviceSerialNumber" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpointingDeviceType Lib appkitlibname Selector "pointingDeviceType" (id as ptr) As NSPointingDeviceType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpressedMouseButtons Lib appkitlibname Selector "pressedMouseButtons" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpressure Lib appkitlibname Selector "pressure" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpressureBehavior Lib appkitlibname Selector "pressureBehavior" (id as ptr) As NSPressureBehavior
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrotation Lib appkitlibname Selector "rotation" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscrollingDeltaX Lib appkitlibname Selector "scrollingDeltaX" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscrollingDeltaY Lib appkitlibname Selector "scrollingDeltaY" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstage Lib appkitlibname Selector "stage" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstageTransition Lib appkitlibname Selector "stageTransition" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsystemTabletID Lib appkitlibname Selector "systemTabletID" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettabletID Lib appkitlibname Selector "tabletID" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettangentialPressure Lib appkitlibname Selector "tangentialPressure" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettilt Lib appkitlibname Selector "tilt" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettimestamp Lib appkitlibname Selector "timestamp" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettrackingArea Lib appkitlibname Selector "trackingArea" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettrackingNumber Lib appkitlibname Selector "trackingNumber" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettype Lib appkitlibname Selector "type" (id as ptr) As NSEventType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuniqueID Lib appkitlibname Selector "uniqueID" (id as ptr) As uInt64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuserData Lib appkitlibname Selector "userData" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvendorDefined Lib appkitlibname Selector "vendorDefined" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvendorID Lib appkitlibname Selector "vendorID" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvendorPointingDeviceType Lib appkitlibname Selector "vendorPointingDeviceType" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleNSEvent
		  return if (aptr = nil, nil, new applensevent(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setMouseCoalescingEnabled Lib appkitlibname Selector "setMouseCoalescingEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 426567696E732067656E65726174696E6720706572696F646963206576656E747320666F72207468652063757272656E74207468726561642E
		 Shared Sub StartPeriodicEvents(Delay as double, Period As Double)
		  startPeriodicEventsAfterDelay classptr, delay, period
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub startPeriodicEventsAfterDelay Lib appkitlibname Selector "startPeriodicEventsAfterDelay:withPeriod:" (id as ptr, delay as double, period as double)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53746F70732067656E65726174696E6720706572696F646963206576656E747320666F72207468652063757272656E742074687265616420616E6420646973636172647320616E7920706572696F646963206576656E74732072656D61696E696E6720696E207468652071756575652E
		 Shared Sub StopPeriodicEvents()
		  stopPeriodicEvents classptr
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub stopPeriodicEvents Lib appkitlibname Selector "stopPeriodicEvents" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function touchesMatchingPhase Lib appkitlibname Selector "touchesMatchingPhase:inView:" (id as ptr, pase as Uinteger, View as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21, Description = 52657475726E7320616C6C20746865204E53546F756368206F626A65637473206173736F6369617465642077697468206120737065636966696320706861736520616E6420766965772E
		Private Sub TrackingHandlerTemplate(GestureAmount As CGFLoat, phase as uinteger, isComplete As Boolean, byref stop as Boolean)
		  // A Template for the block structure you can use for the TrackSwipeEvent method
		  
		  dim EventPhase as new AppleEventPhase(phase)
		  if me <> nil then
		     stop =  raiseevent SwipeEvent (GestureAmount, EventPhase, isComplete)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416C6C6F777320747261636B696E6720616E64207573657220696E7465726661636520666565646261636B206F66207363726F6C6C20776865656C206576656E74732E
		Sub TrackSwipeEvent(dampenAmountThresholdMin As Double, dampenAmountThresholdMax As Double, CallBackBlock As AppleBlock = nil, LockDirection As Boolean = false, ClampGestureAmount As Boolean =False)
		  dim options as uinteger = if (lockdirection, 1, 0)
		  options = options+ if (ClampGestureAmount, 2, 0)
		  if CallBackBlock = nil then CallBackBlock = new appleblock (addressof TrackingHandlerTemplate)
		  trackSwipeEventWithOptions(id, options, dampenAmountThresholdMin, dampenAmountThresholdMax, CallBackBlock.Handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub trackSwipeEventWithOptions Lib appkitlibname Selector "trackSwipeEventWithOptions:dampenAmountThresholdMin:max:usingHandler:" (id as ptr, options as uinteger, dampenAmountThresholdMin as cgfloat, dampenAmountThresholdMax As CGFloat, TrackingHandler as ptr)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0, Description = 466972657320696620796F7520696E7374616C6C65642061207377697065206576656E7420747261636B696E672068616E646C657220616E6420757365642074686520696E7465726E616C2063616C6C6261636B20626C6F636B2074656D706C6174652E2052657475726E207472756520746F2073746F7020747261636B696E672E
		Event SwipeEvent(GestureAmount As Double, Phase As AppleEventPhase, isComplete As Boolean) As Boolean
	#tag EndHook


	#tag Note, Name = status incomplete
		
		missing:
		
		EventRef
		CGEvent
		associatedEventsMask
		subtype
		buttonMask & EventMask helper class
		monitoring section
		locationinNode(needs subclassfor SpriteKit)
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206162736F6C757465207820636F6F7264696E617465206F66206120706F696E74696E6720646576696365206F6E20697473207461626C65742061742066756C6C207461626C6574207265736F6C7574696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getabsoluteX(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		AbsoluteX As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206162736F6C757465207920636F6F7264696E617465206F66206120706F696E74696E6720646576696365206F6E20697473207461626C65742061742066756C6C207461626C6574207265736F6C7574696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getabsoluteY(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		AbsoluteY As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206162736F6C757465207A20636F6F7264696E617465206F66206120706F696E74696E6720646576696365206F6E20697473207461626C65742061742066756C6C207461626C6574207265736F6C7574696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getabsoluteZ(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		AbsoluteZ As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6E206E756D62657220666F722061206D6F757365206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getbuttonNumber(id)
			End Get
		#tag EndGetter
		ButtonNumber As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B2077686F736520736574206269747320696E64696361746520746865206361706162696C6974696573206F6620746865207461626C65742064657669636520746861742067656E6572617465642074686973206576656E742E2028726561642D6F6E6C792C2076656E646F722D646566696E656429
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getcapabilityMask(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		CapabilityMask As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063686172616374657273206173736F63696174656420776974682061206B65792D7570206F72206B65792D646F776E206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getcharacters(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		Characters As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636861726163746572732067656E6572617465642062792061206B6579206576656E74206173206966206E6F206D6F646966696572206B6579202865786365707420666F7220536869667429206170706C6965732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getcharactersIgnoringModifiers(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		CharactersIgnoringModifiers As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSEvent")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206D6F75736520636C69636B73206173736F63696174656420776974682061206D6F7573652D646F776E206F72206D6F7573652D7570206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getclickCount(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		ClickCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E6469636573206F66207468652063757272656E746C7920646570726573736564206D6F75736520627574746F6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getpressedMouseButtons(classptr)
			End Get
		#tag EndGetter
		Shared CurrentlyPressedMouseButtons As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E746C792070726573736564206D6F64696669657220666C6167732028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return new AppleNSEventModifierFlags(getmodifierFlags(classptr))
			End Get
		#tag EndGetter
		Shared CurrentModifierFlags As AppleNSEventModifierFlags
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74206D6F75736520706F736974696F6E20696E2073637265656E20636F6F7264696E617465732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmouseLocation(classptr)
			End Get
		#tag EndGetter
		Shared CurrentMouseLocation As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4164646974696F6E616C2064617461206173736F63696174656420776974682074686973206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getdata1(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		Data1 As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4164646974696F6E616C2064617461206173736F63696174656420776974682074686973206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getdata2(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		Data2 As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520782D636F6F7264696E617465206368616E676520666F72206D6F7573652D6D6F76652C206D6F7573652D647261672C20616E64207377697065206576656E74732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getDeltaX(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		DeltaX As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520792D636F6F7264696E617465206368616E676520666F72206D6F7573652D6D6F76652C206D6F7573652D647261672C20616E64207377697065206576656E74732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getDeltaY(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		DeltaY As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207A2D636F6F7264696E617465206368616E676520666F72206D6F7573652D6D6F76652C206D6F7573652D647261672C20616E64207377697065206576656E74732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getDeltaZ(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		DeltaZ As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207370656369616C206964656E7469666965722074686174206973207573656420746F206D61746368207461626C65742D706F696E74657220616E64207461626C65742D70726F78696D697479206576656E74732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getdeviceID(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		DeviceID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207573657220686173206368616E676564207468652064657669636520696E76657273696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getisDirectionInvertedFromDevice(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		DirectionInvertedFromDevice As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D652C20696E207365636F6E64732C20696E2077686963682061207365636F6E64206D6F75736520636C69636B206D757374206F6363757220696E206F7264657220746F20626520636F6E73696465726564206120646F75626C6520636C69636B2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getdoubleClickInterval (classptr)
			End Get
		#tag EndGetter
		Shared DoubleClickInterval As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F756E7465722076616C7565206F6620746865206C6174657374206D6F757365206F7220747261636B696E672D72656374616E676C65206576656E74206F626A6563743B2065766572792073797374656D2D67656E657261746564206D6F75736520616E6420747261636B696E672D72656374616E676C65206576656E7420696E6372656D656E7473207468697320636F756E7465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions true
			  try
			    return geteventNumber(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		EventNumber As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722070726563697365207363726F6C6C696E672064656C7461732061726520617661696C61626C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return gethasPreciseScrollingDeltas(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		HasPreciseScrollingDeltas As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206B6579206576656E742069732061207265706561742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getisARepeat(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		IsARepeatEvent As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572206120706F696E74696E672064657669636520697320656E746572696E67206F72206C656176696E67207468652070726F78696D697479206F6620697473207461626C65742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getisEnteringProximity(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		IsEnteringProximity As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669727475616C206B657920636F646520666F7220746865206B6579626F617264206B6579206173736F63696174656420776974682061206B6579206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getkeyCode(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		KeyCode As UInt16
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656E677468206F662074696D652061206B6579206D7573742062652068656C6420646F776E20696E206F7264657220746F2067656E657261746520746865206669727374206B657920726570656174206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getkeyRepeatDelay (classptr)
			End Get
		#tag EndGetter
		Shared KeyRepeatDelay As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656E677468206265747765656E2073756273657175656E74206B657920726570656174206576656E7473206265696E6720706F737465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getkeyRepeatInterval (classptr)
			End Get
		#tag EndGetter
		Shared KeyRepeatInterval As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206576656E74E2809973206C6F636174696F6E20696E20746865206261736520636F6F7264696E6174652073797374656D206F6620746865206173736F6369617465642077696E646F772E2028726561642D6F6E6C79292E20556E646566696E656420666F72206E6F6E2D6D6F7573652D6576656E74732E
		#tag Getter
			Get
			  return getlocationInWindow(id)
			End Get
		#tag EndGetter
		LocationInWindow As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368616E676520696E206D61676E696669636174696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getmagnification(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		Magnification As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E746567657220626974206669656C6420696E6469636174696E6720746865206576656E74E2809973206D6F646966696572206B6579732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleNSEventModifierFlags(getmodifierFlags(id))
			End Get
		#tag EndGetter
		ModifierFlags As AppleNSEventModifierFlags
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F6D656E74756D20706861736520666F722061207363726F6C6C206F7220666C69636B20676573747572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return new AppleEventPhase(getmomentumPhase(id))
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		MomentumPhase As appleeventphase
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572206D6F7573652D6D6F76656D656E74206576656E7420636F616C657363696E6720697320656E61626C65642E
		#tag Getter
			Get
			  return getMouseCoalescingEnabled (classptr)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setMouseCoalescingEnabled (classptr, value)
			End Set
		#tag EndSetter
		Shared MouseCoalescingEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207068617365206F6620612067657374757265206576656E742C20737563682061732061206D61676E6966792C207363726F6C6C2C206F72207072657373757265206368616E67652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return new AppleEventPhase(getPhase(id))
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		Phase As appleeventphase
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F662074686520706F696E74696E67206465766963652063757272656E746C7920696E2070726F78696D697479207769746820746865207461626C65742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getpointingDeviceID(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		PointingDeviceID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076656E646F722D61737369676E65642073657269616C206E756D626572206F66206120706F696E74696E67206465766963652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getpointingDeviceSerialNumber(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		PointingDeviceSerialNumber As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B696E64206F6620706F696E74696E6720646576696365206173736F63696174656420776974682074686973206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getpointingDeviceType(id)
			  catch
			  end try
			End Get
		#tag EndGetter
		PointingDeviceType As NSPointingDeviceType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412076616C75652066726F6D20302E30207468726F75676820312E3020696E6469636174696E672074686520646567726565206F66207072657373757265206170706C69656420746F20616E20617070726F70726961746520696E707574206465766963652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getpressure(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		Pressure As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207072657373757265206265686176696F7220616E642070726F6772657373696F6E20666F7220616E206576656E74206F662074797065204E534576656E745479706550726573737572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getpressureBehavior(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		PressureBehavior As NSPressureBehavior
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F746174696F6E20696E2064656772656573206F6620746865207461626C657420706F696E74696E6720646576696365206173736F63696174656420776974682074686973206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getrotation(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		Rotation As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C20776865656CE280997320686F72697A6F6E74616C2064656C74612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getscrollingDeltaX(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		ScrollingDeltaX As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C20776865656CE280997320766572746963616C2064656C74612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getscrollingDeltaY(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		ScrollingDeltaY As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412076616C7565206F6620302C20312C206F7220322C20696E6469636174696E6720746865207374616765206F6620612067657374757265206576656E74206F662074797065204E534576656E745479706550726573737572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			     return getstage(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		Stage As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E736974696F6E2076616C756520666F7220746865207374616765206F6620612070726573737572652067657374757265206576656E74206F662074797065204E534576656E745479706550726573737572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getDeltaY(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		StageTransition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E73207468652075736572277320707265666572656E63652061626F7574207573696E672067657374757265207363726F6C6C7320617320612077617920746F20747261636B20666C756964207377697065732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getisSwipeTrackingFromScrollEventsEnabled(classptr)
			End Get
		#tag EndGetter
		Shared SwipeTrackingFromScrollEventsEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F6620746865207461626C65742064657669636520636F6E6E656374656420746F207468652073797374656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getsystemTabletID(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		SystemTabletID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520555342206D6F64656C206964656E746966696572206F6620746865207461626C657420646576696365206173736F63696174656420776974682074686973206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return gettabletID(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		TabletID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074616E67656E7469616C207072657373757265206F6E207468652064657669636520746861742067656E6572617465642074686973206576656E742E2028726561642D6F6E6C79290A56616C75652072616E6765732066726F6D202D312E3020746F20312E302E
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return gettangentialPressure(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		TangentialPressure As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C65642074696C742076616C756573206F662074686520706F696E74696E672064657669636520746861742067656E6572617465642074686973206576656E742E2028726561642D6F6E6C79292E2056616C75652072616E6765732066726F6D207B2D312E302C202D312E307D20746F207B312E302C20312E307D
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return gettilt(id)
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		Tilt As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D65207768656E20746865206576656E74206F6363757272656420696E207365636F6E64732073696E63652073797374656D20737461727475702E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return gettimestamp(id)
			End Get
		#tag EndGetter
		Timestamp As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204E53547261636B696E6741726561206F626A65637420666F7220746865206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return AppleTrackingArea.MakeFromPtr(gettrackingArea(id))
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		TrackingArea As AppleTrackingArea
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206964656E746966696572206F662061206D6F7573652D747261636B696E67206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions true
			  try
			    return gettrackingNumber(id)
			  catch
			    return -1
			  end try
			End Get
		#tag EndGetter
		TrackingNumber As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return gettype(id)
			End Get
		#tag EndGetter
		Type As NSEventType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E69717565206964656E746966696572206F662074686520706F696E74696E672064657669636520746861742067656E6572617465642074686973206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getuniqueID(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		UniqueID As UInt64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064617461206173736F63696174656420776974682061206D6F7573652D747261636B696E67206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return AppleDictionary.MakeFromPtr(getuserData(id))
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		UserData As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662074687265652076656E646F722D646566696E6564204E534E756D626572206F626A65637473206173736F6369617465642077697468206120706F696E74696E672D74797065206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return Applearray.MakeFromPtr(getvendorDefined(id))
			  catch
			    
			  end try
			End Get
		#tag EndGetter
		VendorDefined As Applearray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076656E646F72206964656E746966696572206F6620746865207461626C6574206173736F636961746564207769746820746865206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getvendorID(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		VendorID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F64656420626974206669656C642077686F736520736574206269747320696E646963617465207468652074797065206F6620706F696E74696E6720646576696365202877697468696E20612076656E646F722073656C656374696F6E29206173736F636961746564207769746820746865206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #pragma BreakOnExceptions false
			  try
			    return getvendorPointingDeviceType(id)
			  catch
			    return 0
			  end try
			End Get
		#tag EndGetter
		VendorPointingDeviceType As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F77206F626A656374206173736F636961746564207769746820746865206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applewindow.MakeFromPtr(AppKitFramework.GetWindow(id))
			End Get
		#tag EndGetter
		Window As AppleWindow
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206964656E74696669657220666F72207468652077696E646F7720646576696365206173736F636961746564207769746820746865206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.GetWindowNumber(id)
			End Get
		#tag EndGetter
		WindowNumber As Integer
	#tag EndComputedProperty


	#tag Enum, Name = NSEventType, Type = UInteger, Flags = &h0
		LeftMouseDown = 1
		  LeftMouseUp = 2
		  RightMouseDown =3
		  RightMouseUp = 4
		  MouseMoved = 5
		  LeftMouseDragged = 6
		  RightMouseDragged = 7
		  MouseEntered =8
		  MouseExited = 9
		  KeyDown = 10
		  KeyUp = 11
		  FlagsChanged = 12
		  AppKitDefined = 13
		  SystemDefined = 14
		  ApplicationDefined = 15
		  Periodic = 16
		  CursorUpdate = 17
		  ScrollWheel = 22
		  TabletPoint = 23
		  TabletProximity = 24
		  OtherMouseDown = 25
		  OtherMouseUp = 26
		  OtherMouseDragged = 27
		  Gesture = 28
		  Magnify = 29
		  Swipe = 30
		  Rotate = 18
		  BeginGesture = 19
		  EndGesture = 20
		  SmartMagnify = 32
		  QuickLook = 33
		Pressure = 34
	#tag EndEnum

	#tag Enum, Name = NSPointingDeviceType, Type = UInteger, Flags = &h0
		Unknown = 0
		  Pen = 1
		  Cursor = 2
		Eraser = 3
	#tag EndEnum

	#tag Enum, Name = NSPressureBehavior, Type = Integer, Flags = &h0
		Unknown = -1
		  Default = 0
		  Click = 1
		  Generic = 2
		  Accelerator = 3
		  DeepClick = 5
		DeepDrag = 6
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="NSEventType"
			EditorType="Enum"
			#tag EnumValues
				"1 - LeftMouseDown"
				"2 - LeftMouseUp"
				"3 - RightMouseDown"
				"4 - RightMouseUp"
				"5 - MouseMoved"
				"6 - LeftMouseDragged"
				"7 - RightMouseDragged"
				"8 - MouseEntered"
				"9 - MouseExited"
				"10 - KeyDown"
				"11 - KeyUp"
				"12 - FlagsChanged"
				"13 - AppKitDefined"
				"14 - SystemDefined"
				"15 - ApplicationDefined"
				"16 - Periodic"
				"17 - CursorUpdate"
				"22 - ScrollWheel"
				"23 - TabletPoint"
				"24 - TabletProximity"
				"25 - OtherMouseDown"
				"26 - OtherMouseUp"
				"27 - OtherMouseDragged"
				"28 - Gesture"
				"29 - Magnify"
				"30 - Swipe"
				"18 - Rotate"
				"19 - BeginGesture"
				"20 - EndGesture"
				"32 - SmartMagnify"
				"33 - QuickLook"
				"34 - Pressure"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
