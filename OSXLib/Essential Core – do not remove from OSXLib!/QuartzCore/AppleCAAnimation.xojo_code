#tag Class
Protected Class AppleCAAnimation
Inherits AppleCAMEdiaTimingObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function animation Lib QuartzCoreLib Selector "animation" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1, Description = 437265617465732061206E6577204341416E696D6174696F6E20696E7374616E63652E
		Protected Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(animation(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537065636966696573207468652064656661756C742076616C7565206F66207468652070726F706572747920776974682074686520737065636966696564206B65792E0A42656361757365207468652076616C756520666F72206B65792063616E20626520616E7920747970652C206C696B652061207374727563747572652C2069742069732072657475726E6564206173206120707472206F6E6C792E
		Shared Function DefaultValue(Key As Text) As Ptr
		  return getdefaultValueForKey (classptr, key)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdefaultValueForKey Lib QuartzCoreLib Selector "defaultValueForKey:" (id as ptr, key as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisRemovedOnCompletion Lib QuartzCoreLib Selector "isRemovedOnCompletion" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleCAAnimation
		  return if (aptr = nil, nil, new AppleCAAnimation (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C656420746F20747269676765722074686520616374696F6E2073706563696669656420627920746865206964656E7469666965722E
		Sub RunAction(Key As CFStringRef, OBJ As AppleObject, Arguments As AppleDictionary = nil)
		  runActionForKey id, key, obj.id, if (arguments = nil, nil, arguments.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionForKey Lib QuartzCoreLib Selector "runActionForKey:object:arguments:" (id as ptr, key as cfstringRef, object as Ptr, arduments as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setRemovedOnCompletion Lib QuartzCoreLib Selector "setRemovedOnCompletion:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status complete for this level
		
		Needs subclass for Scenekit additions
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CAAnimation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F626A6563742073706563696669656420746F2072656365697665207065726970686572616C206576656E74732E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(AppKitFramework.getdelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdelegate(id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 49662074686520616E696D6174696F6E2069732072656D6F7665642066726F6D2074686520746172676574206C61796572E280997320616E696D6174696F6E732075706F6E20636F6D706C6574696F6E2E
		#tag Getter
			Get
			  return getisRemovedOnCompletion (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRemovedOnCompletion (id, value)
			End Set
		#tag EndSetter
		RemovedOnCompletion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C2074696D696E672066756E6374696F6E20646566696E696E672074686520706163696E67206F662074686520616E696D6174696F6E2E
		#tag Getter
			Get
			  return AppleCAMediaTimingFunction.MakeFromPtr(QuartzCoreFramework.gettimingfunction (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  QuartzCoreFramework.settimingFunction id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		TimingFunction As AppleCAMediaTimingFunction
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
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
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
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
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilterBias"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemovedOnCompletion"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
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
	#tag EndViewBehavior
End Class
#tag EndClass
