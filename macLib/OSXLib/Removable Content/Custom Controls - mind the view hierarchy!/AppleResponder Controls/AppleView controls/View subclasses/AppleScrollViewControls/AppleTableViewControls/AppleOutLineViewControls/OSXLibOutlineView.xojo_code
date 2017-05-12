#tag Class
Protected Class OSXLibOutlineView
Inherits OSXLibTableView
	#tag Event
		Function InitControl() As AppleScrollview
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  dim obj as applescrollview = raiseevent InitControl
		  if obj = nil then
		    obj = new AppleScrollView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		    obj.registercontrol self // and register this instance so it receives the events.
		    mTableViewObject = new AppleOutlineView(obj.frame)
		    obj.documentview = mTableViewObject
		    dim mask as new AppleAutoresizingMask(self) // Yes: Copy the locks 
		    obj.AutoResizingMask = mask // … to the autoresizing mask
		    // Please note the internal events of the declared class will not fire anymore.
		    // This is to avoid confusions where an event expects a return value.
		    
		  end if
		  return obj
		  
		End Function
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event InitControl() As AppleScrollView
	#tag EndHook


	#tag Property, Flags = &h21
		Private mTableViewObject As AppleOutlineView
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTableViewObject
			End Get
		#tag EndGetter
		TableViewObject As AppleOutlineView
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
