#tag Class
Protected Class AppleTraitCollection
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(TraitCollections As AppleArray)
		  Declare function traitCollectionWithTraitsFromCollections lib UIKitLibname selector "traitCollectionWithTraitsFromCollections:" (id as ptr, Collections as ptr) as ptr
		  super.Constructor (traitCollectionWithTraitsFromCollections(classptr, TraitCollections.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(DisplayScale As Double)
		  #if Target64Bit
		    Declare function traitCollectionWithDisplayScale lib UIKitLibname selector "traitCollectionWithDisplayScale:" (id as ptr, scale as double) as ptr
		  #elseif Target32Bit
		    Declare function traitCollectionWithDisplayScale lib UIKitLibname selector "traitCollectionWithDisplayScale:" (id as ptr, scale as single) as ptr
		  #endif
		  super.Constructor (traitCollectionWithDisplayScale(classptr,  DisplayScale))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(UserInterfaceIdiom as UIUserInterfaceIdiom)
		  Declare function traitCollectionWithUserInterfaceIdiom lib UIKitLibname selector "traitCollectionWithUserInterfaceIdiom:" (id as ptr, UserInterfaceIdiom as UIUserInterfaceIdiom) as ptr
		  super.Constructor (traitCollectionWithUserInterfaceIdiom(classptr, UserInterfaceIdiom))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsTraitsInCollection(Collection as AppleTraitCollection) As Boolean
		  Declare function containsTraitsInCollection lib UIKitLibname selector "containsTraitsInCollection:" (id as ptr, collection as ptr) as Boolean
		  return containsTraitsInCollection (id, Collection.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function HorizontalSizedClass(HorizontalClass As UIUserInterfaceSizeClass) As AppleTraitCollection
		  Declare function traitCollectionWithHorizontalSizeClass lib UIKitLibname selector "traitCollectionWithHorizontalSizeClass:" (id as ptr, HorizontalClass As UIUserInterfaceSizeClass) as ptr
		  dim result as new AppleTraitCollection (traitCollectionWithHorizontalSizeClass(classptr, HorizontalClass))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTraitCollection
		  return if (aptr = nil, nil, new AppleTraitCollection(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function VerticalSizedClass(VerticalClass As UIUserInterfaceSizeClass) As AppleTraitCollection
		  Declare function traitCollectionWithVerticalSizeClass lib UIKitLibname selector "traitCollectionWithVerticalSizeClass:" (id as ptr, VerticalClass As UIUserInterfaceSizeClass) as ptr
		  dim result as new AppleTraitCollection (traitCollectionWithVerticalSizeClass(classptr, VerticalClass))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (ClassPtr <> nil)
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UITraitCollection")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If Target64Bit
			    Declare Function displayScale lib UIKitLibname selector "displayScale" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function displayScale lib UIKitLibname selector "displayScale" (id as ptr) as single
			  #endif
			  Return displayScale (id)
			  
			End Get
		#tag EndGetter
		DisplayScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function horizontalSizeClass lib UIKitLibname selector "horizontalSizeClass" (id as ptr) as UIUserInterfaceSizeClass
			  Return horizontalSizeClass (id)
			  
			End Get
		#tag EndGetter
		HorizontalSizeClass As UIUserInterfaceSizeClass
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function userInterfaceIdiom lib UIKitLibname selector "userInterfaceIdiom" (id as ptr) as UIUserInterfaceIdiom
			  Return userInterfaceIdiom (id)
			  
			End Get
		#tag EndGetter
		UserInterfaceIdiom As UIUserInterfaceIdiom
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function verticalSizeClass lib UIKitLibname selector "verticalSizeClass" (id as ptr) as UIUserInterfaceSizeClass
			  Return verticalSizeClass (id)
			  
			End Get
		#tag EndGetter
		VerticalSizeClass As UIUserInterfaceSizeClass
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalSizeClass"
			Group="Behavior"
			Type="UIUserInterfaceSizeClass"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unspecified"
				"1 - Compact"
				"2 - Regular"
			#tag EndEnumValues
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
		#tag ViewProperty
			Name="UserInterfaceIdiom"
			Group="Behavior"
			Type="UIUserInterfaceIdiom"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Unspecified"
				"0 - iPhone"
				"1 - iPad"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalSizeClass"
			Group="Behavior"
			Type="UIUserInterfaceSizeClass"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unspecified"
				"1 - Compact"
				"2 - Regular"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
