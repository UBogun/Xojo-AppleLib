#tag Class
Protected Class AppleSKKeyframeSequence
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 416464732061206B65796672616D6520746F207468652073657175656E63652E
		Sub AddKeyframeValue(Time As Double, Assigns Value As AppleObject)
		  addKeyframeValue mid, value.id, time
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addKeyframeValue Lib SpriteKitLibName Selector "addKeyframeValue:time:" (id as ptr, value as Ptr, time as CGFloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A65732061206B65796672616D652073657175656E6365207769746820616E20696E697469616C20736574206F662076616C75657320616E642074696D65732E
		Sub Constructor(Values As AppleArray, Times As AppleArray)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean) -- From AppleObject
		  Super.Constructor(initWithKeyframeValues(alloc(classptr), values.id, times.id), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A65732061206E6577206B65796672616D652073657175656E63652E
		Sub Constructor(Capacity As UInteger)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean) -- From AppleObject
		  Super.Constructor(FoundationFrameWork.initWithCapacity(alloc(classptr), Capacity), true, false)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getinterpolationMode Lib SpriteKitLibName Selector "interpolationMode" (id as ptr) As SKInterpolationMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getKeyframeTimeForIndex Lib SpriteKitLibName Selector "getKeyframeTimeForIndex:" (id as ptr, index as UInteger) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getKeyframeValueForIndex Lib SpriteKitLibName Selector "getKeyframeValueForIndex:" (id as ptr, index as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrepeatMode Lib SpriteKitLibName Selector "repeatMode" (id as ptr) As SKRepeatMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithKeyframeValues Lib SpriteKitLibName Selector "initWithKeyframeValues:times:" (id as ptr, values as Ptr, times as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 47657473207468652074696D6520666F722061206B65796672616D6520696E207468652073657175656E63652E
		Function KeyframeTime(index as Uinteger) As Double
		  return getKeyframeTimeForIndex (mid, index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E676573207468652074696D6520666F722061207370656369666963206B65796672616D652E
		Sub KeyframeTime(index as Uinteger, assigns Time As Double)
		  setKeyframeTime mid, time, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265706C616365732061206B65796672616D6520696E207468652073657175656E636520776974682061206E6577206B65796672616D652E
		Sub KeyframeValue(Time As Double, Index As Uinteger, Assigns Value As AppleObject)
		  setKeyframeValueTimeIndex mid, value.id, time, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652076616C756520666F722061206B65796672616D6520696E207468652073657175656E63652E
		Function KeyframeValue(Index As Uinteger) As AppleObject
		  return AppleObject.MakeFromPtr(getKeyframeValueForIndex(mid, index))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E676573207468652076616C756520666F722061207370656369666963206B65796672616D652E
		Sub KeyframeValue(Index As Uinteger, Assigns Value As AppleObject)
		  setKeyframeValue mid, value.id, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKKeyframeSequence
		  return if (aptr = nil, nil, new AppleSKKeyframeSequence(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061206B65796672616D652066726F6D207468652073657175656E63652E
		Sub RemoveKeyframe(Index As UInteger)
		  removeKeyframeAtIndex mid, index
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeKeyframeAtIndex Lib SpriteKitLibName Selector "removeKeyframeAtIndex:" (id as ptr, Index As UInteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320746865206C6173742076616C756520696E207468652073657175656E63652E
		Sub removeLastKeyframe()
		  removeLastKeyframe mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeLastKeyframe Lib SpriteKitLibName Selector "removeLastKeyframe" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43616C63756C61746573207468652073616D706C65206174206120706172746963756C61722074696D652E
		Function Sample(Time As Double) As AppleObject
		  return AppleObject.MakeFromPtr(sampleAtTime(mid, time))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sampleAtTime Lib SpriteKitLibName Selector "sampleAtTime:" (id as ptr, time as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setinterpolationMode Lib SpriteKitLibName Selector "setInterpolationMode:" (id as ptr, value as SKInterpolationMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setKeyframeTime Lib SpriteKitLibName Selector "setKeyframeTime:forIndex:" (id as ptr, time as CGFloat, index as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setKeyframeValue Lib SpriteKitLibName Selector "setKeyframeValue:forIndex:" (id as ptr, value as Ptr, index as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setKeyframeValueTimeIndex Lib SpriteKitLibName Selector "setKeyframeValue:time:forIndex:" (id as ptr, value as Ptr, time as CGFloat, index as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrepeatMode Lib SpriteKitLibName Selector "setRepeatMode:" (id as ptr, value as SKRepeatMode)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKKeyframeSequence")
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
			  return FoundationFrameWork.getcount(mid)
			End Get
		#tag EndGetter
		Count As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F6465207573656420746F2064657465726D696E6520686F772076616C75657320666F722074696D6573206265747765656E20746865206B65796672616D6573206172652063616C63756C617465642E2044656661756C74204C696E6561722E
		#tag Getter
			Get
			  return getinterpolationMode(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setinterpolationMode (mid, value)
			End Set
		#tag EndSetter
		InterpolationMode As SKInterpolationMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F6465207573656420746F2064657465726D696E6520686F7720746865206B65796672616D652073657175656E636520726570656174732E2044656661756C7420436C616D702E
		#tag Getter
			Get
			  return getrepeatMode(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setrepeatMode (mid, value)
			End Set
		#tag EndSetter
		RepeatMode As SKRepeatMode
	#tag EndComputedProperty


	#tag Enum, Name = SKInterpolationMode, Type = Integer, Flags = &h0
		Linear = 1
		  Spline = 2
		Steps = 3
	#tag EndEnum

	#tag Enum, Name = SKRepeatMode, Type = Integer, Flags = &h0
		Clamp = 1
		Loopback = 2
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
