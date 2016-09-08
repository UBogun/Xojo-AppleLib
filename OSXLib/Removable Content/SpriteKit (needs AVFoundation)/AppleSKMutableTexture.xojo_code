#tag Class
Protected Class AppleSKMutableTexture
Inherits AppleSKTexture
	#tag Method, Flags = &h1000
		Sub Constructor(asize as FoundationFramework.NSSize)
		  #if Target64bit
		    declare function initWithSize lib spritekitlibname selector "initWithSize:" (id as ptr, size as FoundationFramework.NSSize) as ptr
		    super.Constructor(initWithSize(alloc(ClassPtr), asize))
		  #elseif Target32Bit
		    declare function initWithSize lib spritekitlibname selector "initWithSize:" (id as ptr, size as FoundationFramework.NSSize32Bit) as ptr
		    super.Constructor(initWithSize(alloc(ClassPtr), asize.toNSSize32))
		  #endif
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(asize as FoundationFramework.NSSize, format as PixelFormat)
		  dim formatvalue as integer
		  select case format
		  case PixelFormat.RGBA32
		    formatvalue = &h52474241  //RGBA
		  case PixelFormat.RGBAHalf64
		    formatvalue = &h52476841  //RGhA
		  case PixelFormat.RGBAFloat128
		    formatvalue = &h5247641  //RGfA
		  end select
		  #if Target64bit
		    declare function initWithSizepixelFormat lib spritekitlibname selector "initWithSize:pixelFormat:" (id as ptr, size as FoundationFramework.NSSize, format as integer) as ptr
		    super.Constructor(initWithSizepixelFormat(alloc(ClassPtr), asize, formatvalue))
		  #elseif Target32Bit
		    declare function initWithSizepixelFormat lib spritekitlibname selector "initWithSize:pixelFormat:" (id as ptr, size as FoundationFramework.NSSize32Bit, format as integer) as ptr
		    super.Constructor(initWithSizepixelFormat(alloc(ClassPtr), asize.toNSSize32, formatvalue))
		  #endif
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ModificationBlockTemplate(pixelData as Ptr, LengthinBytes as Integer)
		  // here you can retrieve the pixeldate like
		  dim PixelBlock as new xojo.core.MutableMemoryBlock (pixelData, LengthinBytes)
		  // do something with the data
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ModifyPixelData(ModificationBlock as AppleBlock)
		  Declare sub modifyPixelDataWithBlock lib spritekitlibname selector "modifyPixelDataWithBlock:" (id as ptr, block as ptr)
		  modifyPixelDataWithBlock id, ModificationBlock.Handle
		End Sub
	#tag EndMethod


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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKMutableTexture")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag Enum, Name = PixelFormat, Type = Integer, Flags = &h0
		RGBA32
		  RGBAHalf64
		RGBAFloat128
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FilteringMode"
			Group="Behavior"
			Type="SKTextureFilteringMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Nearest"
				"1 - Linear"
			#tag EndEnumValues
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
		#tag ViewProperty
			Name="UsesMipMaps"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
