#tag Class
Protected Class AppleCIColor
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aColor as AppleCGColor)
		  Declare function initWithCGColor lib CoreImageLibName selector "initWithColor:" (id as ptr, acolor as ptr) as ptr
		  super.Constructor (initWithCGColor(alloc(ClassPtr), aColor.CFTypeRef))
		  mHasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aColor as AppleColor)
		  Declare function initWithColor lib CoreImageLibName selector "initWithColor:" (id as ptr, acolor as ptr) as ptr
		  super.Constructor (initWithColor(alloc(ClassPtr), aColor.id))
		  mHasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Red As Double, Green As Double, Blue as Double)
		  #if Target64Bit
		    Declare function colorWithRedGreenBlue lib CoreImageLibName selector "colorWithRed:green:blue:" (id as ptr, Red As Double, Green As Double, Blue as Double) as ptr
		  #elseif Target32Bit
		    Declare function colorWithRedGreenBlue lib CoreImageLibName selector "colorWithRed:green:blue:" (id as ptr, Red As single, Green As single, Blue as single) as ptr
		  #endif
		  super.Constructor (colorWithRedGreenBlue(ClassPtr, red, green, blue))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Red As Double, Green As Double, Blue as Double, Alpha as double)
		  #if Target64Bit
		    Declare function colorWithRedGreenBlueAlpha lib CoreImageLibName selector "colorWithRed:green:blue:alpha:" (id as ptr, Red As Double, Green As Double, Blue as Double, Alpha as Double) as ptr
		  #elseif Target32Bit
		    Declare function colorWithRedGreenBlueAlpha lib CoreImageLibName selector "colorWithRed:green:blue:alpha:" (id as ptr, Red As single, Green As single, Blue as single, Alpha as Single) as ptr
		  #endif
		  super.Constructor (colorWithRedGreenBlueAlpha(ClassPtr, red, green, blue, alpha))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCIColor
		  return if (aptr = nil, nil, new AppleCIColor (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    declare function alpha lib CoreImageLibName selector "alpha" (id as ptr) as single
			  #elseif target64bit
			    declare function alpha lib CoreImageLibName selector "alpha" (id as ptr) as double
			  #endif
			  return alpha (id)
			  
			End Get
		#tag EndGetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    declare function blue lib CoreImageLibName selector "blue" (id as ptr) as single
			  #elseif target64bit
			    declare function blue lib CoreImageLibName selector "blue" (id as ptr) as double
			  #endif
			  return blue (id)
			  
			End Get
		#tag EndGetter
		Blue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CIColor")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    declare function green lib CoreImageLibName selector "green" (id as ptr) as single
			  #elseif target64bit
			    declare function green lib CoreImageLibName selector "green" (id as ptr) as double
			  #endif
			  return green (id)
			  
			End Get
		#tag EndGetter
		Green As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    declare function red lib CoreImageLibName selector "red" (id as ptr) as single
			  #elseif target64bit
			    declare function red lib CoreImageLibName selector "red" (id as ptr) as double
			  #endif
			  return red (id)
			  
			End Get
		#tag EndGetter
		Red As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleColor (red, green, blue, Alpha)
			End Get
		#tag EndGetter
		toAppleColor As AppleColor
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Blue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Green"
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
			Name="Red"
			Group="Behavior"
			Type="Double"
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
