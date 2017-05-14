#tag Class
 Attributes ( incomplete ) Protected Class AppleSKTransition
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CrossFade(duration as double) As AppleSKTransition
		  Declare Function crossFadeWithDuration lib SpriteKitLibName selector "crossFadeWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (crossFadeWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DoorsCloseHorizontal(duration as double) As AppleSKTransition
		  Declare Function doorsCloseHorizontalWithDuration lib SpriteKitLibName selector "doorsCloseHorizontalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsCloseHorizontalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DoorsCloseVertical(duration as double) As AppleSKTransition
		  Declare Function doorsCloseVerticalWithDuration lib SpriteKitLibName selector "doorsCloseVerticalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsCloseVerticalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DoorsOpenHorizontal(duration as double) As AppleSKTransition
		  Declare Function doorsOpenHorizontalWithDuration lib SpriteKitLibName selector "doorsOpenHorizontalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsOpenHorizontalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DoorsOpenVertical(duration as double) As AppleSKTransition
		  Declare Function doorsOpenVerticalWithDuration lib SpriteKitLibName selector "doorsOpenVerticalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsOpenVerticalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Doorway(duration as double) As AppleSKTransition
		  Declare Function doorwayWithDuration lib SpriteKitLibName selector "doorwayWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorwayWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Fade(duration as double) As AppleSKTransition
		  Declare Function fadeWithDuration lib SpriteKitLibName selector "fadeWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (fadeWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FadeWithColor(acolor as AppleColor, duration as double) As AppleSKTransition
		  Declare Function fadeWithColor lib SpriteKitLibName selector "fadeWithColor:duration:" (id as ptr, acolor as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (fadeWithColor (ClassPtr, acolor.id, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Filter(Filter As AppleCIFilter, Duration as Double) As AppleSKTransition
		  return new AppleSKTransition(transitionWithCIFilter(classptr, filter.id, Duration), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FlipHorizontal(duration as double) As AppleSKTransition
		  Declare Function flipHorizontalWithDuration lib SpriteKitLibName selector "flipHorizontalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (flipHorizontalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FlipVertical(duration as double) As AppleSKTransition
		  Declare Function flipVerticalWithDuration lib SpriteKitLibName selector "flipVerticalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (flipVerticalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MoveIn(direction as sktransitiondirection, duration as double) As AppleSKTransition
		  Declare Function moveInWithDirection lib SpriteKitLibName selector "moveInWithDirection:duration:" (id as ptr, direction as SKTransitionDirection, duration as double) as ptr
		  dim result as new AppleSKTransition (moveInWithDirection (ClassPtr, direction, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Push(direction as sktransitiondirection, duration as double) As AppleSKTransition
		  Declare Function pushWithDirection lib SpriteKitLibName selector "pushWithDirection:duration:" (id as ptr, direction as SKTransitionDirection, duration as double) as ptr
		  dim result as new AppleSKTransition (pushWithDirection (ClassPtr, direction, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Reveal(direction as sktransitiondirection, duration as double) As AppleSKTransition
		  Declare Function revealWithDirection lib SpriteKitLibName selector "revealWithDirection:duration:" (id as ptr, direction as SKTransitionDirection, duration as double) as ptr
		  dim result as new AppleSKTransition (revealWithDirection (ClassPtr, direction, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function transitionWithCIFilter Lib SpriteKitLibName Selector "transitionWithCIFilter:duration:" (id as ptr, filter as Ptr, duration as Double) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status not refined
		External methods missing, but complete else: macOS 10.12
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKTransition")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function pausesIncomingScene lib SpriteKitLibName selector "pausesIncomingScene" (id as ptr) as Boolean
			  return pausesIncomingScene (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPausesIncomingScene lib SpriteKitLibName selector "setPausesIncomingScene:" (id as ptr, value as Boolean)
			  setPausesIncomingScene id, value
			End Set
		#tag EndSetter
		PausesIncomingScene As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function pausesOutgoingScene lib SpriteKitLibName selector "pausesOutgoingScene" (id as ptr) as Boolean
			  return pausesOutgoingScene (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPausesOutgoingScene lib SpriteKitLibName selector "setPausesOutgoingScene:" (id as ptr, value as Boolean)
			  setPausesOutgoingScene id, value
			End Set
		#tag EndSetter
		PausesOutgoingScene As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = SKTransitionDirection, Type = Integer, Flags = &h0
		Up
		  Down
		  Right
		Left
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PausesIncomingScene"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PausesOutgoingScene"
			Group="Behavior"
			Type="Boolean"
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
	#tag EndViewBehavior
End Class
#tag EndClass
