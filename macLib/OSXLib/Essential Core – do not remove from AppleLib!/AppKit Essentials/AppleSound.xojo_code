#tag Class
Protected Class AppleSound
Inherits AppleObject
	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120736F756E642077697468206120676976656E20617564696F20646174612E
		Sub Constructor(data as AppleData)
		  super.Constructor (FoundationFrameWork.initWithData (alloc(ClassPtr), data.id), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A6573206120736F756E6420776974682074686520617564696F2064617461206C6F6361746564206174206120676976656E2055524C2E5768656E2062795265666572656E636520697320747275652C206F6E6C7920746865206E616D65206F662074686520736F756E642069732073746F726564207769746820746865204E53536F756E6420696E7374616E6365207768656E206172636869766564207573696E6720656E636F646557697468436F6465723A3B206F74686572776973652074686520617564696F206461746120697320617263686976656420616C6F6E6720776974682074686520696E7374616E63652E
		Sub Constructor(URL as AppleURL,  byReference as Boolean)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initWithContentsOfURL(alloc(classptr), url.id, byReference), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A6573206120736F756E642077697468207468652074686520617564696F2064617461206C6F6361746564206174206120676976656E2066696C65706174682E0A5768656E2062795265666572656E636520697320747275652C206F6E6C7920746865206E616D65206F662074686520736F756E642069732073746F726564207769746820746865204E53536F756E6420696E7374616E6365207768656E206172636869766564207573696E6720656E636F646557697468436F6465723A3B206F74686572776973652074686520617564696F206461746120697320617263686976656420616C6F6E6720776974682074686520696E7374616E63652E
		Sub Constructor(FileName as CFStringRef, byReference as Boolean)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initWithContentsOfFile(alloc(classptr), FileName, byReference), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getplaybackDeviceIdentifier Lib appkitlibname Selector "playbackDeviceIdentifier" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsoundNamed Lib appkitlibname Selector "soundNamed:" (id as ptr, name as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsoundUnfilteredTypes Lib appkitlibname Selector "soundUnfilteredTypes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithContentsOfFile Lib appkitlibname Selector "initWithContentsOfFile:byReference:" (id as ptr, file as cfstringref, byReference as boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithContentsOfURL Lib appkitlibname Selector "initWithContentsOfURL:byReference:" (id as ptr, url as ptr, byReference as boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSound
		  Return if (aptr = nil, nil, new AppleSound (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617573657320617564696F20706C61796261636B2E
		Sub Pause()
		  AppKitFramework.pause mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E6974696174657320617564696F20706C61796261636B2E
		Sub Play()
		  AppKitFramework.play mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573756D657320617564696F20706C61796261636B2E
		Sub Resume()
		  AppKitFramework.resume mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setplaybackDeviceIdentifier Lib appkitlibname Selector "setPlaybackDeviceIdentifier:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E53536F756E6420696E7374616E6365206173736F6369617465642077697468206120676976656E206E616D652E
		Shared Function SoundNamed(Soundname as CFStringRef) As AppleSound
		  dim result as AppleSound = AppleSound.MakeFromPtr(getsoundNamed(ClassPtr, Soundname))
		  if result <> nil then result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F707320617564696F20706C61796261636B2E
		Sub Stop()
		  AppKitFramework.stop mid
		End Sub
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		Pasteboard features
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then mClassPtr = FoundationFrameWork.NSClassFromString("NSSound")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736F756E64E280997320706C61796261636B2070726F67726573732C20696E207365636F6E64732E0A536F756E647320737461727420776974682063757272656E7454696D65203D203020616E6420656E6420776974682063757272656E7454696D65203D2028736F756E642E6475726174696F6E2D2031292E
		#tag Getter
			Get
			  return FoundationFrameWork.getcurrentTime (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setcurrenttime mid, value
			End Set
		#tag EndSetter
		CurrentTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F662074686520736F756E642E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(FoundationFramework.GetDelegate(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFramework.setDelegate(mid, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E206F662074686520736F756E642C20696E207365636F6E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return QuartzCoreFramework.getduration (mid)
			End Get
		#tag EndGetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520736F756E6420726573746172747320706C61796261636B207768656E20697420726561636865732074686520656E64206F662069747320636F6E74656E742E
		#tag Getter
			Get
			  return AppKitFramework.getloops (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setloops mid, value
			End Set
		#tag EndSetter
		Loops As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D652061737369676E656420746F2074686520736F756E642E20
		#tag Getter
			Get
			  return FoundationFrameWork.getname (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setName mid, value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4964656E7469666965732074686520736F756E64E2809973206F757470757420646576696365
		#tag Getter
			Get
			  return getplaybackDeviceIdentifier (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setplaybackDeviceIdentifier mid, value
			End Set
		#tag EndSetter
		PlaybackDeviceIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520736F756E6420697320706C6179696E672069747320617564696F20646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getPlaying (mid)
			End Get
		#tag EndGetter
		Playing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662055544973206F66207468652066696C6520747970657320746865204E53536F756E6420636C61737320756E6465727374616E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Return AppleArray.MakeFromPtr (getsoundUnfilteredTypes(ClassPtr))
			End Get
		#tag EndGetter
		Shared SoundUnfilteredTypes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520766F6C756D65206F662074686520736F756E642E
		#tag Getter
			Get
			  return AppKitFramework.getvolume (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setvolume mid, value
			End Set
		#tag EndSetter
		Volume As Single
	#tag EndComputedProperty


	#tag Constant, Name = PasteboardType, Type = Text, Dynamic = False, Default = \"NSSoundPboardType", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="CurrentTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
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
			Name="Loops"
			Group="Behavior"
			Type="Boolean"
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
			Name="PlaybackDeviceIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Playing"
			Group="Behavior"
			Type="Boolean"
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
			Name="Volume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
