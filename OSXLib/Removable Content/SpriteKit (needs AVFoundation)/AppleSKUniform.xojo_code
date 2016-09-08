#tag Class
Protected Class AppleSKUniform
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef)
		  Declare Function initWithName lib spritekitlibname selector "initWithName:" (id as ptr, name as cfstringref) as ptr
		  super.constructor (initWithName(alloc(classptr), name))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as AppleSKTexture)
		  Declare Function initWithNametexture lib spritekitlibname selector "initWithName:texture:" (id as ptr, name as cfstringref, value as Ptr) as ptr
		  super.constructor (initWithNametexture(alloc(classptr), name, value.id))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as single)
		  Declare Function initWithNamefloat lib spritekitlibname selector "initWithName:float:" (id as ptr, name as cfstringref, value as single) as ptr
		  super.constructor (initWithNamefloat(alloc(classptr), name, value))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as Vector_Float2)
		  Declare Function initWithNamefloat2 lib spritekitlibname selector "initWithName:floatVector2:" (id as ptr, name as cfstringref, value as Vector_Float2) as ptr
		  super.constructor (initWithNamefloat2(alloc(classptr), name, value))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as Vector_Float3)
		  Declare Function initWithNamefloat3 lib spritekitlibname selector "initWithName:floatVector3:" (id as ptr, name as cfstringref, value as Vector_Float3) as ptr
		  super.constructor (initWithNamefloat3(alloc(classptr), name, value))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as Vector_Float4)
		  Declare Function initWithNamefloat4 lib spritekitlibname selector "initWithName:floatVector3:" (id as ptr, name as cfstringref, value as Vector_Float4) as ptr
		  super.constructor (initWithNamefloat4(alloc(classptr), name, value))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as Vector_Maxtrix2)
		  Declare Function initWithName2 lib spritekitlibname selector "initWithName:floatMatrix2:" (id as ptr, name as cfstringref, value as Vector_Maxtrix2) as ptr
		  super.constructor (initWithName2(alloc(classptr), name, value))
		  MhasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as Vector_Maxtrix3)
		  Declare Function uniformWithName3 lib spritekitlibname selector "initWithName:floatMatrix3:" (id as ptr, name as cfstringref, value as Vector_Maxtrix3) as ptr
		  super.constructor (uniformWithName3(alloc(classptr), name, value))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Name as CFStringRef, value as Vector_Maxtrix4)
		  Declare Function uniformWithName4 lib spritekitlibname selector "initWithName:floatMatrix3:" (id as ptr, name as cfstringref, value as Vector_Maxtrix4) as ptr
		  super.constructor (uniformWithName4(alloc(classptr), name, value))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKuniform
		  return if (aptr = nil, nil, new AppleSKUniform(aptr))
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKUniform")
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
			  Declare function floatMatrix2Value lib spritekitlibname selector "floatMatrix2Value" (id as ptr) as Vector_Maxtrix2
			  if UniformType = SKUniformType.Matrix2 then
			    return floatMatrix2Value (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFloatMatrix2Value lib spritekitlibname selector "setFloatMatrix2Value:" (id as ptr, value as Vector_Maxtrix2)
			  if UniformType = SKUniformType.Matrix2  or UniformType = SKUniformType.None then
			    setFloatMatrix2Value id, value
			  end if
			End Set
		#tag EndSetter
		FloatMatrix2Value As Vector_Maxtrix2
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function floatMatrix3Value lib spritekitlibname selector "floatMatrix3Value" (id as ptr) as Vector_Maxtrix3
			  if UniformType = SKUniformType.Matrix3 then
			    return floatMatrix3Value (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFloatMatrix3Value lib spritekitlibname selector "setFloatMatrix3Value:" (id as ptr, value as Vector_Maxtrix3)
			  if UniformType = SKUniformType.Matrix3  or UniformType = SKUniformType.None then
			    setFloatMatrix3Value id, value
			  end if
			End Set
		#tag EndSetter
		FloatMatrix3Value As Vector_Maxtrix3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function floatMatrix4Value lib spritekitlibname selector "floatMatrix4Value" (id as ptr) as Vector_Maxtrix4
			  if UniformType = SKUniformType.Matrix4 then
			    return floatMatrix4Value (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFloatMatrix4Value lib spritekitlibname selector "setFloatMatrix4Value:" (id as ptr, value as Vector_Maxtrix4)
			  if UniformType = SKUniformType.Matrix3  or UniformType = SKUniformType.None then
			    setFloatMatrix4Value id, value
			  end if
			End Set
		#tag EndSetter
		FloatMatrix4Value As Vector_Maxtrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function floatValue lib spritekitlibname selector "floatValue" (id as ptr) as single
			  if UniformType = SKUniformType.Float then
			    return floatValue (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFloatValue lib spritekitlibname selector "setFloatValue:" (id as ptr, value as single)
			  if UniformType = SKUniformType.Float  or UniformType = SKUniformType.None then
			    setFloatValue id, value
			  end if
			End Set
		#tag EndSetter
		FloatValue As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function floatVector2Value lib spritekitlibname selector "floatVector2Value" (id as ptr) as Vector_Float2
			  if UniformType = SKUniformType.Vector2 then
			    return floatVector2Value (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFloatVector2Value lib spritekitlibname selector "setFloatVector2Value:" (id as ptr, value as Vector_Float2)
			  if UniformType = SKUniformType.Vector2  or UniformType = SKUniformType.None then
			    setFloatVector2Value id, value
			  end if
			End Set
		#tag EndSetter
		FloatVector2Value As Vector_Float2
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function floatVector3Value lib spritekitlibname selector "floatVector3Value" (id as ptr) as Vector_Float3
			  if UniformType = SKUniformType.Vector3 then
			    return floatVector3Value (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFloatVector3Value lib spritekitlibname selector "setFloatVector3Value:" (id as ptr, value as Vector_Float3)
			  if UniformType = SKUniformType.Vector3  or UniformType = SKUniformType.None then
			    setFloatVector3Value id, value
			  end if
			End Set
		#tag EndSetter
		FloatVector3Value As Vector_Float3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function floatVector4Value lib spritekitlibname selector "floatVector4Value" (id as ptr) as Vector_Float4
			  if UniformType = SKUniformType.Vector4 then
			    return floatVector4Value (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFloatVector4Value lib spritekitlibname selector "setFloatVector4Value:" (id as ptr, value as Vector_Float4)
			  if UniformType = SKUniformType.Vector4  or UniformType = SKUniformType.None then
			    setFloatVector4Value id, value
			  end if
			End Set
		#tag EndSetter
		FloatVector4Value As Vector_Float4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function name lib spritekitlibname selector "name" (id as ptr) as CFStringRef
			  return name (id)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function textureValue lib spritekitlibname selector "textureValue" (id as ptr) as ptr
			  if UniformType = SKUniformType.Texture then
			    return AppleSKTexture.MakefromPtr( textureValue (id))
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTextureValue lib spritekitlibname selector "setTextureValue:" (id as ptr, value as Ptr)
			  if UniformType = SKUniformType.Texture  or UniformType = SKUniformType.None then
			    setTextureValue id, value.id
			  end if
			End Set
		#tag EndSetter
		TextureValue As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function uniformType lib spritekitlibname selector "uniformType" (id as ptr) as SKUniformType
			  Return uniformType (id)
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
			Name="FloatValue"
			Group="Behavior"
			Type="Single"
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
