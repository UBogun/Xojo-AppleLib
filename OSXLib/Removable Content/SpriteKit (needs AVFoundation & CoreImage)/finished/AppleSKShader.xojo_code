#tag Class
Protected Class AppleSKShader
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 41646473206120756E69666F726D20746F2074686520736861646572206F626A6563742E
		Sub AddUniform(Uniform as AppleSKUniform)
		  addUniform mid, Uniform.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addUniform Lib SpriteKitLibName Selector "addUniform:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720656D70747920736861646572206F626A6563742E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (shader(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getattributes Lib SpriteKitLibName Selector "attributes" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsource Lib SpriteKitLibName Selector "source" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuniformNamed Lib SpriteKitLibName Selector "uniformNamed:" (id as ptr, value as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuniforms Lib SpriteKitLibName Selector "uniforms" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKShader
		  return if (aptr = nil, nil, new AppleSKShader (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573206120756E69666F726D2066726F6D20746865207368616465722E
		Sub RemoveUniform(UniformName as CFStringRef)
		  removeUniformNamed mid, UniformName
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeUniformNamed Lib SpriteKitLibName Selector "removeUniformNamed:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setattributes Lib SpriteKitLibName Selector "setAttributes:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setsource Lib SpriteKitLibName Selector "setSource:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setuniforms Lib SpriteKitLibName Selector "setUniforms:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shader Lib SpriteKitLibName Selector "shader" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720736861646572206F626A656374206279206C6F6164696E672074686520736F7572636520666F72206120667261676D656E74207368616465722066726F6D20612066696C652073746F72656420696E2074686520617070E28099732062756E646C652E
		Shared Function ShaderFromFile(FileName As CFStringRef) As appleskshader
		  return new AppleSKShader(shaderWithFileNamed(classptr, FileName), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720736861646572206F626A656374207573696E67207468652073706563696669656420736F7572636520636F64652E
		Shared Function ShaderFromSource(Source As CFStringRef) As appleskshader
		  return new AppleSKShader(shaderWithSource(classptr, Source), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720736861646572206F626A656374207573696E67207468652073706563696669656420736F7572636520616E6420756E69666F726D20646174612E
		Shared Function ShaderFromSource(Source As CFStringRef, Uniforms As AppleArray) As appleskshader
		  return new AppleSKShader(shaderWithSourceUniforms(classptr, Source, Uniforms.id), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shaderWithFileNamed Lib SpriteKitLibName Selector "shaderWithFileNamed:" (id as ptr, filename as CFStringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shaderWithSource Lib SpriteKitLibName Selector "shaderWithSource:" (id as ptr, filename as CFStringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shaderWithSourceUniforms Lib SpriteKitLibName Selector "shaderWithSource:uniforms:" (id as ptr, filename as CFStringRef, uniforms as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520756E69666F726D206F626A65637420636F72726573706F6E64696E6720746F206120706172746963756C617220756E69666F726D207661726961626C652E
		Function Uniform(UniformName as CFStringRef) As AppleSKUniform
		  return AppleSKUniform.MakeFromPtr (getuniformNamed (mid, UniformName))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKShader")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C697374206F662061747472696275746573206173736F636961746564207769746820746865207368616465722E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getattributes(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setattributes mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ShaderAttributes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736F7572636520636F646520666F7220746865207368616465722E
		#tag Getter
			Get
			  return getsource (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSource mid, value
			End Set
		#tag EndSetter
		Source As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C697374206F6620756E69666F726D73206173736F636961746564207769746820746865207368616465722E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getuniforms(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUniforms mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Uniforms As AppleArray
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
			Name="Source"
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
	#tag EndViewBehavior
End Class
#tag EndClass
