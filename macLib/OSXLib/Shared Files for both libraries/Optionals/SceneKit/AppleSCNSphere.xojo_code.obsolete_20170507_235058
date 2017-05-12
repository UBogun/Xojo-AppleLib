#tag Class
Protected Class AppleSCNSphere
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207370686572652067656F6D6574727920776974682074686520737065636966696564207261646975732E
		Sub Constructor(Radius As Double)
		  #if Target64Bit
		    Declare function sphereWithRadius Lib SceneKitLibname selector "sphereWithRadius:" (id as ptr, Radius as double) as ptr
		  #elseif Target32Bit
		    Declare function sphereWithRadius Lib SceneKitLibname selector "sphereWithRadius:" (id as ptr, Radius as single) as ptr
		  #endif
		  Super.Constructor (sphereWithRadius (ClassPtr, Radius))
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documeneted
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr  = FoundationFramework.NSClassFromString ("SCNSphere")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B6974207573657320612067656F646573696320706F6C79676F6E206D65736820746F2072656E64657220746865207370686572652E
		#tag Getter
			Get
			  declare Function isGeodesic Lib SceneKitLibname selector "isGeodesic" (id as ptr) as Boolean
			  return isGeodesic (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setGeodesic Lib SceneKitLibname selector "setGeodesic:" (id as ptr, value as Boolean)
			  setGeodesic (id, value)
			End Set
		#tag EndSetter
		Geodesic As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726164697573206F6620746865207370686572652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRadius id, value
			End Set
		#tag EndSetter
		Radius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E756D6265722064657465726D696E696E67207468652064657461696C206F662074686520706F6C79676F6E206D657368205363656E654B6974207573657320746F2072656E64657220746865207370686572652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSegmentCount id, value
			End Set
		#tag EndSetter
		SegmentCount As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Geodesic"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryElementCount"
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
			Name="Radius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SegmentCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SubdivisionLevel"
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
