#tag Class
Protected Class AppleCFObject
Implements AppleGeneralObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyDescription Lib CoreFoundationLibName (CFTypeRef as Ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CFCopyTypeIDDescription Lib CoreFoundationLibName (aCFTypeID as UInteger) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFEqual Lib CoreFoundationLibName (cf1 as ptr, cf2 as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFGetRetainCount Lib CoreFoundationLibName (CFTypeRef as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFGetTypeID Lib CoreFoundationLibName (CFTypeRef as Ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFHash Lib CoreFoundationLibName (CFTypeRef as Ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFRelease Lib CoreFoundationLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFRetain Lib CoreFoundationLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFShow Lib CoreFoundationLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor(aTypeRef as Ptr, dontretain as boolean = false)
		  mCFTypeRef = aTypeRef
		  
		  // Due to the Create Rule, whenever a CF method with "create" or "copy" in its name is used, it has ownership and does not need to retian it, but release it
		  //Therefore creation method calls this Constructor with a "true" for "dontretain"
		  // The Haswonership flag is set separately by the cunstructors if however the need for getting an object without retaining it should arise.
		  // When hasownership is true, the object gets released.
		  
		  if not dontretain then
		    Retain
		    mhasownership = true
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if not isNIL then
		    if mhasownership then
		      if libdebug then system.DebugLog "Releasing CFObject "+CFTypeDescription+", "+Description+", ARC: "+RetainCount.ToText
		      release
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherCFTypeObject as AppleCFObject) As boolean
		  return CFEqual (mCFTypeRef, anotherCFTypeObject.CFTypeRef)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GeneralID() As Ptr
		  // Part of the AppleGeneralObject interface.
		  
		  return mCFTypeRef
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromCFTypeRef(aCFTypeRef as ptr) As AppleCFObject
		  return if (aCFTypeRef = nil , NIL,  new AppleCFObject (aCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrintInDebugLog()
		  CFShow mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CFRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CFRetain (mCFTypeRef)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFCopyTypeIDDescription (TypeID)
			End Get
		#tag EndGetter
		CFTypeDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCFTypeRef
			End Get
		#tag EndGetter
		CFTypeRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFCopyDescription (mCFTypeRef)
			End Get
		#tag EndGetter
		Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFHash (mCFTypeRef)
			End Get
		#tag EndGetter
		Hash As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHasOwnership
			End Get
		#tag EndGetter
		HasOwnership As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (mcftyperef = nil)
			End Get
		#tag EndGetter
		isNIL As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Attributes( hidden ) Protected mCFTypeRef As Ptr
	#tag EndProperty

	#tag Property, Flags = &h0
		Attributes( hidden ) mHasOwnership As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFGetRetainCount (mCFTypeRef)
			End Get
		#tag EndGetter
		RetainCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFGetTypeID (mCFTypeRef)
			End Get
		#tag EndGetter
		TypeID As UInteger
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
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
			Type="Boolean"
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
			Type="Integer"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
