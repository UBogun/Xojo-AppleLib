#tag Class
Protected Class AppleCIVector
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(X as Double)
		  #if Target64Bit
		    declare function vectorWithX lib CoreImageLibName selector "vectorWithX:" (id as ptr, value as double) as ptr
		  #elseif Target32Bit
		    declare function vectorWithX lib CoreImageLibName selector "vectorWithX:" (id as ptr, value as single) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (VectorWithX (ClassPtr, X))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(X as Double, Y As Double)
		  #if Target64Bit
		    declare function vectorWithXY lib CoreImageLibName selector "vectorWithX:Y:" (id as ptr, x as double, y as double) as ptr
		  #elseif Target32Bit
		    declare function vectorWithXY lib CoreImageLibName selector "vectorWithX:Y:" (id as ptr, x as single, y as single) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (VectorWithXY (ClassPtr, X, Y))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(X as Double, Y As Double, Z As Double)
		  #if Target64Bit
		    declare function vectorWithXYZ lib CoreImageLibName selector "vectorWithX:Y:Z:" (id as ptr, x as double, y as double, z as double) as ptr
		  #elseif Target32Bit
		    declare function vectorWithXYZ lib CoreImageLibName selector "vectorWithX:YZ::" (id as ptr, x as single, y as single, z as single) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (VectorWithXYZ (ClassPtr, X, Y, Z))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(X as Double, Y As Double, Z As Double, W As Double)
		  #if Target64Bit
		    declare function vectorWithXYZW lib CoreImageLibName selector "vectorWithX:Y:Z:W:" (id as ptr, x as double, y as double, z as double, W As Double) as ptr
		  #elseif Target32Bit
		    declare function vectorWithXYZW lib CoreImageLibName selector "vectorWithX:Y:Z:W:" (id as ptr, x as single, y as single, z as single, W as single) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (VectorWithXYZW (ClassPtr, X, Y, Z, W))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCIVector
		  return if (aptr = nil, Nil, new AppleCIVector (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint() As FoundationFramework.NSPoint
		  if count >=2 then return FoundationFrameWork.NSMakePoint (x, y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect() As FoundationFramework.NSRect
		  if count >=4 then return FoundationFrameWork.NSMakeRect (x, y, z, w)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CIVector")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.getCount (mid)
			End Get
		#tag EndGetter
		Count As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function stringRepresentation lib CoreImageLibName selector "stringRepresentation" (id as ptr) as CFStringRef
			  return stringRepresentation (id)
			End Get
		#tag EndGetter
		StringRepresentation As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function W lib CoreImageLibName selector "W" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function W lib CoreImageLibName selector "W" (id as ptr) as single
			  #endif
			  return W (id)
			End Get
		#tag EndGetter
		W As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function X lib CoreImageLibName selector "X" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function X lib CoreImageLibName selector "X" (id as ptr) as single
			  #endif
			  return X (id)
			End Get
		#tag EndGetter
		X As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function Y lib CoreImageLibName selector "Y" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function Y lib CoreImageLibName selector "Y" (id as ptr) as single
			  #endif
			  return Y (id)
			End Get
		#tag EndGetter
		Y As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function Z lib CoreImageLibName selector "Z" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function Z lib CoreImageLibName selector "Z" (id as ptr) as single
			  #endif
			  return Z (id)
			End Get
		#tag EndGetter
		Z As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
			Name="StringRepresentation"
			Group="Behavior"
			Type="Text"
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
			Name="W"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
