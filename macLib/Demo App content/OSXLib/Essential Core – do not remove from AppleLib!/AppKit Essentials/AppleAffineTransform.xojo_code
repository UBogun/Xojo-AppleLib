#tag Class
Protected Class AppleAffineTransform
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 417070656E64732074686520737065636966696564206D617472697820746F20746865207472616E73666F726D2E
		Sub Append(Transform as AppleAffineTransform)
		  appendTransform mid, Transform.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub appendTransform Lib appkitlibname Selector "appendTransform:" (id as ptr, transform as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E6577204E53416666696E655472616E73666F726D206F626A65637420696E697469616C697A656420746F20746865206964656E74697479206D61747269782E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(transform(classptr), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E6577204E53416666696E655472616E73666F726D206F626A65637420696E697469616C697A65642077697468207468652076616C756573206F6620616E6F7468657220416666696E655472616E73666F726D2E
		Sub Constructor(Transform as AppleAffineTransform)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initWithTransform(alloc(classptr), transform.id),  true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function gettransformStruct Lib appkitlibname Selector "transformStruct" (id as ptr) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithTransform Lib appkitlibname Selector "initWithTransform:" (id as ptr, transform as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265706C6163657320746865207472616E73666F726D206D617472697820776974682069747320696E7665727365206D61747269782E
		Sub Invert()
		  invert mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub invert Lib appkitlibname Selector "invert" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleAffineTransform
		  return if (aptr = nil, nil, new AppleAffineTransform(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726570656E64732074686520737065636966696564206D617472697820746F20746865207472616E73666F726D206279206D756C7469706C79696E6720626F74682E
		Sub Prepend(Transform as AppleAffineTransform)
		  prependTransform mid, Transform.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub prependTransform Lib appkitlibname Selector "prependTransform:" (id as ptr, transform as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206120726F746174696F6E20666163746F7220286D6561737572656420696E20646567726565732920746F20746865207472616E73666F726D6174696F6E206D61747269782E
		Sub RotateByDegrees(Degrees As Double)
		  rotateByDegrees mid, Degrees
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub rotateByDegrees Lib appkitlibname Selector "rotateByDegrees:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206120726F746174696F6E20666163746F7220286D6561737572656420696E2072616469616E732920746F20746865207472616E73666F726D6174696F6E206D61747269782E
		Sub RotateByRadians(radians As Double)
		  rotateByRadians mid, radians
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub rotateByRadians Lib appkitlibname Selector "rotateByRadians:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4170706C6965732074686520737065636966696564207363616C696E6720666163746F7220616C6F6E6720626F7468207820616E642079206178657320746F20746865207472616E73666F726D6174696F6E206D61747269782E
		Sub Scale(value As Double)
		  scaleBy mid, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C696573207363616C696E6720666163746F727320746F20656163682061786973206F6620746865207472616E73666F726D6174696F6E206D61747269782E
		Sub Scale(Xvalue As Double, YValue as Double)
		  scalexBy mid, Xvalue, YValue
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub scaleBy Lib appkitlibname Selector "scaleBy:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub scaleXBy Lib appkitlibname Selector "scaleXBy:yBy:" (id as ptr, x as cgfloat, y as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function transform Lib appkitlibname Selector "transform" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320746865207472616E73666F726D20746F2074686520737065636966696564204E53506F696E742064617461207479706520616E642072657475726E732074686520726573756C74732E
		Function TransformPoint(Point as FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  return transformPoint (mid, point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function transformPoint Lib appkitlibname Selector "transformPoint:" (id as ptr, aPoint as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320746865207472616E73666F726D20746F2074686520737065636966696564204E5353697A652064617461207479706520616E642072657475726E732074686520726573756C74732E
		Function TransformSize(size as FoundationFrameWork.NSsize) As FoundationFrameWork.NSsize
		  return transformsize (mid, size)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function transformSize Lib appkitlibname Selector "transformSize:" (id as ptr, aPoint as FoundationFrameWork . NSsize) As FoundationFrameWork.NSsize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4170706C6965732074686520737065636966696564207472616E736C6174696F6E20666163746F727320746F20746865207472616E73666F726D6174696F6E206D61747269782E
		Sub Translate(Xvalue As Double, YValue as Double)
		  translateXBy mid, Xvalue, YValue
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub translateXBy Lib appkitlibname Selector "translateXBy:yBy:" (id as ptr, x as cgfloat, y as cgfloat)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static mClassptr as ptr
			  if mClassptr = nil then mClassptr = FoundationFrameWork.NSClassFromString("NSAffineTransform")
			  return mClassptr
			End Get
		#tag EndGetter
		Shared Classptr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E6465726C79696E67204347416666696E65207374727563747572652028726561642D6F6E6C7929
		#tag Getter
			Get
			  return gettransformStruct (mid)
			End Get
		#tag EndGetter
		TransformStruct As CGAffineTransform
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
