#tag Class
Protected Class AppleSCNCamera
Inherits AppleSCNAnimatableObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (SceneKitFrameWork.getcamera(ClassPtr), true, true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getaperture Lib SceneKitLibname Selector "aperture" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getautomaticallyAdjustsZRange Lib SceneKitLibname Selector "automaticallyAdjustsZRange" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfocalBlurRadius Lib SceneKitLibname Selector "focalBlurRadius" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfocalDistance Lib SceneKitLibname Selector "focalDistance" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfocalSize Lib SceneKitLibname Selector "focalSize" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getprojectionTransform Lib SceneKitLibname Selector "projectionTransform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getusesOrthographicProjection Lib SceneKitLibname Selector "usesOrthographicProjection" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getxFov Lib SceneKitLibname Selector "xFov" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getyFov Lib SceneKitLibname Selector "yFov" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getzFar Lib SceneKitLibname Selector "zFar" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getzNear Lib SceneKitLibname Selector "zNear" (id as ptr) As Double
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNCamera
		  return if (aptr = nil, nil, new AppleSCNCamera(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setAperture Lib SceneKitLibname Selector "setAperture:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setautomaticallyAdjustsZRange Lib SceneKitLibname Selector "setAutomaticallyAdjustsZRange:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setFocalBlurRadius Lib SceneKitLibname Selector "setFocalBlurRadius:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setFocalDistance Lib SceneKitLibname Selector "setFocalDistance:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setFocalSize Lib SceneKitLibname Selector "setFocalSize:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setprojectionTransform Lib SceneKitLibname Selector "setProjectionTransform:" (id as ptr, value as SCNMatrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setusesOrthographicProjection Lib SceneKitLibname Selector "setUsesOrthographicProjection:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setxFov Lib SceneKitLibname Selector "setXFov:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setyFov Lib SceneKitLibname Selector "setYFov:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setzFar Lib SceneKitLibname Selector "setZFar:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setzNear Lib SceneKitLibname Selector "setZNear:" (id as ptr, value as double)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		cameraWithMDMLCamera construcor missing. 
		SecureCoding & SCNTechniqueSupport not implemented.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 4120666163746F7220746861742064657465726D696E657320746865207472616E736974696F6E206265747765656E20696E2D666F63757320616E64206F75742D6F662D666F6375732061726561732E20416E696D617461626C652E2044656661756C7420302E313235203D20312F38
		#tag Getter
			Get
			  return getaperture(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAperture id, value
			End Set
		#tag EndSetter
		Aperture As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063616D657261206175746F6D61746963616C6C792061646A7573747320697473207A4E65617220616E64207A466172206465707468206C696D6974732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getautomaticallyAdjustsZRange(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautomaticallyAdjustsZRange id, value
			End Set
		#tag EndSetter
		AutomaticallyAdjustsZRange As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F72696573207468652063616D6572612062656C6F6E677320746F2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getcategoryBitMask(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcategoryBitMask id, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNCamera")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20616D6F756E74206F6620626C757272696E672C20696E20706978656C732C206170706C69656420746F206172656173206F757473696465207468652063616D657261E2809973206465707468206F66206669656C642E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getfocalBlurRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFocalBlurRadius id, value
			End Set
		#tag EndSetter
		FocalBlurRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D207468652063616D657261206174207768696368206F626A656374732061707065617220696E20736861727020666F6375732E20416E696D617461626C652E2044656661756C742031302E302E
		#tag Getter
			Get
			  return getfocalDistance(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFocalDistance id, value
			End Set
		#tag EndSetter
		FocalDistance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468206F66207468652064697374616E63652072616E6765206174207768696368206F626A656374732061707065617220696E20736861727020666F6375732E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getfocalSize(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFocalSize id, value
			End Set
		#tag EndSetter
		FocalSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E616D65206173736F6369617465642077697468207468652063616D657261206F626A6563742E
		#tag Getter
			Get
			  return FoundationFrameWork.getName (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setName mid, value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537065636966696573207468652063616D657261E2809973206D61676E696669636174696F6E20666163746F72207768656E207573696E6720616E206F7274686F677261706869632070726F6A656374696F6E2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getorthographicScale(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setorthographicScale id, value
			End Set
		#tag EndSetter
		OrthographicScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616D657261E28099732070726F6A656374696F6E207472616E73666F726D6174696F6E2E
		#tag Getter
			Get
			  return getprojectionTransform(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setprojectionTransform id, value
			End Set
		#tag EndSetter
		ProjectionTransform As SCNMatrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063616D657261207573657320616E206F7274686F677261706869632070726F6A656374696F6E2E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getusesOrthographicProjection(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setusesOrthographicProjection id, value
			End Set
		#tag EndSetter
		UsesOrthographicProjection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616D6572612773206669656C64206F6620766965772C20696E20646567726565732C206F6E2074686520686F72697A6F6E74616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getxFov(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setxFov id, value
			End Set
		#tag EndSetter
		xFieldOfView As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616D657261E2809973206669656C64206F6620766965772C20696E20646567726565732C206F6E2074686520766572746963616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getyFov(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setyFov id, value
			End Set
		#tag EndSetter
		yFieldOfView As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616D657261277320666172206465707468206C696D69742E20416E696D617461626C652E
		#tag Getter
			Get
			  return getzFar(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setzFar id, value
			End Set
		#tag EndSetter
		zFar As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616D6572612773206E656172206465707468206C696D69742E20416E696D617461626C652E
		#tag Getter
			Get
			  return getzNear(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setzNear id, value
			End Set
		#tag EndSetter
		zNear As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Aperture"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyAdjustsZRange"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocalBlurRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocalDistance"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocalSize"
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
			Name="OrthographicScale"
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
		#tag ViewProperty
			Name="UsesOrthographicProjection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="xFieldOfView"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="yFieldOfView"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zFar"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zNear"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
