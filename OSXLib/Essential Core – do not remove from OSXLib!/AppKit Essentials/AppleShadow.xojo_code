#tag Class
Protected Class AppleShadow
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)))
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getshadowBlurRadius Lib appkitlibname Selector "shadowBlurRadius" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getshadowColor Lib appkitlibname Selector "shadowColor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getshadowOffset Lib appkitlibname Selector "shadowOffset" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleShadow
		  return if (aptr = nil, nil, new AppleShadow(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520736861646F77206F662073756273657175656E742064726177696E67206F7065726174696F6E7320746F2074686520736861646F7720726570726573656E746564206279207468652072656365697665722E
		Sub Set()
		  set(mid)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub set Lib appkitlibname Selector "set" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setshadowBlurRadius Lib appkitlibname Selector "setShadowBlurRadius:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setshadowColor Lib appkitlibname Selector "setShadowColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setshadowOffset Lib appkitlibname Selector "setShadowOffset:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		OS X 10.11.5
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  #if TargetMacos
			    static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSShadow")
			    return mClassPtr
			  #endif
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C757220726164697573206F662074686520736861646F772E
		#tag Getter
			Get
			  #if targetmacos
			    return getShadowBlurRadius(mid)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetmacos
			    setShadowBlurRadius(mid, value)
			  #endif
			End Set
		#tag EndSetter
		ShadowBlurRadius As CGFloat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520736861646F772E
		#tag Getter
			Get
			  #if targetmacos
			    return applecolor.makefromptr( getShadowcolor(mid))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetmacos
			    setShadowcolor(mid, if (value = nil, nil, value.id))
			  #endif
			End Set
		#tag EndSetter
		ShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F66667365742076616C756573206F662074686520736861646F772E
		#tag Getter
			Get
			  #if targetmacos
			    return getShadowOffset(mid)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetmacos
			    setShadowOffset(mid, value)
			  #endif
			End Set
		#tag EndSetter
		ShadowOffset As FoundationFrameWork.nssize
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
