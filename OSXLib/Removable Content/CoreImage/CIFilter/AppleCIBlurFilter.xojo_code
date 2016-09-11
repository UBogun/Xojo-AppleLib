#tag Class
Protected Class AppleCIBlurFilter
Inherits AppleCIFilter
	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim gauss as BlurFilterTypes = BlurFilterTypes.GaussianBlur
		  Constructor (Gauss)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Type as BlurFilterTypes)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim myType as text
		  Select case type
		  case BlurFilterTypes.GaussianBlur
		    myType = "CIGaussianBlur"
		  case BlurFilterTypes.MotionBlur
		    myType = "CIMotionBlur"
		  case BlurFilterTypes.NoiseReduction
		    myType = "CINoiseReduction"
		  end Select
		  
		  #if TargetMacOS then
		    Select case type
		    case BlurFilterTypes.BoxBlur
		      myType = "CIBoxBlur"
		    case BlurFilterTypes.DiscBlur
		      myType = "CIDiscBlur"
		    case BlurFilterTypes.MaskedVariableBlur
		      myType = "CIMaskedVariableBlur"
		    case BlurFilterTypes.MedianFilter
		      myType = "CIMedianFilter"
		    case BlurFilterTypes.ZoomBlur
		      myType = "CIZoomBlur"
		    End Select
		  #endif
		  
		  if not myType.Empty then Super.Constructor (myType)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as Picture)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Constructor
		  InputImage = new AppleImage (anImage)
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Enum, Name = BlurFilterTypes, Type = Integer, Flags = &h0
		GaussianBlur
		  BoxBlur
		  DiscBlur
		  MaskedVariableBlur
		  MedianFilter
		  MotionBlur
		  NoiseReduction
		ZoomBlur
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
