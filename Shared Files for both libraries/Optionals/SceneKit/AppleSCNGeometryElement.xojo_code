#tag Class
Protected Class AppleSCNGeometryElement
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4372656174657320612067656F6D6574727920656C656D656E742066726F6D2074686520737065636966696564206461746120616E64206F7074696F6E732E
		Sub Constructor(Data as Appledata, primitiveType as SCNGeometryPrimitiveType, primitiveCount as integer, bytesPerIndex as Integer)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(geometryElementWithData(classptr, data.id, primitiveType, primitiveCount, bytesPerIndex))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function geometryElementWithData Lib SceneKitLibname Selector "geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:" (id as ptr, data as ptr, primitiveType as SCNGeometryPrimitiveType, primitiveCount as Integer, bytesPerIndex as Integer) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getbytesPerIndex Lib SceneKitLibname Selector "bytesPerIndex" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getdata Lib SceneKitLibname Selector "data" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getprimitiveCount Lib SceneKitLibname Selector "primitiveCount" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getprimitiveType Lib SceneKitLibname Selector "primitiveType" (id as ptr) As SCNGeometryPrimitiveType
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNGeometryElement
		  return if (aptr = nil,nil, new AppleSCNGeometryElement(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		MDLSubmesh cinstructor missing
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206279746573207468617420726570726573656E74206561636820696E6465782076616C756520696E2074686520656C656D656E74E280997320646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getbytesPerIndex(id)
			End Get
		#tag EndGetter
		BytesPerIndex As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mclassptr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNGeometryElement")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520646174612064657363726962696E67207468652067656F6D6574727920656C656D656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appledata.MakefromPtr(getdata(id))
			End Get
		#tag EndGetter
		Data As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207072696D69746976657320696E2074686520656C656D656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getprimitiveCount(id)
			End Get
		#tag EndGetter
		PrimitiveCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064726177696E67207072696D6974697665207468617420636F6E6E65637473207665727469636573207768656E2072656E646572696E67207468652067656F6D6574727920656C656D656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getprimitiveType(id)
			End Get
		#tag EndGetter
		PrimitiveType As SCNGeometryPrimitiveType
	#tag EndComputedProperty


	#tag Enum, Name = SCNGeometryPrimitiveType, Type = Integer, Flags = &h0
		Triangles = 0
		  TriangleStrip = 1
		  Line =2
		Point = 3
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="BytesPerIndex"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
			Name="PrimitiveCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrimitiveType"
			Group="Behavior"
			Type="SCNGeometryPrimitiveType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Triangles"
				"1 - TriangleStrip"
				"2 - Line"
				"3 - Point"
			#tag EndEnumValues
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
