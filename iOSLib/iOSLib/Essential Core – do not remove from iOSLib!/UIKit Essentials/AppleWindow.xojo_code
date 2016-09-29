#tag Class
Protected Class AppleWindow
Inherits AppleView
	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub AttachNotificationCenter()
		  if NotificationObjects = nil then 
		    NotificationObjects = new Dictionary
		    dim result as AppleNotificationObject
		    dim VisibleBlock as new AppleBlock (addressof BecameVisibleBlock)
		    result = AppleNotificationCenter.addObserver(kUIWindowDidBecomeVisibleNotification, self, AppleOperationQueue.MainQueue, VisibleBlock)
		    NotificationObjects.Value(result) = result
		    dim HiddenBlock as new AppleBlock (addressof BecameHiddenBlock)
		    result =   AppleNotificationCenter.addObserver (kUIWindowDidBecomeHiddenNotification, self, AppleOperationQueue.MainQueue, hiddenblock)
		    NotificationObjects.Value(result) = result
		    dim KeyBlock as new AppleBlock (addressof BecameKeyBlock)
		    result =   AppleNotificationCenter.addObserver(kUIWindowDidBecomeKeyNotification, self, AppleOperationQueue.MainQueue, KeyBlock)
		    NotificationObjects.Value(result) = result
		    dim ResignBlock as new AppleBlock (addressof ResignedKeyBlock)
		    result =   AppleNotificationCenter.addObserver (kUIWindowDidResignKeyNotification, self, AppleOperationQueue.MainQueue, resignblock)
		    NotificationObjects.Value(result) = result
		    dim WillShowBlock as new AppleBlock (addressof WillShowNotificationBlock)
		    result =   AppleNotificationCenter.addObserver (kUIKeyboardWillShowNotification,self, AppleOperationQueue.MainQueue, WillShowBlock)
		    NotificationObjects.Value(result) = result
		    dim DidShowBlock as new AppleBlock (addressof DidShowNotificationBlock)
		    result =   AppleNotificationCenter.addObserver(kUIKeyboardDidShowNotification, self, AppleOperationQueue.MainQueue, DidShowBlock)
		    NotificationObjects.Value(result) = result
		    dim WillHideBlock as new AppleBlock (addressof WillHideKeyboardBlock)
		    result =   AppleNotificationCenter.addObserver(kUIKeyboardWillHideNotification, self, AppleOperationQueue.MainQueue, WillHideBlock)
		    NotificationObjects.Value(result) = result
		    dim DidHideBlock as new AppleBlock (addressof DidHideKeyboardBlock)
		    result =   AppleNotificationCenter.addObserver(kUIKeyboardDidHideNotification, self, AppleOperationQueue.MainQueue, DidHideBlock)
		    NotificationObjects.Value(result) = result
		    dim WillChangeBlock as new AppleBlock (addressof WillChangeKeyboardBlock)
		    result =   AppleNotificationCenter.addObserver (kUIKeyboardWillChangeFrameNotification, self, AppleOperationQueue.MainQueue, WillChangeBlock)
		    NotificationObjects.Value(result) = result
		    dim DidChangeBlock as new AppleBlock (addressof DidChangeKeyboardBlock)
		    result =  AppleNotificationCenter.addObserver (kUIKeyboardDidChangeFrameNotification,self, AppleOperationQueue.MainQueue, DidChangeBlock)
		    NotificationObjects.Value(result) = result
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub BecameHiddenBlock(notification as Ptr)
		  dim notificationobject as new AppleNotification (notification)
		  dim ego as  AppleWindow = AppleWindow.MakefromPtr(notificationobject.NotificationObject.id)
		  if ego <> nil then ego.informonHidden
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub BecameKeyBlock(Notification as Ptr)
		  dim notificationobject as new AppleNotification (notification)
		  dim ego as  AppleWindow = AppleWindow.MakefromPtr(notificationobject.NotificationObject.id)
		  if ego <> nil then ego.informonBecameKey
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub BecameVisibleBlock(Notification as ptr)
		  dim notificationobject as new AppleNotification (notification)
		  dim ego as  AppleWindow = AppleWindow.MakefromPtr(notificationobject.NotificationObject.id)
		  if ego <> nil then ego.informonshown
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506173732074686520626F756E6473206F6620616E206164646974696F6E616C2053637265656E20746F2063726561746520612077696E646F7720666F722069742E
		Sub Constructor(Frame as FoundationFrameWork.nsrect)
		  super.Constructor(UIKitFramework.initwithframe(alloc(classptr), frame), true)
		  AttachNotificationCenter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aptr as ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(anID as Ptr) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (aptr)
		  AttachNotificationCenter
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E6174652073797374656D206F66206120676976656E2077696E646F7720746F2074686174206F66207468652063757272656E742077696E646F772E
		Function ConvertPointFromWindow(point as FoundationFrameWork.nspoint, window as AppleWindow) As FoundationFrameWork.nspoint
		  return ConvertPointfromWindow (id, point, window.id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function convertPointFromWindow Lib UIKitLibname Selector "convertPoint:fromWindow:" (id as ptr, point as FoundationFrameWork . nspoint, window as ptr) As FoundationFrameWork.nspoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652077696E646F77E280997320636F6F7264696E6174652073797374656D20746F2074686174206F6620616E6F746865722077696E646F772E
		Function ConvertPointToWindow(point as FoundationFrameWork.nspoint, window as AppleWindow) As FoundationFrameWork.nspoint
		  return ConvertPointToWindow (id, point, window.id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function convertPointtoWindow Lib UIKitLibname Selector "convertPoint:toWindow:" (id as ptr, point as FoundationFrameWork . nspoint, window as ptr) As FoundationFrameWork.nspoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E6174652073797374656D206F6620616E6F746865722077696E646F7720746F2074686174206F66207468652063757272656E742077696E646F772E
		Function ConvertRectFromWindow(rect as FoundationFrameWork.nsrect, window as AppleWindow) As FoundationFrameWork.nsrect
		  return ConvertRectFromWindow (id, rect, window.id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function convertRectFromWindow Lib UIKitLibname Selector "convertRect:fromWindow:" (id as ptr, rect as FoundationFrameWork . nsrect, window as ptr) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652077696E646F77E280997320636F6F7264696E6174652073797374656D20746F2074686174206F6620616E6F746865722077696E646F772E
		Function ConvertRectToWindow(rect as FoundationFrameWork.nsrect, window as AppleWindow) As FoundationFrameWork.nsrect
		  return ConvertRectToWindow (id, rect, window.id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function convertRecttoWindow Lib UIKitLibname Selector "convertRect:toWindow:" (id as ptr, rect as FoundationFrameWork . nsrect, window as ptr) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub destructor()
		  if NotificationObjects <> nil and me.RetainCount = 1 then 
		    for each e as DictionaryEntry in NotificationObjects
		      AppleNotificationCenter.removeObserver AppleNotificationObject((e.Value))
		      NotificationObjects.Remove  e.value
		    next
		    NotificationObjects = nil
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub DidChangeKeyboardBlock(Notification as ptr)
		  if me <> nil then 
		    dim notificationobject as new AppleNotification (notification)
		    dim userDict as  iOSLibKeyboardEventDictionary = iOSLibKeyboardEventDictionary.MakeFromPtr(notificationobject.UserInfo.id)
		    RaiseEvent DidChangeKeyboardFrame (userdict)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub DidHideKeyboardBlock(Notification as ptr)
		  if me <> nil then 
		    dim notificationobject as new AppleNotification (notification)
		    dim userDict as  iOSLibKeyboardEventDictionary = iOSLibKeyboardEventDictionary.MakeFromPtr(notificationobject.UserInfo.id)
		    RaiseEvent DidHideKeyboard (userdict)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub DidShowNotificationBlock(Notification as ptr)
		  if me <> nil then 
		    dim notificationobject as new AppleNotification (notification)
		    dim userDict as  iOSLibKeyboardEventDictionary = iOSLibKeyboardEventDictionary.MakeFromPtr(notificationobject.UserInfo.id)
		    RaiseEvent DidShowKeyboard (userdict)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getrootViewController Lib UIKitLibname Selector "rootViewController" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getScreen Lib UIKitLibname Selector "screen" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getWindowLevel Lib UIKitLibname Selector "windowLevel" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnBecameKey()
		  raiseevent BecameKeywindow
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnHidden()
		  raiseevent hidden
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnResignedKey()
		  raiseevent ResignedKeywindow
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnShown()
		  raiseevent shown
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isKeyWindow Lib UIKitLibname Selector "isKeyWindow" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleWindow
		  return if (aptr = nil, nil, new AppleWindow (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D616B6573207468652077696E646F7720746865206B65792077696E646F7720616E642076697369626C652E
		Sub MakeKeyAndVisible()
		  setmakeKeyAndVisible id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub ResignedKeyBlock(Notification as ptr)
		  dim notificationobject as new AppleNotification (notification)
		  dim ego as  AppleWindow = AppleWindow.MakefromPtr(notificationobject.NotificationObject.id)
		  if ego <> nil  then ego.informonResignedKey
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44697370617463686573206576656E74732073656E7420746F20746865207265636569766572206279207468652055494170706C69636174696F6E206F626A65637420746F206974732076696577732E20596F752077696C6C206D6F73742070726F6261626C79206E6F74206E65656420746F2063616C6C2074686973206D6574686F642062757420696E73746561642072656C79206F6E207468652064656675616C742066756E6374696F6E732E
		Sub SendEvent(anEvent as AppleNSEvent)
		  SendEvent id, anEvent.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub sendEvent Lib UIKitLibname Selector "sendEvent:" (id as ptr, anEvent as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setmakeKeyAndVisible Lib UIKitLibname Selector "makeKeyAndVisible" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setmakeKeyWindow Lib UIKitLibname Selector "makeKeyWindow" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setrootViewController Lib UIKitLibname Selector "setRootViewController:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setScreen Lib UIKitLibname Selector "setScreen:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setWindowLevel Lib UIKitLibname Selector "setWindowLevel:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub WillChangeKeyboardBlock(Notification as ptr)
		  if me <> nil then 
		    dim notificationobject as new AppleNotification (notification)
		    dim userDict as  iOSLibKeyboardEventDictionary = iOSLibKeyboardEventDictionary.MakeFromPtr(notificationobject.UserInfo.id)
		    RaiseEvent WillChangeKeyboardFrame (userdict)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub WillHideKeyboardBlock(Notification as ptr)
		  if me <> nil then 
		    dim notificationobject as new AppleNotification (notification)
		    dim userDict as  iOSLibKeyboardEventDictionary = iOSLibKeyboardEventDictionary.MakeFromPtr(notificationobject.UserInfo.id)
		    RaiseEvent WillHideKeyboard (userdict)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub WillShowNotificationBlock(Notification as ptr)
		  if me <> nil then 
		    dim notificationobject as new AppleNotification (notification)
		    dim userDict as  iOSLibKeyboardEventDictionary = iOSLibKeyboardEventDictionary.MakeFromPtr(notificationobject.UserInfo.id)
		    RaiseEvent WillShowKeyboard (userdict)
		  end if
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 5468652057696E646F7720626563616D6520746865206B65792077696E646F772E
		Event BecameKeyWindow()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865206B6579626F6172642773206672616D65206368616E6765642E
		Event DidChangeKeyboardFrame(UserDict as iOSLibKeyboardEventDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865206B6579626F617264207761732068696464656E2E
		Event DidHideKeyboard(UserDict as iOSLibKeyboardEventDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865206B6579626F617264207761732073686F776E2E
		Event DidShowKeyboard(UserDict as iOSLibKeyboardEventDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5468652057696E646F7720626563616D652068696464656E2E
		Event Hidden()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5468652057696E646F77206C6F737420697473206B65792077696E646F772073746174652E
		Event ResignedKeyWindow()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5468652057696E646F7720626563616D652076697369626C652E
		Event Shown()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865206B6579626F617264206672616D652077696C6C206368616E67652E
		Event WillChangeKeyboardFrame(UserDict as iOSLibKeyboardEventDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865206170702077696C6C206869646520746865206B6579626F6172642E
		Event WillHideKeyboard(UserDict as iOSLibKeyboardEventDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865206170702077696C6C2073686F772061206B6579626F6172642E
		Event WillShowKeyboard(UserDict as iOSLibKeyboardEventDictionary)
	#tag EndHook


	#tag Note, Name = Status completed & documented
		rootviewcontroller removed temporarily
		ios 9.2, without UIView event handling.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIWindow")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077696E646F7720697320746865206B65792077696E646F7720666F7220746865206170706C69636174696F6E2E
		#tag Getter
			Get
			  return isKeyWindow (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then setmakeKeyWindow id
			End Set
		#tag EndSetter
		KeyWindow As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared NotificationObjects As xojo.core.dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073637265656E206F6E207768696368207468652077696E646F772069732063757272656E746C7920646973706C617965642E
		#tag Getter
			Get
			  return applescreen.MakeFromPtr (getscreen(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setScreen id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Screen As AppleScreen
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static  kConst as double
			  if kConst = 0 then kConst = SystemConstantCGFLoat ("UIWindowLevelAlert", UIKitPath)
			  return kConst
			  
			End Get
		#tag EndGetter
		Shared UIWindowLevelAlert As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static  kConst as double
			  if kConst = 0 then kConst = SystemConstantCGFLoat ("UIWindowLevelNormal", UIKitPath)
			  return kConst
			  
			End Get
		#tag EndGetter
		Shared UIWindowLevelNormal As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static  kConst as double
			  if kConst = 0 then kConst = SystemConstantCGFLoat ("UIWindowLevelStatusBar", UIKitPath)
			  return kConst
			  
			End Get
		#tag EndGetter
		Shared UIWindowLevelStatusBar As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F77206C6576656C2E20526566657220746F2074686520746872656520554957696E646F774C6576656C20636C61737320636F6E7374616E747320666F72207479706963616C2076616C7565732E
		#tag Getter
			Get
			  Return getWindowLevel (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setWindowLevel (id, value)
			  
			End Set
		#tag EndSetter
		WindowLevel As Double
	#tag EndComputedProperty


	#tag Constant, Name = kUIKeyboardDidChangeFrameNotification, Type = Text, Dynamic = False, Default = \"UIKeyboardDidChangeFrameNotification", Scope = Public, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardDidHideNotification, Type = Text, Dynamic = False, Default = \"UIKeyboardDidHideNotification", Scope = Public, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardDidShowNotification, Type = Text, Dynamic = False, Default = \"UIKeyboardDidShowNotification", Scope = Public, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardWillChangeFrameNotification, Type = Text, Dynamic = False, Default = \"UIKeyboardWillChangeFrameNotification", Scope = Public, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardWillHideNotification, Type = Text, Dynamic = False, Default = \"UIKeyboardWillHideNotification", Scope = Public, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardWillShowNotification, Type = Text, Dynamic = False, Default = \"UIKeyboardWillShowNotification", Scope = Public, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIWindowDidBecomeHiddenNotification, Type = Text, Dynamic = False, Default = \"UIWindowDidBecomeHiddenNotification", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIWindowDidBecomeKeyNotification, Type = Text, Dynamic = False, Default = \"UIWindowDidBecomeKeyNotification", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIWindowDidBecomeVisibleNotification, Type = Text, Dynamic = False, Default = \"UIWindowDidBecomeVisibleNotification", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = kUIWindowDidResignKeyNotification, Type = Text, Dynamic = False, Default = \"UIWindowDidResignKeyNotification", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = NotificationAnimationCurveKey, Type = Text, Dynamic = False, Default = \"UIKeyboardAnimationCurveUserInfoKey", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationAnimationDurationKey, Type = Text, Dynamic = False, Default = \"UIKeyboardAnimationDurationUserInfoKey", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationFrameBeginKey, Type = Text, Dynamic = False, Default = \"UIKeyboardFrameBeginUserInfoKey", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationFrameEndKey, Type = Text, Dynamic = False, Default = \"UIKeyboardFrameEndUserInfoKey", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationLocalKeyboardKey, Type = Text, Dynamic = False, Default = \"UIKeyboardIsLocalUserInfoKey", Scope = Public
	#tag EndConstant


	#tag Enum, Name = Untitled, Flags = &h0
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
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
			Name="ClearsContextBeforeDrawing"
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
			Name="KeyWindow"
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
		#tag ViewProperty
			Name="WindowLevel"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
