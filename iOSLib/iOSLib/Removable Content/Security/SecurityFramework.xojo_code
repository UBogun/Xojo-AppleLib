#tag Module
Protected Module SecurityFramework
	#tag Method, Flags = &h0
		Function DeleteKeychainItem(Service As Text, Account as Text) As int32
		  dim dict as  AppleKeychainItem = MakeQueryKeychainItem(service, account)
		  return SecItemDelete (dict.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakeQueryKeychainItem(Service As Text, Account as Text) As AppleKEychainItem
		  dim dict as new AppleKeychainItem
		  dict.ItemClass = AppleKeychainItem.KeychainItemClass.GenericPassword
		  dict.ServiceName = Service
		  dict.Account = Account
		  return dict
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OSStatusErrorText(OSStatus as Int32) As Text
		  dim errtext as text
		  select case OSStatus
		  case 0
		    errtext = errSecSuccess
		  case -1
		    errtext = errSecUnimplemented
		  case -50
		    errtext = errSecParam
		  case -108
		    errtext = errSecAllocate
		  case -25291
		    errtext = errSecNotAvailable
		  case -25293
		    errtext = errSecAuthFailed
		  case -25299
		    errtext = errSecDuplicateItem
		  case -25300
		    errtext = errSecItemNotFound
		  case -25308
		    errtext = errSecInteractionNotAllowed
		  case-26275
		    errtext = errSecDecode
		  end select
		  if not errtext.Empty then errtext = errtext +"."
		  return errtext
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 547269657320746F207265616420746865206B6579636861696E6974656D20736176656420756E64657220736572766963656E616D6520616E64206163636F756E742E
		Function ReadKeychainitem(Service As Text, Account as Text) As AppleKeychainItem
		  dim result as int32 
		  dim resultdict as Applekeychainitem = ReadKeychainitem (Service, Account, result)
		  return resultDict
		  #Pragma unused result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 547269657320746F207265616420746865206B6579636861696E6974656D20736176656420756E64657220736572766963656E616D6520616E64206163636F756E742E
		Function ReadKeychainitem(Service As Text, Account as Text, byref result as int32) As AppleKeychainItem
		  dim dict as  AppleKeychainItem = MakeQueryKeychainItem(service, account)
		  dict.ReturnValue = AppleKeychainItem.KeyChainReturnAttribute.KeychainItem
		  
		  dim resultDict as  AppleKeychainItem
		  result  = dict.GetKeychainItem (resultdict)
		  
		  if result = 0 then
		    dict.ReturnValue = AppleKeychainItem.KeyChainReturnAttribute.Data
		    dim pwData as new AppleData
		    result = dict.GetKeychainData(pwData)
		    if result = 0 then resultDict.Password = AppleString.DataToCFSTringRef (pwdata)
		  end if
		  
		  return resultDict
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function SecItemAdd Lib SecurityLibname (attributeDict as ptr, byref resultDict as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function SecItemCopyMatching Lib SecurityLibname (queryDict as ptr, byref resultDict as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function SecItemDelete Lib SecurityLibname (queryDict as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function SecItemUpdate Lib SecurityLibname (queryDict as ptr, updatedict as ptr) As Int32
	#tag EndExternalMethod


	#tag Constant, Name = errSecAllocate, Type = Text, Dynamic = False, Default = \"Failed to allocate memory", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecAuthFailed, Type = Text, Dynamic = False, Default = \"Authorization/Authentication failed", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecDecode, Type = Text, Dynamic = False, Default = \"Unable to decode the provided data", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecDuplicateItem, Type = Text, Dynamic = False, Default = \"The item already exists", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecInteractionNotAllowed, Type = Text, Dynamic = False, Default = \"Interaction with the Security Server is not allowed", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecItemNotFound, Type = Text, Dynamic = False, Default = \"The item cannot be found", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecNotAvailable, Type = Text, Dynamic = False, Default = \"No trust results are available", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecParam, Type = Text, Dynamic = False, Default = \"Parameter(s) invalid", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecSuccess, Type = Text, Dynamic = False, Default = \"Success", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errSecUnimplemented, Type = Text, Dynamic = False, Default = \"Function or operation not implemented", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSecAttrComment, Type = Text, Dynamic = False, Default = \"kSecAttrComment", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SecurityLibname, Type = Text, Dynamic = False, Default = \"Security.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SecurityPath, Type = Text, Dynamic = False, Default = \"com.apple.Security", Scope = Public
	#tag EndConstant


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
End Module
#tag EndModule
