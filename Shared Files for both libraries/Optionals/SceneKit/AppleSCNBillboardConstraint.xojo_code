#tag Class
Protected Class AppleSCNBillboardConstraint
Inherits AppleSCNConstraint
	#tag Method, Flags = &h1000, Description = 41206E65772062696C6C626F61726420636F6E73747261696E74206F626A6563742E20417661696C61626C652073696E636520694F5320392E302E
		Sub Constructor()
		  Declare function billboardConstraint Lib SceneKitLibname selector "billboardConstraint" (id as ptr) as ptr
		  super.Constructor (billboardConstraint(classptr))
		  RetainClassObject
		End Sub
	#tag EndMethod


	#tag Note, Name = Status completed
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return classptr <> nil
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNBillboardConstraint")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E2074686174207370656369666965732077686963682064656772656573206F662066726565646F6D2074686520636F6E73747261696E7420616666656374732E0A57697468207468652064656661756C7420636F6E73747261696E742074797065206F662053434E42696C6C626F61726441786973416C6C2C2061206E6F64652061666665637465642062792074686520636F6E73747261696E74206E6576657220726F74617465732077697468207265737065637420746F20746865207363656E65E280997320706F696E74206F6620766965772E204368616E676520746869732070726F706572747920746F207061727469616C6C7920636F6E73747261696E2061206E6F6465E2809973206F7269656E746174696F6E2E20466F72206578616D706C652C207468652053434E42696C6C626F617264417869735920636F6E73747261696E742074797065206B65657073206F6E6C7920746865206E6F6465E280997320792D6178697320706172616C6C656C20746F207468652073637265656EE2809474686973206F7074696F6E2063616E2062652075736566756C20666F72206170706C69636174696F6E73206C696B652064726177696E6720747265657320696E207468652064697374616E63652077697468203244207370726974657320696E7374656164206F6620776974682033442067656F6D657472792E
		#tag Getter
			Get
			  Declare function freeAxes Lib SceneKitLibname selector "freeAxes" (id as ptr) as uinteger
			  return new SCNBillboardAxis(freeAxes(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setFreeAxes Lib SceneKitLibname selector "setFreeAxes:" (id as ptr, value as uinteger)
			  setFreeAxes id, value.Id
			End Set
		#tag EndSetter
		FreeAxes As SCNBillboardAxis
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
			Name="InfluenceFactor"
			Group="Behavior"
			Type="Double"
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
