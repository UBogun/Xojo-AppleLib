#tag Class
Protected Class AppleSCNANimationEvent
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function animationEventWithKeyTime Lib SceneKitLibname Selector "animationEventWithKeyTime:eventBlock:" (id as ptr, Time As CGFloat, Block as Ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616E696D6174696F6E206576656E742E2054696D6520697320612076616C7565206265747765656E20302E3020616E6420312E302073706563696679696E67207468652072656C61746976722074696D6520666F722074726967676572696E6720746865206576656E742E
		Sub Constructor(Time As Double, Block As AppleBlock)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(animationEventWithKeyTime(classptr, time, block.Handle))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNANimationEvent
		  return if (aptr = nil, nil, new AppleSCNANimationEvent(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 54656D706C61746520666F722074686520626C6F636B2063616C6C6564207768656E20616E20616E696D6174696F6E206576656E742074726967676572732E
		Private Sub SCNAnimationEventBlockTemplate(Animation as ptr, animatedObject as ptr, PlayingBackward as Boolean)
		  // A Template for SCNAnimationEvent Blocks. 
		  // Remove the appropriate #pragmas
		  
		  Dim CoreAnimation as AppleCAAnimation = AppleCAAnimation.MakeFromPtr(Animation)
		  dim animatedAppleobject as AppleObject = AppleObject.MakeFromPtr(animatedObject) // Better tweak this to the class you address if appropriate.
		  
		  #pragma unused CoreAnimation
		  #pragma Unused animatedAppleobject
		  #pragma unused PlayingBackward
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNAnimationEvent")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


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
	#tag EndViewBehavior
End Class
#tag EndClass
