#tag Class
Protected Class AppleStringDrawingContext
Inherits AppleObject
	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720537472696E6744726177696E67436F6E74657874
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (Init(alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652061637475616C207363616C6520666163746F72207468617420776173206170706C69656420746F2074686520666F6E7420647572696E672064726177696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #if Target64Bit
			    declare function actualScaleFactor lib FoundationLibName  selector "actualScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function actualScaleFactor lib FoundationLibName  selector "actualScaleFactor" (id as ptr) as single
			  #endif
			  return actualScaleFactor (id)
			End Get
		#tag EndGetter
		ActualScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSStringDrawingContext")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C6520666163746F7220746861742064657465726D696E65732074686520736D616C6C65737420666F6E742073697A6520746F2075736520647572696E672064726177696E672E200A412076616C7565206F6620302E3020636F72726573706F6E647320746F2061207363616C6520666163746F72206F6620312E302E
		#tag Getter
			Get
			  #if Target64Bit
			    declare function MinimumScaleFactor lib FoundationLibName  selector "minimumScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function MinimumScaleFactor lib FoundationLibName  selector "minimumScaleFactor" (id as ptr) as single
			  #endif
			  return MinimumScaleFactor (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setMinimumScaleFactor lib FoundationLibName  selector "setMinimumScaleFactor:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare Sub setMinimumScaleFactor lib FoundationLibName  selector "setMinimumScaleFactor:" (id as ptr, value as single)
			  #endif
			  setMinimumScaleFactor (id, value)
			End Set
		#tag EndSetter
		MinimumScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F756E64696E672072656374616E676C65207468617420776173206C6173742075736564207768656E2064726177696E672074686520737472696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  declare function totalBounds lib FoundationLibName  selector "totalBounds" (id as ptr)  as FoundationFramework.NSRect
			  return totalBounds (id)
			  // 
			End Get
		#tag EndGetter
		TotalBounds As FoundationFramework.NSRect
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActualScaleFactor"
			Group="Behavior"
			Type="Double"
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
			Name="MinimumScaleFactor"
			Group="Behavior"
			Type="Double"
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
