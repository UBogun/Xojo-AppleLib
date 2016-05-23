#tag Module
Protected Module CoreGraphicsFramework
	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformConcat Lib coreGraphicsLibName (T1 As CGAffineTransform, T2 As CGAffineTransform) As CGAffineTransform
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformIdentity() As CGAffineTransform
		  static mCGAffineTransformIdentity as CGAffineTransform = CGAffineTransformMake (1, 0, 0, 1, 0, 0)
		  return mCGAffineTransformIdentity
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformInvert Lib coreGraphicsLibName (T As CGAffineTransform) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformMake Lib coreGraphicsLibName (a as CGFloat, b as CGFloat, c as CGFloat, d as CGFloat, tx as CGFloat, ty as CGFloat) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformMakeRotation Lib coreGraphicsLibName (Angle AS CGFloat) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformMakeScale Lib coreGraphicsLibName (scaleX as CGFloat, scaleY as CGFloat) As CGAffineTransform
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformMakeScale(scaleX as double) As CGAffineTransform
		  return CGAffineTransformMakeScale(scaleX, scaleX)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformMakeTranslation Lib coreGraphicsLibName (DeltaX as CGFloat, DeltaY as CGFloat) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformRotate Lib coreGraphicsLibName (T As CGAffineTransform, Angle AS CGFloat) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformScale Lib coreGraphicsLibName (T as CGAffineTransform, scaleX as CGFloat, scaleY as CGFloat) As CGAffineTransform
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformScale(T as CGAffineTransform, scaleX as double) As CGAffineTransform
		  return CGAffineTransformScale (t, scaleX, scaleX)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CGAffineTransformTranslate Lib coreGraphicsLibName (T as CGAffineTransform, DeltaX as CGFloat, DeltaY as CGFloat) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub CGColorRelease Lib coreGraphicsLibName (id as ptr)
	#tag EndExternalMethod


	#tag Constant, Name = CoreGraphicsLibName, Type = Text, Dynamic = False, Default = \"CoreGraphics.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreGraphicsPath, Type = Text, Dynamic = False, Default = \"com.apple.CoreGraphics", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CGAffineTransform, Flags = &h0
		a as cgfloat
		  b as cgfloat
		  c as cgfloat
		  d as cgfloat
		  tx as cgfloat
		ty as cgfloat
	#tag EndStructure


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
End Module
#tag EndModule
