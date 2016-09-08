#tag Class
Protected Class AVAudioSettingsDictionary
Inherits AppleMutableDictionary
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleMutableDictionary
		  // Constructor(Capacity as uinteger) -- From AppleMutableDictionary
		  // Constructor() -- From AppleDictionary
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(3)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520417564696F206461746120666F726D61742E20456E756D65726174696F6E206D75737420626520657874656E6465642E
		#tag Getter
			Get
			  select case me.TextForKey(kAVFormatIDKey)
			  case kAVFormatLPCM
			    return AVAudioDataFormat.LinearPCM
			  case kAVFormatAC3
			    return  AVAudioDataFormat.AC3
			  case kAVFormatIMA4
			    return AVAudioDataFormat.AppleIMA4
			  case kAVFormat60958AC3
			    return AVAudioDataFormat.AC360958
			  end select
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim command as text
			  select case value
			  case AVAudioDataFormat.LinearPCM
			    command = kAVFormatLPCM
			  case AVAudioDataFormat.AC3
			    command = kAVFormatAC3
			  case AVAudioDataFormat.AppleIMA4
			    command = kAVFormatIMA4
			  case AVAudioDataFormat.AC360958
			    command = kAVFormat60958AC3
			  end select
			  me.TextForKey(kAVFormatIDKey) = command
			End Set
		#tag EndSetter
		AudioDataFormat As AVAudioDataFormat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E636F64696E6720617564696F207175616C6974792E
		#tag Getter
			Get
			  dim n as AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVEncoderAudioQualityKey))
			  if n <> nil then return AVAudioQuality(n.IntegerValue)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim val as integer = integer(value)
			  me.ObjectForKey(kAVEncoderAudioQualityKey) = new AppleNumber(val)
			End Set
		#tag EndSetter
		EncoderAudioQuality As AVAudioQuality
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E636F64696E6720617564696F2062697420726174652E
		#tag Getter
			Get
			  dim n as AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVEncoderBitRateKey))
			  if n <> nil then
			    select case n.IntegerValue
			    case 8
			      return LinearPCMDepth.Bit8
			    case 16
			      return  LinearPCMDepth.Bit16
			    case 24
			      return LinearPCMDepth.Bit24
			    case 32
			      return LinearPCMDepth.Bit32
			    end select
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim command as integer
			  select case value
			  case LinearPCMDepth.Bit8
			    command = 8
			  case LinearPCMDepth.Bit16
			    command = 16
			  case LinearPCMDepth.Bit24
			    command = 24
			  case LinearPCMDepth.Bit32
			    command = 32
			  end select
			  me.ObjectForKey(kAVEncoderBitRateKey) = new AppleNumber(command)
			End Set
		#tag EndSetter
		EncoderBitRate As LinearPCMDepth
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652062697420646570746820666F722061206C696E6561722050434D20617564696F20666F726D6174
		#tag Getter
			Get
			  dim n as AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVLinearPCMBitDepthKey))
			  if n <> nil then
			    select case n.IntegerValue
			    case 8
			      return LinearPCMDepth.Bit8
			    case 16
			      return  LinearPCMDepth.Bit16
			    case 24
			      return LinearPCMDepth.Bit24
			    case 32
			      return LinearPCMDepth.Bit32
			    end select
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim command as integer
			  select case value
			  case LinearPCMDepth.Bit8
			    command = 8
			  case LinearPCMDepth.Bit16
			    command = 16
			  case LinearPCMDepth.Bit24
			    command = 24
			  case LinearPCMDepth.Bit32
			    command = 32
			  end select
			  me.ObjectForKey(kAVLinearPCMBitDepthKey) = new AppleNumber(command)
			End Set
		#tag EndSetter
		LinearPCMBitDepth As LinearPCMDepth
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F20666F726D61742069732062696720656E6469616E
		#tag Getter
			Get
			  dim n as  AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVLinearPCMIsBigEndianKey))
			  if n <> nil then return n.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim n as new AppleNumber(value)
			  me.ObjectForKey(kAVLinearPCMIsBigEndianKey) = n
			End Set
		#tag EndSetter
		LinearPCMIsBigEndian As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F20666F726D617420697320666C6F6174696E6720706F696E74206F7220666978656420706F696E742E
		#tag Getter
			Get
			  dim n as  AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVLinearPCMIsFloatKey))
			  if n <> nil then return n.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim n as new AppleNumber(value)
			  me.ObjectForKey(kAVLinearPCMIsFloatKey) = n
			End Set
		#tag EndSetter
		LinearPCMIsFloat As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F20666F726D6174206973206E6F6E2D696E7465726C65617665642E
		#tag Getter
			Get
			  dim n as  AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVLinearPCMIsNonInterleaved))
			  if n <> nil then return n.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim n as new AppleNumber(value)
			  me.ObjectForKey(kAVLinearPCMIsNonInterleaved) = n
			End Set
		#tag EndSetter
		LinearPCMIsNonInterleaved As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66204368616E6E656C73
		#tag Getter
			Get
			  dim n as  AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVNumberOfChannelsKey))
			  if n <> nil then return n.IntegerValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim n as new AppleNumber(value)
			  me.ObjectForKey(kAVNumberOfChannelsKey) = n
			End Set
		#tag EndSetter
		NumberOfChannels As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073616D706C65207261746520696E20486572747A
		#tag Getter
			Get
			  dim n as  AppleNumber = AppleNumber.MakefromPtr(me.PtrForKey(kAVSampleRateKey))
			  if n <> nil then return n.DoubleValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim n as new AppleNumber(value)
			  me.ObjectForKey(kAVSampleRateKey) = n
			End Set
		#tag EndSetter
		SampleRate As Double
	#tag EndComputedProperty


	#tag Constant, Name = kAVEncoderAudioQualityKey, Type = Text, Dynamic = False, Default = \"AVEncoderAudioQualityKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVEncoderBitRateKey, Type = Text, Dynamic = False, Default = \"AVEncoderBitRateKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVFormat60958AC3, Type = Text, Dynamic = False, Default = \"cac3", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVFormatAC3, Type = Text, Dynamic = False, Default = \"ac-3", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVFormatIDKey, Type = Text, Dynamic = False, Default = \"AVFormatIDKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVFormatIMA4, Type = Text, Dynamic = False, Default = \"ima4", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVFormatLPCM, Type = Text, Dynamic = False, Default = \"lpcm", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVLinearPCMBitDepthKey, Type = Text, Dynamic = False, Default = \"AVLinearPCMBitDepthKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVLinearPCMIsBigEndianKey, Type = Text, Dynamic = False, Default = \"AVLinearPCMIsBigEndianKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVLinearPCMIsFloatKey, Type = Text, Dynamic = False, Default = \"AVLinearPCMIsFloatKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVLinearPCMIsNonInterleaved, Type = Text, Dynamic = False, Default = \"AVLinearPCMIsNonInterleaved", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVNumberOfChannelsKey, Type = Text, Dynamic = False, Default = \"AVNumberOfChannelsKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVSampleRateKey, Type = Text, Dynamic = False, Default = \"AVSampleRateKey", Scope = Private
	#tag EndConstant


	#tag Enum, Name = AVAudioDataFormat, Type = Integer, Flags = &h0
		LinearPCM
		  AC3
		  AC360958
		AppleIMA4
	#tag EndEnum

	#tag Enum, Name = AVAudioQuality, Type = Integer, Flags = &h0
		Minimum = 0
		  Low = &h20
		  Medium = &h40
		  High = &h60
		Maximum = &h7f
	#tag EndEnum

	#tag Enum, Name = LinearPCMDepth, Type = Integer, Flags = &h0
		Bit8
		  Bit16
		  Bit24
		Bit32
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AudioDataFormat"
			Group="Behavior"
			Type="AVAudioDataFormat"
			EditorType="Enum"
			#tag EnumValues
				"0 - LinearPCM"
				"1 - AC3"
				"2 - AC360958"
				"3 - AppleIMA4"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EncoderAudioQuality"
			Group="Behavior"
			Type="AVAudioQuality"
			EditorType="Enum"
			#tag EnumValues
				"0 - Minimum"
				"32 - Low"
				"64 - Medium"
				"96 - High"
				"127 - Maximum"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="EncoderBitRate"
			Group="Behavior"
			Type="LinearPCMDepth"
			EditorType="Enum"
			#tag EnumValues
				"0 - Bit8"
				"1 - Bit16"
				"2 - Bit24"
				"3 - Bit32"
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
			Name="LinearPCMBitDepth"
			Group="Behavior"
			Type="LinearPCMDepth"
			EditorType="Enum"
			#tag EnumValues
				"0 - Bit8"
				"1 - Bit16"
				"2 - Bit24"
				"3 - Bit32"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LinearPCMIsBigEndian"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LinearPCMIsFloat"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LinearPCMIsNonInterleaved"
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
			Name="NumberOfChannels"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SampleRate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringsFileFormat"
			Group="Behavior"
			Type="Text"
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
