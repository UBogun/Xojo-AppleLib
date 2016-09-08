#tag Class
Protected Class AppleSKShader
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddUniform(Uniform as AppleSKUniform)
		  Declare Sub addUniform lib spritekitlibname selector "addUniform:" (id as ptr, uniform as ptr)
		  addUniform id, Uniform.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  declare Function shader lib spritekitlibname selector "shader" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (shader(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Source As CFStringRef)
		  declare Function initWithSource lib spritekitlibname selector "initWithSource:" (id as ptr, source as cfstringref) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithSource(alloc(classptr), source))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Source As CFStringRef, Uniforms as AppleArray)
		  declare Function initWithSourceuniforms lib spritekitlibname selector "initWithSource:uniforms:" (id as ptr, source as cfstringref, uniforms as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithSourceuniforms(alloc(classptr), source, Uniforms.id))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromFileName(FileName as CFStringRef) As AppleSKshader
		  declare Function shaderWithFileNamed lib spritekitlibname selector "shaderWithFileNamed:" (id as ptr, source as cfstringref) as ptr
		  dim result as new AppleSKShader (shaderWithFileNamed(classptr, FileName))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getattributes Lib SpriteKitLibName Selector "attributes" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKShader
		  return if (aptr = nil, nil, new AppleSKShader (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveUniform(UniformName as CFStringRef)
		  Declare Sub removeUniformNamed lib spritekitlibname selector "removeUniformNamed:" (id as ptr, uniform as CFStringRef)
		  removeUniformNamed id, UniformName
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setattributes Lib SpriteKitLibName Selector "setAttributes:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Uniform(UniformName as CFStringRef) As AppleSKUniform
		  Declare function uniformNamed lib spritekitlibname selector "uniformNamed:" (id as ptr, uniform as CFStringRef) as ptr
		  return AppleSKUniform.MakeFromPtr (uniformNamed (id, UniformName))
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKShader")
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
			  return AppleArray.MakeFromPtr (getattributes(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setattributes mid, value.id
			End Set
		#tag EndSetter
		ShaderAttributes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function source lib spritekitlibname selector "source" (id as ptr) as CFStringRef
			  return source (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setSource lib spritekitlibname selector "setSource:" (id as ptr, value as CFStringRef)
			  setSource id, value
			End Set
		#tag EndSetter
		Source As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function uniforms lib spritekitlibname selector "uniforms" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (uniforms(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setUniforms lib spritekitlibname selector "setUniforms:" (id as ptr, value as ptr)
			  setUniforms id, value.id
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
