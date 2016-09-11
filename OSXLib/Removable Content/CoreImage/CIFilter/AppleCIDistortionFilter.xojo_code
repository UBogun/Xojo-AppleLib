#tag Class
Protected Class AppleCIDistortionFilter
Inherits AppleCIFilter
	#tag Method, Flags = &h1000
		Sub Constructor(Type as DistortionFilter)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim myType as text
		  Select case type
		  case DistortionFilter.Bump
		    myType = "CIBumpDistortion"
		  case DistortionFilter.BumpLinear
		    myType = "CIBumpDistortionLinear"
		  case DistortionFilter.CircleSplash
		    myType = "CICircleSplashDistortion"
		  case DistortionFilter.Glass
		    myType = "CIGlassDistortion"
		  case DistortionFilter.Hole
		    myType = "CIHoleDistortion"
		  case DistortionFilter.LightTunnel
		    myType = "CILightTunnel"
		  case DistortionFilter.Pinch
		    myType = "CIPinchDistortion"
		  case DistortionFilter.Twirl
		    myType = "CITwirlDistortion"
		  case DistortionFilter.Vortex
		    myType = "CIVortexDistortion"
		  End Select
		  
		  #if Targetmacos then
		    Select case type
		    case DistortionFilter.CircularWrap
		      myType = "CICircularWrap"
		    case DistortionFilter.Droste
		      myType = "CIDroste"
		    case DistortionFilter.Displacement
		      myType = "CIDisplacementDistortion"
		    case DistortionFilter.GlassLozenge
		      myType = "CIGlassLozenge"
		    case DistortionFilter.StretchCrop
		      myType = "CIStretchCrop"
		    case DistortionFilter.TorusLens
		      myType = "CITorusLensDistortion"
		    End Select
		  #endif
		  
		  if not myType.Empty then Super.Constructor (myType)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Type as DistortionFilter, anImage as Picture)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Constructor (type)
		  InputImage = new AppleImage (anImage)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Untitled()
		  
		End Sub
	#tag EndMethod


	#tag Enum, Name = DistortionFilter, Type = Integer, Flags = &h0
		Bump
		  BumpLinear
		  CircleSplash
		  Glass
		  Hole
		  LightTunnel
		  Pinch
		  Twirl
		  Vortex
		  CircularWrap
		  Droste
		  Displacement
		  GlassLozenge
		  StretchCrop
		TorusLens
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
