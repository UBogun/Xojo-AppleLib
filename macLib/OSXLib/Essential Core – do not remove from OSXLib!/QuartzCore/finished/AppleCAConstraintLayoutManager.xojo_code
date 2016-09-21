#tag Class
Protected Class AppleCAConstraintLayoutManager
Inherits AppleObject
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit))
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(layoutManager(classptr))
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpreferredSizeOfLayer Lib QuartzCoreLib Selector "preferredSizeOfLayer:" (id as ptr, layer as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub InvalidateLayout(Layer as AppleCALayer)
		  invalidateLayoutOfLayer mid, layer.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub invalidateLayoutOfLayer Lib QuartzCoreLib Selector "invalidateLayoutOfLayer:" (id as ptr, layer as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function layoutManager Lib QuartzCoreLib Selector "layoutManager" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub LayoutSublayers(Layer as AppleCALayer)
		  layoutSublayersOfLayer mid, layer.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub layoutSublayersOfLayer Lib QuartzCoreLib Selector "layoutSublayersOfLayer:" (id as ptr, layer as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleCAConstraintLayoutManager
		  return if (aptr = nil, nil, new AppleCAConstraintLayoutManager(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreferredSize(Layer as AppleCALayer) As FoundationFrameWork.NSSize
		  return getpreferredSizeOfLayer (mid, layer.id)
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("CAConstraintLayoutManager")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
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
