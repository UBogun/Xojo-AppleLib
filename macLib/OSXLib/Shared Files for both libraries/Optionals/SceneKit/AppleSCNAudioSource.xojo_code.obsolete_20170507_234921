#tag Class
Protected Class AppleSCNAudioSource
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E20617564696F20736F757263652066726F6D207468652073706563696669656420617564696F2066696C652E
		Sub constructor(URL As AppleURL)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(initWithURL(alloc(classptr), url.Id))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E20617564696F20736F757263652066726F6D20616E20617564696F2066696C6520696E20746865206170706C69636174696F6EE2809973206D61696E2062756E646C652E
		Sub constructor(FileName As Text)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(initWithFileNamed(alloc(classptr), FileName))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getpositional Lib SceneKitLibname Selector "isPositional" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function initWithFileNamed Lib SceneKitLibname Selector "initWithFileNamed:" (id as ptr, FileName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function initWithURL Lib SceneKitLibname Selector "initWithURL:" (id as ptr, URL as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4C6F61647320617564696F20646174612066726F6D2074686520736F7572636520616E6420707265706172657320697420666F7220706C6179696E672E
		Sub Load()
		  SceneKitFrameWork.load (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNAudioSource
		  return if (aptr = nil, nil, new AppleSCNAudioSource(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setpositional Lib SceneKitLibname Selector "setPositional:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 412073686F727463757420666F7220636865636B696E672069662074686520636C61737320697320617661696C61626C65206F6E207468652063757272656E742064657669636520616E6420694F532076657273696F6E2E
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
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNAudioSource")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F20736F757263652073686F756C6420706C61792072657065617465646C792E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getloops (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setLoops id, value
			End Set
		#tag EndSetter
		Loops As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220617564696F2066726F6D207468697320736F75726365207573657320334420706F736974696F6E616C206D6978696E672E2044656661756C7420547275652E
		#tag Getter
			Get
			  return getpositional (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpositional id, value
			End Set
		#tag EndSetter
		Positional As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C7420706C61796261636B20766F6C756D6520666F722074686520617564696F20736F757263652E0A546869732070726F70657274792064657465726D696E6573207468652064656661756C74207261746520666F72207768656E206120736F7572636520626567696E7320706C6179696E672E20546F207661727920746865207261746520647572696E6720706C61796261636B207468726F75676820616E2053434E417564696F506C61796572206F626A6563742C207573652074686520706C61796572E280997320617564696F4E6F64652070726F706572747920746F20616363657373207265616C2D74696D6520617564696F20636F6E74726F6C732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getrate (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setrate id, value
			End Set
		#tag EndSetter
		Rate As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C7420626C656E64206F6620756E6D6F64696669656420616E64207265766572622D70726F6365737365642028616C736F2063616C6C65642064727920616E64207765742920617564696F20666F7220706C61796261636B206F662074686520617564696F20736F757263652E20546869732070726F70657274792064657465726D696E6573207468652064656661756C742072657665726220626C656E6420666F72207768656E206120736F7572636520626567696E7320706C6179696E672E20546F2076617279207468652072657665726220626C656E6420647572696E6720706C61796261636B207468726F75676820616E2053434E417564696F506C61796572206F626A6563742C207573652074686520706C61796572E280997320617564696F4E6F64652070726F706572747920746F20616363657373207265616C2D74696D6520617564696F20636F6E74726F6C732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getreverbBlend (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setreverbBlend id, value
			End Set
		#tag EndSetter
		ReverbBlend As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F20736F757263652073686F756C642073747265616D20636F6E74656E742066726F6D2069747320736F757263652055524C2028616E64206E6F74207072656C6F6164207468652062756666657229207768656E20706C6179696E672E
		#tag Getter
			Get
			  return SceneKitFrameWork.getshouldStream (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setshouldStream id, value
			End Set
		#tag EndSetter
		ShouldStream As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C7420706C61796261636B20766F6C756D6520666F722074686520617564696F20736F757263652E0A546869732070726F70657274792064657465726D696E6573207468652064656661756C7420766F6C756D6520666F72207768656E206120736F7572636520626567696E7320706C6179696E672E20546F20766172792074686520766F6C756D6520647572696E6720706C61796261636B207468726F75676820616E2053434E417564696F506C61796572206F626A6563742C207573652074686520706C61796572E280997320617564696F4E6F64652070726F706572747920746F20616363657373207265616C2D74696D6520617564696F20636F6E74726F6C732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getvolume (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setvolume id, value
			End Set
		#tag EndSetter
		Volume As Single
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
			Name="Loops"
			Group="Behavior"
			Type="Boolean"
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
			Name="Positional"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rate"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReverbBlend"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldStream"
			Group="Behavior"
			Type="Boolean"
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
			Name="Volume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
