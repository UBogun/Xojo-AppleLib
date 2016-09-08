#tag Class
Protected Class AppleSKRegion
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Declare Function infiniteRegion lib spritekitlibname selector "infiniteRegion" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (infiniteRegion(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Path as AppleCGPath)
		  declare function initWithPath lib spritekitlibname selector "initWithPath:" (id as ptr, Path as Ptr) as ptr
		  super.Constructor(initWithPath(alloc(ClassPtr), Path.CFTypeRef))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(asize as FoundationFramework.NSSize)
		  #if Target64bit
		    declare function initWithSize lib spritekitlibname selector "initWithSize:" (id as ptr, size as FoundationFramework.NSSize) as ptr
		    super.Constructor(initWithSize(alloc(ClassPtr), asize))
		  #elseif Target32Bit
		    declare function initWithSize lib spritekitlibname selector "initWithSize:" (id as ptr, size as FoundationFramework.NSSize32Bit) as ptr
		    super.Constructor(initWithSize(alloc(ClassPtr), asize.toNSSize32))
		  #endif
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Radius as Single)
		  declare function initWithRadius lib spritekitlibname selector "initWithRadius:" (id as ptr, radius as single) as ptr
		  super.Constructor(initWithRadius(alloc(ClassPtr), Radius))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as FoundationFramework.NSPoint) As Boolean
		  #if Target64Bit
		    declare Function containsPoint lib spritekitlibname selector "containsPoint:" (id as ptr, aPoint as FoundationFramework.NSPoint) as Boolean
		    return containsPoint (id, apoint)
		  #elseif Target32Bit
		    declare Function containsPoint lib spritekitlibname selector "containsPoint:" (id as ptr, aPoint as FoundationFramework.NSPoint32Bit) as Boolean
		    return containsPoint (id, apoint.toNSPoint32)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DifferenceRegion(SubtractRegion as AppleSKRegion) As AppleSKRegion
		  Declare function regionByDifferenceFromRegion lib spritekitlibname selector "regionByDifferenceFromRegion:" (id as ptr, region as ptr) as ptr
		  return AppleSKRegion.MakeFromPtr (regionByDifferenceFromRegion(id, SubtractRegion.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKRegion
		  return if (aptr = nil, nil, new AppleSKRegion(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UniteRegions(Region as AppleSKRegion) As AppleSKRegion
		  Declare function regionByUnionWithRegion lib spritekitlibname selector "regionByUnionWithRegion:" (id as ptr, region as ptr) as ptr
		  return AppleSKRegion.MakeFromPtr (regionByUnionWithRegion(id, Region.id))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (ClassPtr <> nil)
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKRegion")
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
			  Declare function inverseRegion lib spritekitlibname selector "inverseRegion" (id as ptr) as ptr
			  return AppleSKRegion.MakeFromPtr (inverseRegion(id))
			End Get
		#tag EndGetter
		InverseRegion As AppleSKRegion
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function path lib spritekitlibname selector "path" (id as ptr) as ptr
			  return new AppleCGPath (path(id))
			End Get
		#tag EndGetter
		Path As AppleCGPath
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
