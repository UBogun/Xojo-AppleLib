#tag Class
Protected Class AppleAVAudioUnit
Inherits AppleAVAudioNode
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7374616E7469617465732061206E657720417564696F556E697420616E642063616C6C732074686520636F6D706C6574696F6E48616E646C6572
		Sub Constructor(Description as AudioToolboxFramework.AudioComponentDescription, Options As AudioToolboxFramework.AudioComponentInstantiationOptions, CompletionHandler As AppleBlock = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  if CompletionHandler = nil then CompletionHandler = new AppleBlock(AddressOf InitCompletionHandler)
		  Super.Constructor(instantiateWithComponentDescription (classptr, Description, Options, CompletionHandler.Handle))
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaudioComponentDescription Lib AVFoundationLibname Selector "audioComponentDescription" (id as ptr) As AudioToolboxFramework.AudioComponentDescription
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmanufacturerName Lib AVFoundationLibname Selector "manufacturerName" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getversion Lib AVFoundationLibname Selector "version" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub InitCompletionHandler(Unit as ptr, error as ptr)
		  dim AVUnit as AppleAVAudioUnit = AppleAVAudioUnit.MakeFromPtr(unit)
		  dim InstantiationError As AppleError = AppleError.MakefromPtr(error)
		  RaiseEvent UnitInitialized AVUnit, InstantiationError
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function instantiateWithComponentDescription Lib AVFoundationLibname Selector "instantiateWithComponentDescription:options:completionHandler:" (id as ptr, componentDescription as AudioToolboxFramework . AudioComponentDescription, options as AudioToolboxFramework . AudioComponentInstantiationOptions, completion as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function loadAudioUnitPresetAtURL Lib AVFoundationLibname Selector "loadAudioUnitPresetAtURL:error:" (id as ptr, url as ptr, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4C6F61647320556E697420707265736574732066726F6D20616E2055524C2E2052616973657320616E204572726F72457863657074696F6E20696620736F6D657468696E6720676F65732077726F6E672E
		Sub LoadPresets(Presets as AppleURL)
		  dim error as new appleerror
		  dim p as ptr = error.id
		  dim result as Boolean = loadAudioUnitPresetAtURL (mid, presets.id, p)
		  if not result then
		    error = AppleError.MakefromPtr(p)
		    MakeException error.LocalizedDescription
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleAVAudioUnit
		  return if (aptr = nil, nil, new AppleAVAudioUnit(aptr))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120556E697420696E697469616C697A6174696F6E20636F6D706C657465732E
		Event UnitInitialized(Unit as AppleAVAudioUnit, Error As AppleError)
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		audioUnit, AUAudioUnit missing
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F20636F6D7072657373696F6E206465736372697074696F6E206F662074686520756E6465726C79696E6720436F726520417564696F20617564696F20756E69742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getaudioComponentDescription (mid)
			End Get
		#tag EndGetter
		audioComponentDescription As AudioToolboxFramework.AudioComponentDescription
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("AVAudioUnit")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F6620746865206D616E756661637475726572206F662074686520617564696F20756E69740A2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmanufacturerName (mid)
			End Get
		#tag EndGetter
		ManufacturerName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520617564696F556E69742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getname (mid)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076657273696F6E206E756D626572206F662074686520617564696F20756E69742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getversion (mid)
			End Get
		#tag EndGetter
		Version As Uinteger
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
			Name="ManufacturerName"
			Group="Behavior"
			Type="Text"
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
			Name="NumberOfInputs"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfOutputs"
			Group="Behavior"
			Type="UInteger"
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
			Name="Version"
			Group="Behavior"
			Type="Uinteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
