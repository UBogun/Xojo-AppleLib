#tag Class
Protected Class AppleSKMutableTexture
Inherits AppleSKTexture
	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E20656D7074792074657874757265207769746820612073706563696669632073697A6520616E6420666F726D61742E
		Sub Constructor(asize as FoundationFramework.NSSize)
		  Super.Constructor(SpriteKitFramework.initWithSize(alloc(ClassPtr), asize))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E20656D7074792074657874757265207769746820612073706563696669632073697A6520616E6420666F726D61742E
		Sub Constructor(asize as FoundationFramework.NSSize, format as PixelFormat)
		  super.Constructor(initWithSizeFormat(alloc(ClassPtr), asize, format))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithSizeFormat Lib SpriteKitLibName Selector "initWithSize:pixelFormat:" (id as ptr, size as FoundationFrameWork . NSSize, Format as PixelFormat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub ModificationBlockTemplate(pixelData as Ptr, LengthinBytes as Integer)
		  #pragma StackOverflowChecking false
		  #pragma BackgroundTasks false
		  #pragma NilObjectChecking false
		  // here you can retrieve the pixeldate like
		  dim PixelBlock as new xojo.core.MutableMemoryBlock (pixelData, LengthinBytes)
		  // do something with the data
		  // be careful not to address external instances. This block will be called on a background thread!
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F6469666965732074686520636F6E74656E7473206F662061206D757461626C6520746578747572652E0A53656520746865204D6F64696669636174696F6E426C6F636B54656D706C61746520617320612074656D706C61746520666F722074686520626C6F636B207374727563747572652E0A4361726566756C3A2054686520626C6F636B2077696C2072756E206F6E2061206261636B67726F756E6420746872656164207768696368206973206E6F74206F6666696369616C6C7920737570706F7274656420627920586F6A6F21
		Sub ModifyPixelData(ModificationBlock as AppleBlock)
		  modifyPixelDataWithBlock mid, ModificationBlock.Handle
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub modifyPixelDataWithBlock Lib SpriteKitLibName Selector "modifyPixelDataWithBlock:" (id as ptr, Block as Ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKMutableTexture")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag Enum, Name = PixelFormat, Type = Integer, Flags = &h0
		RGBA32 = &h52474241
		  RGBAHalf64 = &h52476841
		RGBAFloat128 = &h5247641
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
