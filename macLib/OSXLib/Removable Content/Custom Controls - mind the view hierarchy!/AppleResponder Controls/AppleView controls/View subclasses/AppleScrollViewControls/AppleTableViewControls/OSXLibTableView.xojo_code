#tag Class
Protected Class OSXLibTableView
Inherits OSXLibScrollView
	#tag Event
		Function InitControl() As AppleScrollview
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  
		  
		  Dim obj As AppleScrollView = RaiseEvent InitControl // Let’s see if a subclass wants to establish itself instead
		  If obj = Nil Then // no!
		    obj = If (mAppleObject = Nil, CreateObject, AppleObject)
		    UsedAddhandler = True
		    mTableViewObject = New AppleTableView(obj.frame)
		    obj.documentview = mTableViewObject
		    AttachNotifications
		  End If
		  Return obj // So it will receive its super’s events
		  
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Function Open() As Boolean
		  if not raiseevent open then
		    AppleObject.Frame = FoundationFrameWork.NSMakeRect (me.Left, window.height-  (me.top + me.Height), me.Width, me.Height)
		    AppleObject.AutoResizingMask = new AppleAutoresizingMask(self)
		    AppleObject.TranslatesAutoresizingMaskIntoConstraints = true
		    EmbedAppleObject
		  end if
		  return true
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub AttachNotifications()
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleControl.kNSControlTextDidBeginEditingNotification, mTableViewObject, AppleOperationQueue.MainQueue, New appleblock (AddressOf BeginEditText)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleControl.kNSControlTextDidEndEditingNotification, mTableViewObject, AppleOperationQueue.MainQueue, New appleblock (AddressOf EndEditText)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleControl.kNSControlTextDidChangeNotification, mTableViewObject, AppleOperationQueue.MainQueue, New appleblock (AddressOf TextDidChange)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleTableView.kNSTableViewColumnDidMoveNotification, mTableViewObject, AppleOperationQueue.MainQueue, New appleblock (AddressOf ColumnMoved)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleTableView.kNSTableViewColumnDidResizeNotification, mTableViewObject, AppleOperationQueue.MainQueue, New appleblock (AddressOf ColumnResized)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleTableView.kNSTableViewSelectionDidChangeNotification, mTableViewObject, AppleOperationQueue.MainQueue, New appleblock (AddressOf SelectionChanged)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleTableView.kNSTableViewSelectionIsChangingNotification, mTableViewObject, AppleOperationQueue.MainQueue, New appleblock (AddressOf SelectionChanging)))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub BeginEditText(notification as ptr)
		  If Me <> Nil Then RaiseEvent TextEditStarted
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub ColumnMoved(notification as ptr)
		  Dim noti As New AppleNotification(Notification)
		  Dim dict As AppleDictionary = noti.UserInfo
		  Dim oldColumn As AppleNumber = AppleNumber.MakefromPtr(dict.PtrForKey("NSOldColumn"))
		  Dim newColumn As AppleNumber = AppleNumber.MakefromPtr(dict.PtrForKey("NSNewColumn"))
		  
		  If Me <> Nil Then RaiseEvent ColumnMoved(oldColumn.IntegerValue, newColumn.IntegerValue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub ColumnResized(notification as ptr)
		  Dim noti As New AppleNotification(Notification)
		  Dim dict As AppleDictionary = noti.UserInfo
		  dim column as AppleTableColumn = AppleTableColumn.MakefromPtr(dict.PtrForKey("NSTableColumn"))
		  Dim name As text = column.Identifier
		  Dim oldwidth As AppleNumber = AppleNumber.MakefromPtr(dict.PtrForKey("NSOldWidth"))
		  
		  If Me <> Nil Then RaiseEvent ColumnResized(name, oldwidth.DoubleValue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub EndEditText(notification as ptr)
		  If Me <> Nil Then RaiseEvent TextEditFinished
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub SelectionChanged(notification as ptr)
		  If Me <> Nil Then RaiseEvent SelectionChanged
		  #pragma unused Notification
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub SelectionChanging(notification as ptr)
		  If Me <> Nil Then RaiseEvent MouseSelectionChange
		  #pragma unused Notification
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub TextDidChange(notification as ptr)
		  If Me <> Nil Then RaiseEvent TextChanged
		  #pragma unused notification
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120436F6C756D6E20686173206D6F7665642C20676976696E6720746865206F6C6420616E64206E657720696E64657820706F736974696F6E2E
		Event ColumnMoved(OldColumn as Integer, NewColumn As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E6120636F6C756D6E2077617320726573697A65642C20676976696E67206964656E74696669657220616E64206F6C642077696474682E
		Event ColumnResized(ColumnIdentifier as Text, OldWidth As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event InitControl() As AppleScrollview
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 466972657320617320616E204E535461626C6556696577206F626A65637427732073656C656374696F6E206368616E67657320287768696C6520746865206D6F75736520627574746F6E206973207374696C6C20646F776E292E204669726573206F6E6C7920666F72206D6F7573652073656C656374696F6E732E
		Event MouseSelectionChange()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 466972657320616674657220746865207461626C6576696577E28099732073656C656374696F6E20776173206368616E676564
		Event SelectionChanged()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206368616E676564207465787420696E20612063656C6C2E
		Event TextChanged()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520757365722066696E69736865642065646974696E67206120746578742063656C6C2E
		Event TextEditFinished()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220737461727465642065646974696E67206120746578742063656C6C2E
		Event TextEditStarted()
	#tag EndHook


	#tag Property, Flags = &h21
		Private mTableViewObject As AppleTableView
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTableViewObject
			End Get
		#tag EndGetter
		TableViewObject As AppleTableView
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
			Name="AllowMagnification"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowVibrancy"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Behavior"
			InitialValue="1"
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
			Name="AutohidesScrollers"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyAdjustsContentInsets"
			Visible=true
			Group="Behavior"
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
			Visible=true
			Group="Behavior"
			InitialValue="&c000000FF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderType"
			Visible=true
			Group="Behavior"
			InitialValue="None"
			Type="AppleView.NSBordertype"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Line"
				"2 - Bezel"
				"3 - Groove"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawsBackground"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DynamicScroll"
			Visible=true
			Group="Behavior"
			InitialValue="true"
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
			Name="FindBarPosition"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleScrollview.NSScrollViewFindBarPosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - AboveHorizontalRuler"
				"1 - AboveContent"
				"2 - BelowContent"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FlippedCoordinates"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusRingType"
			Visible=true
			Group="Behavior"
			InitialValue="Default"
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
			Name="HorizontalLineScroll"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalPageScroll"
			Visible=true
			Group="Behavior"
			InitialValue="100"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalRuler"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalScrollElasticity"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleScrollview.NSScrollElasticity"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - None"
				"2 - Allowed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalScroller"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			Name="Magnification"
			Visible=true
			Group="Behavior"
			InitialValue="1.0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxMagnification"
			Visible=true
			Group="Behavior"
			InitialValue="4"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinMagnification"
			Visible=true
			Group="Behavior"
			InitialValue="0.25"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PredominantAxisScrolling"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RulersVisible"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollerKnobStyle"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="AppleScroller.NSScrollerKnobStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Dark"
				"2 - Light"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollerStyle"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="AppleScroller.NSScrollerStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Legacy"
				"1 - Overlay"
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
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
			Name="VerticalLineScroll"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalPageScroll"
			Visible=true
			Group="Behavior"
			InitialValue="100"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalRuler"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalScrollElasticity"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="applescrollview.NSScrollElasticity"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - None"
				"2 - Allowed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalScroller"
			Visible=true
			Group="Behavior"
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
