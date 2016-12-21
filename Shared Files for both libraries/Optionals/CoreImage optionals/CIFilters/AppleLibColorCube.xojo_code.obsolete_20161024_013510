#tag Class
Protected Class AppleLibColorCube
	#tag Method, Flags = &h0, Description = 52657475726E7320746865204170706C65436F6C6F7220617420612073706563696669656420696E6465782E
		Function AppleColor(Index as Integer) As AppleColor
		  dim pointer as uinteger = index * 16
		  dim red as single = mCubeData.SingleValue(pointer)
		  dim green as single = mCubeData.SingleValue(pointer + 4)
		  dim blue as single = mCubeData.SingleValue(pointer + 8)
		  dim alpha as single = mCubeData.SingleValue(pointer + 12)
		  return new AppleColor(red, green, blue, alpha)
		End Function
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0, Description = 54686973206973207468652064656C656761746520746F2075736520666F72206368616E67696E6720636F6C6F7273207768656E2061207374616E6461726420434C5554206973206275696C742E200A416E616C797A6520746865206F726967696E616C436F6C6F722028666F722061206365727461696E20737065637472756D206F6620636F6C6F727320796F75206D69676874206C696B6520746F2076696577206974732048535620696E7374656164202D2073696D696C6172697469657320696E20487565206D65616E732074686520636F6C6F7273206172652073696D696C61722920616E642072657475726E20746865207265706C6163656D656E7420636F6C6F722E20546F206D616B65206120636F6C6F72207472616E73706172656E742C207573652074686520616C7068612076616C75652E
		Delegate Function ColorChangerDelegate(OriginalColor as Color) As Color
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0, Description = 437265617465732061207374616E6461726420434C555420776974682061207370656369666965642073697A65203C3D3132382E205370656369667920612064656C6567617465206D6574686F6420696E20776869636820796F752063616E206368616E67652074686520636F6C6F722076616C7565732E
		Sub Constructor(Size As UInteger, ColorChanger As ColorChangerDelegate = nil)
		  if size > 1 and size <=128 then
		    mCubeData =  new xojo.core.mutableMemoryblock (size * size * size * 4 * 4) 
		    dim count as uinteger = size -1
		    dim pos as uinteger
		    dim RGBValue(4) As Single
		    for Blue as Integer = 0 to Count 
		      RGBValue(2) = Blue / Count
		      for Green as integer = 0 to count
		        RGBValue(1) = Green / Count
		        for red as integer = 0 to count
		          RGBValue(0) = Red / Count
		          RGBValue(3) = 1
		          if ColorChanger <> nil then
		            dim col as color = ColorChanger.Invoke( RGB( Round( 255.0 * RGBValue(0)), _
		            Round( 255.0 * RGBValue(1)), Round( 255.0 * RGBValue(2)), _
		            255 - Round( 255.0 * RGBValue(3) ) ))
		            RGBValue(0) = Col.red/255
		            RGBValue(1) = Col.green/255
		            RGBValue(2) = Col.Blue/255
		            RGBValue(3) =  (255 - Col.Alpha) / 255
		          end if
		          mcubedata.singlevalue (pos * 4) = RGBValue(0)
		          mcubedata.singlevalue (pos * 4+ 4) = RGBValue(1)
		          mcubedata.singlevalue (pos * 4+ 8) = RGBValue(2)
		          mcubedata.singlevalue (pos * 4+ 12) = RGBValue(3)
		          pos = pos + 4
		        Next
		      Next
		    Next
		    mCubeSize = size
		  else
		    MakeException ("Size exceeds CIColorCube limit (2–128).")
		  end if
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620636F6C6F727320636F6E7461696E656420696E2074686520636C75742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return mCubeSize * 8
			End Get
		#tag EndGetter
		ColorCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656D6F7279626C6F636B20686F6C64696E672074686520434C555420646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return mCubeData
			End Get
		#tag EndGetter
		CubeData As Xojo.Core.MutableMemoryBlock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652033642073697A65206F662074686520637562652E2029726561642D6F6E6C7929
		#tag Getter
			Get
			  return mCubeSize
			End Get
		#tag EndGetter
		CubeSize As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mCubeData As Xojo.Core.MutableMemoryBlock
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCubeSize As Integer
	#tag EndProperty


	#tag ViewBehavior
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
			Name="mCubeData"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
