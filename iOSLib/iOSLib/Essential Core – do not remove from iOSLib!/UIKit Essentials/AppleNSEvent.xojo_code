#tag Class
Protected Class AppleNSEvent
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleNSEvent
		  return if (aptr = nil, nil, new AppleNSEvent (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F756368206F626A65637473207468617420617265206265696E672064656C69766572656420746F20746865207370656369666965642067657374757265207265636F676E697A65722E
		Function TouchesForGestureRecognizer(Recognizer as AppleGestureRecognizer) As AppleSet
		  Declare function touchesForGestureRecognizer lib UIKitLibname selector "touchesForGestureRecognizer:" (id as ptr, view as ptr) as ptr
		  return AppleSet.MakeFromPtr (touchesForGestureRecognizer(id, Recognizer.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4120736574206F66205549546F756368206F626A6563747320726570726573656E74696E672074686520746F756368657320666F72207468652073706563696669656420766965772072656C6174656420746F20746865206576656E7420726570726573656E746564206279207468652072656365697665722E
		Function TouchesForView(View as AppleView) As AppleSet
		  Declare function touchesForView lib UIKitLibname selector "touchesForView:" (id as ptr, view as ptr) as ptr
		  return AppleSet.MakeFromPtr (touchesForView(id, view.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F756368206F626A6563747320746861742062656C6F6E6720746F206120676976656E2077696E646F7720666F7220746865206576656E7420726570726573656E746564206279207468652072656365697665722E
		Function TouchesForWindow(Window as AppleWindow) As AppleSet
		  Declare function touchesForWindow lib UIKitLibname selector "touchesForWindow:" (id as ptr, view as ptr) as ptr
		  return AppleSet.MakeFromPtr (touchesForWindow(id, window.id))
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed and documented
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 52657475726E7320616C6C20746F756368206F626A65637473206173736F6369617465642077697468207468652072656365697665722E
		#tag Getter
			Get
			  Declare function allTouches lib UIKitLibname selector "allTouches" (id as ptr) as ptr
			  return AppleSet.MakeFromPtr (allTouches(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAllTouches lib UIKitLibname selector "setAllTouches:" (id as ptr, value as ptr)
			  setAllTouches id, value.id
			End Set
		#tag EndSetter
		AllTouches As AppleSet
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIEvent")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E73207468652073756274797065206F6620746865206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function subtype lib UIKitLibname selector "subtype" (id as ptr) as UIEventSubtype
			  return subtype (id)
			End Get
		#tag EndGetter
		Subytpe As UIEventSubtype
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D65207768656E20746865206576656E74206F636375727265642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return UIKitFramework.gettimeStamp (id)
			End Get
		#tag EndGetter
		TimeStamp As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E73207468652074797065206F6620746865206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function type lib UIKitLibname selector "type" (id as ptr) as UIEventType
			  return type (id)
			End Get
		#tag EndGetter
		Type As UIEventType
	#tag EndComputedProperty


	#tag Enum, Name = UIEventSubtype, Type = Integer, Flags = &h0
		None = 0
		  MotionShake = 1
		  RemoteControlPlay = 100
		  RemoteControlPause = 101
		  RemoteControlStop = 102
		  RemoteControlTogglePlayPause = 103
		  RemoteControlNextTrack = 104
		  RemoteControlPreviousTrack = 105
		  RemoteControlBeginSeekingBackward = 106
		  RemoteControlEndSeekingBackward = 107
		  RemoteControlBeginSeekingForward = 108
		RemoteControlEndSeekingForward = 109
	#tag EndEnum

	#tag Enum, Name = UIEventType, Type = Integer, Flags = &h0
		Touches
		  Motion
		RemoteControl
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
			Name="Subytpe"
			Group="Behavior"
			Type="UIEventSubtype"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - MotionShake"
				"100 - RemoteControlPlay"
				"101 - RemoteControlPause"
				"102 - RemoteControlStop"
				"103 - RemoteControlTogglePlayPause"
				"104 - RemoteControlNextTrack"
				"105 - RemoteControlPreviousTrack"
				"106 - RemoteControlBeginSeekingBackward"
				"107 - RemoteControlEndSeekingBackward"
				"108 - RemoteControlBeginSeekingForward"
				"109 - RemoteControlEndSeekingForward"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeStamp"
			Group="Behavior"
			Type="Double"
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
			Type="UIEventType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Touches"
				"1 - Motion"
				"2 - RemoteControl"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
