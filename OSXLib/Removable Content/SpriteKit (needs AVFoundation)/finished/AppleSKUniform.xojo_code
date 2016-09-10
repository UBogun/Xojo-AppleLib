#tag Class
Protected Class AppleSKUniform
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E6420696E697469616C697A65732061206E657720756E69666F726D206F626A6563742E
		Sub Constructor(Name as CFStringRef)
		  super.constructor (uniformWithName(classptr, name))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as AppleSKTexture)
		  Declare Function initWithNametexture lib spritekitlibname selector "initWithName:texture:" (id as ptr, name as cfstringref, value as Ptr) as ptr
		  super.constructor (initWithNametexture(alloc(classptr), name, value.id))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E6420696E697469616C697A65732061206E657720756E69666F726D206F626A656374207468617420686F6C6473206120666C6F6174696E672D706F696E74206E756D6265722E
		Sub Constructor(Name as CFStringRef, value as single)
		  super.constructor (uniformWithNameFloat(alloc(classptr), name, value))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720756E69666F726D206F626A656374207468617420686F6C6473206120766563746F72206F662074776F20666C6F6174696E672D706F696E74206E756D626572732E
		Sub Constructor(Name as CFStringRef, value as Vector_Float2)
		  if RespondsToSelector ("initWithName:vectorFloat2:", classptr) then
		    super.Constructor (initWithNameFloatV2(alloc(classptr), name, value))
		    MHasOwnership = true
		  else
		    super.constructor (uniformWithNameFloatV2(classptr, name, value))
		    RetainClassObject
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E6420696E697469616C697A65732061206E657720756E69666F726D206F626A656374207468617420686F6C6473206120766563746F72206F6620746872656520666C6F6174696E672D706F696E74206E756D626572732E
		Sub Constructor(Name as CFStringRef, value as Vector_Float3)
		  if RespondsToSelector ("initWithName:vectorFloat3:", classptr) then
		    super.Constructor (initWithNameFloatV3(alloc(classptr), name, value))
		    MHasOwnership = true
		  else
		    super.constructor (uniformWithNameFloatV3(classptr, name, value))
		    RetainClassObject
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720756E69666F726D206F626A656374207468617420686F6C6473206120766563746F72206F6620666F757220666C6F6174696E672D706F696E74206E756D626572732E
		Sub Constructor(Name as CFStringRef, value as Vector_Float4)
		  if RespondsToSelector ("initWithName:vectorFloat4:", classptr) then
		    super.Constructor (initWithNameFloatV4(alloc(classptr), name, value))
		    MHasOwnership = true
		  else
		    super.constructor (uniformWithNameFloatV4(classptr, name, value))
		    RetainClassObject
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720756E69666F726D206F626A656374207468617420686F6C64732061203220782032206D6174726978206F6620666C6F6174696E672D706F696E74206E756D626572732E
		Sub Constructor(Name as CFStringRef, value as Vector_Maxtrix2)
		  if RespondsToSelector ("initWithName:matrixFloat2x2:", classptr) then
		    super.Constructor (initWithNameMatrix2(alloc(classptr), name, value))
		    MHasOwnership = true
		  else
		    super.constructor (uniformWithNameFloatM2(classptr, name, value))
		    RetainClassObject
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720756E69666F726D206F626A656374207468617420686F6C64732061203320782033206D6174726978206F6620666C6F6174696E672D706F696E74206E756D626572732E
		Sub Constructor(Name as CFStringRef, value as Vector_Maxtrix3)
		  if RespondsToSelector ("initWithName:matrixFloat3x3:", classptr) then
		    super.Constructor (initWithNameMatrix3(alloc(classptr), name, value))
		    MHasOwnership = true
		  else
		    super.constructor (uniformWithNameFloatM3(classptr, name, value))
		    RetainClassObject
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720756E69666F726D206F626A656374207468617420686F6C64732061203420782034206D6174726978206F6620666C6F6174696E672D706F696E74206E756D626572732E
		Sub Constructor(Name as CFStringRef, value as Vector_Maxtrix4)
		  if RespondsToSelector ("initWithName:matrixFloat4x4:", classptr) then
		    super.Constructor (initWithNameMatrix4(alloc(classptr), name, value))
		    MHasOwnership = true
		  else
		    super.constructor (uniformWithNameFloatM4(classptr, name, value))
		    RetainClassObject
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfloatMatrix2Value Lib SpriteKitLibName Selector "floatMatrix2Value" (id as ptr) As Vector_Maxtrix2
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfloatMatrix3Value Lib SpriteKitLibName Selector "floatMatrix3Value" (id as ptr) As Vector_Maxtrix3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfloatMatrix4Value Lib SpriteKitLibName Selector "floatMatrix4Value" (id as ptr) As Vector_Maxtrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfloatVector2Value Lib SpriteKitLibName Selector "floatVector2Value" (id as ptr) As Vector_Float2
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfloatVector3Value Lib SpriteKitLibName Selector "floatVector3Value" (id as ptr) As Vector_Float3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfloatVector4Value Lib SpriteKitLibName Selector "floatVector4Value" (id as ptr) As Vector_Float4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmatrixFloat2Value Lib SpriteKitLibName Selector "matrixFloat2x2Value" (id as ptr) As Vector_Maxtrix2
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmatrixFloat3Value Lib SpriteKitLibName Selector "matrixFloat3x3Value" (id as ptr) As Vector_Maxtrix3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmatrixFloat4Value Lib SpriteKitLibName Selector "matrixFloat4x4Value" (id as ptr) As Vector_Maxtrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextureValue Lib SpriteKitLibName Selector "textureValue" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuniformType Lib SpriteKitLibName Selector "uniformType" (id as ptr) As SKUniformType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvectorFloat2Value Lib SpriteKitLibName Selector "vectorFloat2Value" (id as ptr) As Vector_Float2
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvectorFloat3Value Lib SpriteKitLibName Selector "vectorFloat3Value" (id as ptr) As Vector_Float3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvectorFloat4Value Lib SpriteKitLibName Selector "vectorFloat4Value" (id as ptr) As Vector_Float4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNameFloatV2 Lib SpriteKitLibName Selector "initWithName:vectorFloat2:" (id as ptr, value as cfstringRef, value2 as Vector_Float2) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNameFloatV3 Lib SpriteKitLibName Selector "initWithName:vectorFloat3:" (id as ptr, value as cfstringRef, value2 as Vector_Float3) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNameFloatV4 Lib SpriteKitLibName Selector "initWithName:vectorFloat4:" (id as ptr, value as cfstringRef, value2 as Vector_Float4) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNameMatrix2 Lib SpriteKitLibName Selector "initWithName:matrixFloat2x2:" (id as ptr, value as cfstringRef, value2 as Vector_Maxtrix2) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNameMatrix3 Lib SpriteKitLibName Selector "initWithName:matrixFloat3x3:" (id as ptr, value as cfstringRef, value2 as Vector_Maxtrix3) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNameMatrix4 Lib SpriteKitLibName Selector "initWithName:matrixFloat4x4:" (id as ptr, value as cfstringRef, value2 as Vector_Maxtrix4) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKuniform
		  return if (aptr = nil, nil, new AppleSKUniform(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfloatMatrix2Value Lib SpriteKitLibName Selector "setFloatMatrix2Value:" (id as ptr, value as Vector_Maxtrix2)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfloatMatrix3Value Lib SpriteKitLibName Selector "setFloatMatrix3Value:" (id as ptr, value as Vector_Maxtrix3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfloatMatrix4Value Lib SpriteKitLibName Selector "setFloatMatrix4Value:" (id as ptr, value as Vector_Maxtrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfloatVector2Value Lib SpriteKitLibName Selector "setFloatVector2Value:" (id as ptr, value as Vector_Float2)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfloatVector3Value Lib SpriteKitLibName Selector "setFloatVector3Value:" (id as ptr, value as Vector_Float3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfloatVector4Value Lib SpriteKitLibName Selector "setFloatVector4Value:" (id as ptr, value as Vector_Float4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmatrixFloat2Value Lib SpriteKitLibName Selector "setMatrixFloat2x2Value:" (id as ptr, value as Vector_Maxtrix2)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmatrixFloat3Value Lib SpriteKitLibName Selector "setMatrixFloat3x3Value:" (id as ptr, value as Vector_Maxtrix3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmatrixFloat4Value Lib SpriteKitLibName Selector "setMatrixFloat4x4Value:" (id as ptr, value as Vector_Maxtrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settextureValue Lib SpriteKitLibName Selector "setTextureValue:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setvectorFloat2Value Lib SpriteKitLibName Selector "setVectorFloat2Value:" (id as ptr, value as Vector_Float2)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setvectorFloat3Value Lib SpriteKitLibName Selector "setVectorFloat3Value:" (id as ptr, value as Vector_Float3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setvectorFloat4Value Lib SpriteKitLibName Selector "setVectorFloat4Value:" (id as ptr, value as Vector_Float4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithName Lib SpriteKitLibName Selector "uniformWithName:" (id as ptr, value as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithNameFloat Lib SpriteKitLibName Selector "uniformWithName:float:" (id as ptr, value as cfstringRef, value2 as single) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithNameFloatM2 Lib SpriteKitLibName Selector "uniformWithName:floatMatrix2:" (id as ptr, value as cfstringRef, value2 as Vector_Maxtrix2) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithNameFloatM3 Lib SpriteKitLibName Selector "uniformWithName:floatMatrix3:" (id as ptr, value as cfstringRef, value2 as Vector_Maxtrix3) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithNameFloatM4 Lib SpriteKitLibName Selector "uniformWithName:floatMatrix4:" (id as ptr, value as cfstringRef, value2 as Vector_Maxtrix4) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithNameFloatV2 Lib SpriteKitLibName Selector "uniformWithName:floatVector2:" (id as ptr, value as cfstringRef, value2 as Vector_Float2) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithNameFloatV3 Lib SpriteKitLibName Selector "uniformWithName:floatVector3:" (id as ptr, value as cfstringRef, value2 as Vector_Float3) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function uniformWithNameFloatV4 Lib SpriteKitLibName Selector "uniformWithName:floatVector4:" (id as ptr, value as cfstringRef, value2 as Vector_Float4) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
		Because Apple decided to rename the vector routines, Constructors and properties are a bit more complicated than usual. If macOS 10.12 is present, the new methods are used.
	#tag EndNote


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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKUniform")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C75652061732061203220782032206D6174726978206F6620666C6F6174696E672D706F696E742076616C7565732E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Matrix2 then
			    if RespondsToSelector ("matrixFloat2x2Value", classptr) then
			      return getmatrixFloat2Value (mid)
			    else
			      return getfloatMatrix2Value (mid)
			    end if
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Matrix2  or UniformType = SKUniformType.None then
			    if RespondsToSelector ("setMatrixFloat2x2Value:", classptr) then
			      setmatrixFloat2Value mid, value
			    else
			      setFloatMatrix2Value mid, value
			    end if
			  end if
			End Set
		#tag EndSetter
		FloatMatrix2Value As Vector_Maxtrix2
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C75652061732061203320782033206D6174726978206F6620666C6F6174696E672D706F696E742076616C7565732E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Matrix3 then
			    if RespondsToSelector ("matrixFloat3x3Value", classptr) then
			      return getmatrixFloat3Value (mid)
			    else
			      return getfloatMatrix3Value (mid)
			    end if
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Matrix3  or UniformType = SKUniformType.None then
			    if RespondsToSelector ("setMatrixFloat3x3Value:", classptr) then
			      setmatrixFloat3Value mid, value
			    else
			      setFloatMatrix3Value mid, value
			    end if
			  end if
			End Set
		#tag EndSetter
		FloatMatrix3Value As Vector_Maxtrix3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C75652061732061203420782034206D6174726978206F6620666C6F6174696E672D706F696E742076616C7565732E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Matrix4 then
			    if RespondsToSelector ("matrixFloat4x4Value", classptr) then
			      return getmatrixFloat4Value (mid)
			    else
			      return getfloatMatrix4Value (mid)
			    end if
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Matrix4  or UniformType = SKUniformType.None then
			    if RespondsToSelector ("setMatrixFloat4x4Value:", classptr) then
			      setmatrixFloat4Value mid, value
			    else
			      setFloatMatrix4Value mid, value
			    end if
			  end if
			End Set
		#tag EndSetter
		FloatMatrix4Value As Vector_Maxtrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C7565206173206120766563746F72206F662074776F20666C6F6174696E672D706F696E742076616C7565732E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Vector2 then
			    if RespondsToSelector ("vectorFloat2Value", classptr) then
			      return getvectorFloat2Value (mid)
			    else
			      return getfloatVector2Value (mid)
			    end if
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Vector2  or UniformType = SKUniformType.None then
			    if RespondsToSelector("setVectorFloat2Value:", classptr) then
			      setvectorFloat2Value mid, value
			    else
			      setFloatVector2Value mid, value
			    end if
			  end if
			End Set
		#tag EndSetter
		FloatVector2Value As Vector_Float2
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C7565206173206120766563746F72206F6620746872656520666C6F6174696E672D706F696E742076616C7565732E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Vector3 then
			    if RespondsToSelector ("vectorFloat3Value", classptr) then
			      return getvectorFloat3Value (mid)
			    else
			      return getfloatVector3Value (mid)
			    end if
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Vector3  or UniformType = SKUniformType.None then
			    if RespondsToSelector("setVectorFloat3Value:", classptr) then
			      setvectorFloat3Value mid, value
			    else
			      setFloatVector3Value mid, value
			    end if
			  end if
			End Set
		#tag EndSetter
		FloatVector3Value As Vector_Float3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C7565206173206120766563746F72206F6620666F757220666C6F6174696E672D706F696E742076616C7565732E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Vector4 then
			    if RespondsToSelector ("vectorFloat4Value", classptr) then
			      return getvectorFloat4Value (mid)
			    else
			      return getfloatVector4Value (mid)
			    end if
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Vector4  or UniformType = SKUniformType.None then
			    if RespondsToSelector("setVectorFloat4Value:", classptr) then
			      setvectorFloat4Value mid, value
			    else
			      setFloatVector4Value mid, value
			    end if
			  end if
			End Set
		#tag EndSetter
		FloatVector4Value As Vector_Float4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E69666F726DE2809973206E616D652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getname (mid)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C7565206173206120666C6F6174696E672D706F696E742076616C75652E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Float then
			    return AppKitFramework.getfloatValue (mid)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Float  or UniformType = SKUniformType.None then
			    AppKitFramework.setFloatValue mid, value
			  end if
			End Set
		#tag EndSetter
		SingleValue As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C7565206173206120537072697465204B697420746578747572652E
		#tag Getter
			Get
			  if UniformType = SKUniformType.Texture then
			    return AppleSKTexture.MakefromPtr( gettextureValue (mid))
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if UniformType = SKUniformType.Texture  or UniformType = SKUniformType.None then
			    setTextureValue mid, if (value = nil, nil, value.id)
			  end if
			End Set
		#tag EndSetter
		TextureValue As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E69666F726D206F626A656374E2809973206461746120747970652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Return getuniformType (mid)
			End Get
		#tag EndGetter
		UniformType As SKUniformType
	#tag EndComputedProperty


	#tag Enum, Name = SKUniformType, Type = Integer, Flags = &h0
		None
		  Float
		  Vector2
		  Vector3
		  Vector4
		  Matrix2
		  Matrix3
		  Matrix4
		Texture
	#tag EndEnum


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
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
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
			Name="UniformType"
			Group="Behavior"
			Type="SKUniformType"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Float"
				"2 - Vector2"
				"3 - Vector3"
				"4 - Vector4"
				"5 - Matrix2"
				"6 - Matrix3"
				"7 - Matrix4"
				"8 - Texture"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
