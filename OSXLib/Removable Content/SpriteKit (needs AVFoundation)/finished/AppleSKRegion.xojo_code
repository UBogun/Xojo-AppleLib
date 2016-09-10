#tag Class
Protected Class AppleSKRegion
Inherits AppleObject
	#tag Method, Flags = &h1000, Description = 52657475726E73206120726567696F6E207468617420646566696E6573206120726567696F6E207468617420696E636C7564657320616C6C20706F696E74732E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (infiniteRegion(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720726567696F6E207573696E67206120436F726520477261706869637320706174682E
		Sub Constructor(Path as AppleCGPath)
		  super.Constructor(initWithPath(alloc(ClassPtr), Path.CFTypeRef))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720726567696F6E207769746820612072656374616E67756C617220617265612E
		Sub Constructor(asize as FoundationFramework.NSSize)
		  super.Constructor(SpriteKitFramework.initWithSize(alloc(ClassPtr), asize))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720726567696F6E207769746820612063697263756C617220617265612E
		Sub Constructor(Radius as Single)
		  super.Constructor(initWithRadius(alloc(ClassPtr), Radius))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206120706172746963756C617220706F696E7420697320636F6E7461696E656420696E2074686520726567696F6E2E
		Function ContainsPoint(aPoint as FoundationFramework.NSPoint) As Boolean
		  return SpriteKitFramework.containsPoint (mid, apoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720726567696F6E2063726561746564206279207375627472616374696E672074686520636F6E74656E7473206F6620616E6F7468657220726567696F6E2066726F6D207468697320726567696F6E2E
		Function DifferenceRegion(SubtractRegion as AppleSKRegion) As AppleSKRegion
		  return AppleSKRegion.MakeFromPtr (regionByDifferenceFromRegion(mid, SubtractRegion.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getinverseRegion Lib SpriteKitLibName Selector "inverseRegion" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function infiniteRegion Lib SpriteKitLibName Selector "infiniteRegion" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithPath Lib SpriteKitLibName Selector "initWithPath:" (id as ptr, path as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithRadius Lib SpriteKitLibName Selector "initWithRadius:" (id as ptr, radius as single) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720726567696F6E206372656174656420627920696E74657273656374696E672074686520636F6E74656E7473206F66207468697320726567696F6E207769746820616E6F7468657220726567696F6E2E
		Function IntersectionRegion(Region as AppleSKRegion) As AppleSKRegion
		  return AppleSKRegion.MakeFromPtr (regionByIntersectionWithRegion(mid, Region.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKRegion
		  return if (aptr = nil, nil, new AppleSKRegion(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function regionByDifferenceFromRegion Lib SpriteKitLibName Selector "regionByDifferenceFromRegion:" (id as ptr, region as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function regionByIntersectionWithRegion Lib SpriteKitLibName Selector "regionByIntersectionWithRegion:" (id as ptr, region as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function regionByUnionWithRegion Lib SpriteKitLibName Selector "regionByUnionWithRegion:" (id as ptr, region as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720726567696F6E206372656174656420627920636F6D62696E696E672074686520636F6E74656E7473206F66207468697320726567696F6E207769746820616E6F7468657220726567696F6E2E
		Function UniionRegion(Region as AppleSKRegion) As AppleSKRegion
		  return AppleSKRegion.MakeFromPtr (regionByUnionWithRegion(mid, Region.id))
		End Function
	#tag EndMethod


	#tag Note, Name = Staus complete
		
		macOS 10.12
	#tag EndNote


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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKRegion")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120726567696F6E207468617420697320746865206D617468656D61746963616C20696E7665727365206F6620616E206578697374696E6720726567696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKRegion.MakeFromPtr (getinverseRegion(mid))
			End Get
		#tag EndGetter
		InverseRegion As AppleSKRegion
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E73206120436F72652047726170686963732070617468207468617420646566696E65732074686520726567696F6E2E
		#tag Getter
			Get
			  return  AppleCGPath.MakeFromCFTypeRef (SpriteKitFramework.getpath(mid))
			End Get
		#tag EndGetter
		Path As AppleCGPath
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
