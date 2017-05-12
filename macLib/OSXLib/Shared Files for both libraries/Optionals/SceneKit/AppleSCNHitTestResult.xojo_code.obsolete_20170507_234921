#tag Class
Protected Class AppleSCNHitTestResult
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfaceIndex Lib SceneKitLibname Selector "faceIndex" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getgeometryIndex Lib SceneKitLibname Selector "geometryIndex" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getlocalCoordinates Lib SceneKitLibname Selector "localCoordinates" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getlocalNormal Lib SceneKitLibname Selector "localNormal" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmodelTransform Lib SceneKitLibname Selector "modelTransform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getworldCoordinates Lib SceneKitLibname Selector "worldCoordinates" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getworldNormal Lib SceneKitLibname Selector "worldNormal" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNHitTestResult
		  return if (aptr = nil, nil,new AppleSCNHitTestResult)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207465787475726520636F6F7264696E617465732061742074686520706F696E74206F6620696E74657273656374696F6E20666F7220746865207370656369666965642074657874757265206D617070696E67206368616E6E656C2E
		Function TextureCoordiinates(Channel as Integer) As FoundationFrameWork.NSPoint
		  return textureCoordinatesWithMappingChannel(mid, channel)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function textureCoordinatesWithMappingChannel Lib SceneKitLibname Selector "textureCoordinatesWithMappingChannel:" (id as ptr, channel as integer) As FoundationFrameWork.nspoint
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOs 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNHitTestResult")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F6620746865207072696D697469766520696E207468652067656F6D65747920656C656D656E7420696E7465727365637465642062792074686520736561726368207261792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getfaceIndex (mid)
			End Get
		#tag EndGetter
		FaceIndex As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F66207468652067656F6D6574727920656C656D656E742077686F7365207375726661636520746865207365617263682072617920696E74657273656374732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getgeometryIndex (mid)
			End Get
		#tag EndGetter
		GeometryIndex As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E74206F6620696E74657273656374696F6E206265747765656E207468652067656F6D6574727920616E642074686520736561726368207261792C20696E20746865206C6F63616C20636F6F7264696E6174652073797374656D206F6620746865206E6F646520636F6E7461696E696E67207468652067656F6D657472792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getlocalCoordinates (mid)
			  
			End Get
		#tag EndGetter
		LocalCoordinates As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E74206F6620696E74657273656374696F6E206265747765656E207468652067656F6D6574727920616E642074686520736561726368207261792C20696E20746865206C6F63616C20636F6F7264696E6174652073797374656D206F6620746865206E6F646520636F6E7461696E696E67207468652067656F6D657472792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getlocalNormal (mid)
			  
			End Get
		#tag EndGetter
		LocalNormal As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520776F726C64207472616E73666F726D206D6174726978206F6620746865206E6F646520636F6E7461696E696E672074686520696E74657273656374696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmodelTransform (mid)
			  
			End Get
		#tag EndGetter
		ModelTransform As SCNMatrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F64652077686F73652067656F6D6574727920696E74657273656374732074686520736561726368207261792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applescnnode.MakefromPtr(SceneKitFrameWork.getnode(mid))
			End Get
		#tag EndGetter
		Node As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E74206F6620696E74657273656374696F6E206265747765656E207468652067656F6D6574727920616E642074686520736561726368207261792C20696E20746865207363656E65E280997320776F726C6420636F6F7264696E6174652073797374656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getworldCoordinates (mid)
			  
			End Get
		#tag EndGetter
		WorldCoordinates As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073757266616365206E6F726D616C20766563746F722061742074686520706F696E74206F6620696E74657273656374696F6E2C20696E20746865207363656E65E280997320776F726C6420636F6F7264696E6174652073797374656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getworldNormal (mid)
			  
			End Get
		#tag EndGetter
		WorldNormal As SCNVector3
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FaceIndex"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryIndex"
			Group="Behavior"
			Type="Integer"
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
