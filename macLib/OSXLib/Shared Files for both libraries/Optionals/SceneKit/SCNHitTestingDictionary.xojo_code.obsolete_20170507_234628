#tag Class
Protected Class SCNHitTestingDictionary
Inherits AppleMutabledictionary
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(RootNode as AppleSCNNode)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Capacity as uinteger = 1) -- From AppleMutableDictionary
		  // Constructor() -- From AppleDictionary
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(8)
		  me.OnlyFirstObject = false
		  me.SortFromNearestToFarthest = true
		  me.OnlySearchCurrentDepthRange = true
		  me.OnlyTestFacingPolygons = true
		  me.TestBoundingBoxOnly = false
		  me.IgnoreChildNodes = false
		  me.IgnoreHiddenNodes = true
		  me.RootNode = RootNode
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C207365617263686573206F6E6C7920746865206E6F646520737065636966696564206279207468652054657374526F6F742070726F70657274792C20616E64206E6F7420697473206368696C6472656E2E2044656661756C742046616C73652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestIgnoreChildNodesKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestIgnoreChildNodesKey ) = new AppleNumber(value)
			End Set
		#tag EndSetter
		IgnoreChildNodes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C206869742D74657374696E672077696C6C206E6F742072657475726E206E6F6465732077686F73652068696464656E2070726F70657274792076616C756520697320547275652E20537065636966792046616C736520746F20736561726368206E6F646573207265676172646C657373206F66207468656972207669736962696C6974792E2044656661756C7420547275652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestIgnoreHiddenNodesKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestIgnoreHiddenNodesKey ) = new AppleNumber(value)
			End Set
		#tag EndSetter
		IgnoreHiddenNodes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C206F6E6C792074686520666972737420666F756E64206F626A6563742077696C6C2062652072657475726E65642E20446F6573206E6F74206861766520746F2062652074686520636C6F736573742E2044656661756C742046616C73652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestFirstFoundOnlyKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestFirstFoundOnlyKey ) = new AppleNumber(value)
			End Set
		#tag EndSetter
		OnlyFirstObject As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C206869742D74657374696E67207365617263686573206F6E6C79206F626A65637473206265747765656E20746865207A4E65617220616E64207A4661722064697374616E636573206F662074686520706F696E744F66566965772063616D6572612E20537065636966792046616C736520746F20696E636C756465206F626A65637473206F75747369646520746869732064657074682072616E676520696E20746865207365617263682E2044656661756C7420547275652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestClipToZRangeKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestClipToZRangeKey ) = new AppleNumber(value)
			End Set
		#tag EndSetter
		OnlySearchCurrentDepthRange As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C206261636B2D666163696E6720706F6C79676F6E732077696C6C206E6F742062652072657475726E6564206173206869742D7465737420726573756C74732E2044656661756C7420547275652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestBackFaceCullingKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestBackFaceCullingKey ) = new AppleNumber(value)
			End Set
		#tag EndSetter
		OnlyTestFacingPolygons As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F6F74206F6620746865206E6F64652068696572617263687920746F2062652073656172636865642E0A0A5468652076616C756520666F722074686973206B657920697320616E2053434E4E6F6465206F626A6563742E204869742D74657374696E67207365617263686573206F6E6C7920746865206368696C64206E6F64652068696572617263687920756E6465722074686973206E6F64652E205768656E206869742D74657374696E672074616B657320706C61636520696E207468652073637265656E207370616365206F6620616E2053434E5363656E6552656E6465726572206F626A65637420776974682074686520686974546573743A6F7074696F6E733A206D6574686F642C207468652064656661756C742076616C7565206973207468652070726573656E746564207363656E65E280997320726F6F74206E6F64652E205768656E206869742D74657374696E6720697320696E2061206E6F6465207573696E67206974732068697454657374576974685365676D656E7446726F6D506F696E743A746F506F696E743A6F7074696F6E733A2C207468652064656661756C742076616C756520697320746865206E6F6465
		#tag Getter
			Get
			  return AppleSCNNode.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestRootNodeKey))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestRootNodeKey ) = value
			End Set
		#tag EndSetter
		RootNode As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C2077696C6C20736F72742074686520666F756E64206F626A656374732066726F6D206E65617265737420746F2066617274686573742E2044656661756C7420547275652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestSortResultsKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestSortResultsKey) = new AppleNumber(value)
			End Set
		#tag EndSetter
		SortFromNearestToFarthest As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C2077696C6C2074657374207769746820696E6372656173656420737065656420627574206C657373206163637572616379206F6E6C792074686520626F756E64696E6720626F782E2049662046616C73652C20746865206E6F64652067656F6D657472792077696C6C206265207465737465642E2044656661756C742046616C73652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(SceneKitFrameWork.kSCNHitTestBoundingBoxOnlyKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (SceneKitFrameWork.kSCNHitTestBoundingBoxOnlyKey) = new AppleNumber(value)
			End Set
		#tag EndSetter
		TestBoundingBoxOnly As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
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
			Name="IgnoreChildNodes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoreHiddenNodes"
			Group="Behavior"
			Type="Boolean"
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
			Name="OnlyFirstObject"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OnlySearchCurrentDepthRange"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OnlyTestFacingPolygons"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SortFromNearestToFarthest"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringsFileFormat"
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
			Name="TestBoundingBoxOnly"
			Group="Behavior"
			Type="Boolean"
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
