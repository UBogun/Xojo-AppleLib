#tag Class
Protected Class iOSLibKeyValueChangeDictionary
Inherits AppleDictionary
	#tag Method, Flags = &h0, Description = 52657475726E732074686520646F75626C652076616C7565206F6620612064696374696F6E617279E2809973206B65792E
		Function Doublevalue(Key As KVOValueKind) As double
		  dim mynumber as AppleNumber = KVONumber (KVOConstant(key))
		  if mynumber <> nil then Return mynumber.DoubleValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520646F75626C652076616C7565206F6620612064696374696F6E617279E2809973206B65792E
		Function IntegerValue(Key As KVOValueKind) As Integer
		  dim mynumber as AppleNumber = KVONumber (KVOConstant(key))
		  if mynumber <> nil then Return mynumber.IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function KVOConstant(Key As KVOValueKind) As text
		  select case key
		  case KVOValueKind.Indexes
		    return NSKeyValueChangeIndexesKey
		  case KVOValueKind.Kind
		    return NSKeyValueChangeKindKey
		  case KVOValueKind.NewValue
		    return NSKeyValueChangeNewKey
		  case KVOValueKind.NotificationIsPrior
		    return NSKeyValueChangeNotificationIsPriorKey
		  case KVOValueKind.OldValue
		    return NSKeyValueChangeOldKey
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function KVONumber(Key As CFStringRef) As Applenumber
		  return AppleNumber.MakefromPtr(me.PtrForKey(key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As iOSLibKeyValueChangeDictionary
		  return if (aptr = nil, nil, new iOSLibKeyValueChangeDictionary(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073696E676C652076616C7565206F6620612064696374696F6E617279E2809973206B65792E
		Function SingleValue(Key As KVOValueKind) As Single
		  dim mynumber as AppleNumber = KVONumber (KVOConstant(key))
		  if mynumber <> nil then Return mynumber.SingleValue
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Note
			return NSKeyValueChange (IntegerValue(KVOValueKind.Kind))
		#tag EndNote
		KeyValueChangeKind As NSKeyValueChange
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("NSKeyValueChangeIndexesKey", FoundationPath)
			  return result
			End Get
		#tag EndGetter
		Private Shared NSKeyValueChangeIndexesKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("NSKeyValueChangeKindKey", FoundationPath)
			  return result
			End Get
		#tag EndGetter
		Private Shared NSKeyValueChangeKindKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("NSKeyValueChangeNewKey", FoundationPath)
			  return result
			End Get
		#tag EndGetter
		Private Shared NSKeyValueChangeNewKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("NSKeyValueChangeNotificationIsPriorKey", FoundationPath)
			  return result
			End Get
		#tag EndGetter
		Private Shared NSKeyValueChangeNotificationIsPriorKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("NSKeyValueChangeOldKey", FoundationPath)
			  return result
			End Get
		#tag EndGetter
		Private Shared NSKeyValueChangeOldKey As text
	#tag EndComputedProperty


	#tag Enum, Name = KVOValueKind, Type = Integer, Flags = &h0
		Kind
		  NewValue
		  OldValue
		  Indexes
		NotificationIsPrior
	#tag EndEnum

	#tag Enum, Name = NSKeyValueChange, Type = Integer, Flags = &h0
		Setting = 1
		  Insertion = 2
		  Removal = 3
		Replacement = 4
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyValueChangeKind"
			Group="Behavior"
			Type="NSKeyValueChange"
			EditorType="Enum"
			#tag EnumValues
				"1 - Setting"
				"2 - Insertion"
				"3 - Removal"
				"4 - Replacement"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
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
