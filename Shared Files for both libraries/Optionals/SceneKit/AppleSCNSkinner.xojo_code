#tag Class
Protected Class AppleSCNSkinner
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbaseGeometry Lib SceneKitLibname Selector "baseGeometry" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbaseGeometryBindTransform Lib SceneKitLibname Selector "baseGeometryBindTransform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getboneInverseBindTransforms Lib SceneKitLibname Selector "boneInverseBindTransforms" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbones Lib SceneKitLibname Selector "bones" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getskeleton Lib SceneKitLibname Selector "skeleton" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNSkinner
		  return if (aptr = nil, nil, new AppleSCNSkinner(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbaseGeometry Lib SceneKitLibname Selector "setBaseGeometry:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbaseGeometryBindTransform Lib SceneKitLibname Selector "setBaseGeometryBindTransform:" (id as ptr, value as SCNMatrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setskeleton Lib SceneKitLibname Selector "setSkeleton:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Note, Name = StatusIncomplete
		constructor and Boneindices missing due tue SCNGeometry missing.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652067656F6D657472792077686F736520737572666163652074686520736B696E6E6572E280997320616E696D6174696F6E20736B656C65746F6E206465666F726D732E
		#tag Getter
			Get
			  return AppleSCNGeometry.MakeFromPtr(getbaseGeometry(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbaseGeometry id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BaseGeometry As AppleSCNGeometry
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6F7264696E617465207472616E73666F726D6174696F6E20666F722074686520736B696E6E6572E28099732067656F6D6574727920696E206974732064656661756C742073746174652E
		#tag Getter
			Get
			  return getbaseGeometryBindTransform(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbaseGeometryBindTransform id,value
			End Set
		#tag EndSetter
		BaseGeometryBindTransform As SCNMatrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C74207472616E73666F726D7320666F722074686520616E696D6174696F6E20736B656C65746F6EE280997320626F6E65206E6F6465732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getboneInverseBindTransforms(id))
			End Get
		#tag EndGetter
		BoneInverseBindTransforms As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74726F6C206E6F646573206F662074686520616E696D6174696F6E20736B656C65746F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getbones(id))
			End Get
		#tag EndGetter
		Bones As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNSkinner")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F6F74206E6F6465206F662074686520736B696E6E6572206F626A656374E280997320616E696D6174696F6E20736B656C65746F6E2E
		#tag Getter
			Get
			  return AppleSCNnode.MakeFromPtr(getskeleton(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setskeleton id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Skeleton As AppleSCNNode
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
