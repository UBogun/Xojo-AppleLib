#tag Class
Protected Class AppleImage
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function blendedColorWithFraction Lib appkitlibname Selector "blendedColorWithFraction:ofColor:" (id as ptr, fraction as cgfloat, OtherColor As Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53496D6167652066726F6D206120506963747572652E
		Sub Constructor(Pic as picture)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(pic.CopyOSHandle (picture.HandleType.macNSImage))
		  // RetainClassobject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function fromPicture(aPic as Picture) As AppleImage
		  #if targetmacos
		    return new AppleImage(apic)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleImage
		  return if (aptr = nil, nil, new appleimage(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSImage")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520696D6167652E
		#tag Getter
			Get
			  return FoundationFrameWork.getSize(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setsize id,value
			End Set
		#tag EndSetter
		Size As FoundationFrameWork.NSSize
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
