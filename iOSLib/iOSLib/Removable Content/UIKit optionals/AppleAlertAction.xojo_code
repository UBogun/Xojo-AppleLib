#tag Class
Protected Class AppleAlertAction
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub ActionHandler(ActionPtr as Ptr)
		  Dim actionitem as new AppleAlertAction (actionptr)
		  //Here you could do something with the Alert - but you'll probably rather want to catch it at the controller.
		  #pragma unused actionitem
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Controller as AppleAlertController, Title as CFStringRef, Style as UIAlertActionStyle = uiAlertActionStyle.Default, ActionHandler as appleblock = Nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		  if ActionHandler = nil then
		    ActionHandler = new AppleBlock (ActionHandler)
		  end if
		  declare function actionWithTitle lib UIKitLibname selector "actionWithTitle:style:handler:" (clsRef as ptr, title as CFStringRef, style as UIAlertActionStyle, UIAlertAction as ptr) as ptr
		  
		  Super.Constructor (actionWithTitle (ClassPtr, Title, style, ActionHandler.Handle))
		  RetainClassObject
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIAlertAction")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function enabled lib UIKitLibname selector "isEnabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setEnabled lib UIKitLibname selector "setEnabled:" (id as ptr, value as Boolean)
			  setenabled (id, value)
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function style lib UIKitLibname selector "style" (obj_id as ptr) as UIAlertActionStyle
			  return style (id)
			End Get
		#tag EndGetter
		Style As UIALertActionStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			Text
		#tag EndNote
		#tag Getter
			Get
			  return UIKitFramework.getTitle(mid)
			End Get
		#tag EndGetter
		Title As Text
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
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
			Name="Style"
			Group="Behavior"
			Type="UIALertActionStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Cancel"
				"2 - Destructive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
