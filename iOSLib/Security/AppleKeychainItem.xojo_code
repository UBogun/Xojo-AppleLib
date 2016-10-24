#tag Class
Protected Class AppleKeychainItem
Inherits AppleMutableDictionary
	#tag Method, Flags = &h0, Description = 547269657320746F2061646420746865206974656D20746F20746865206B6579636861696E20616E642072657475726E73206120726573756C742E2030206966207375636365737366756C2E
		Function AddItem() As int32
		  dim resultptr as ptr
		  dim result as int32  = SecurityFramework.SecItemAdd(self.id, resultptr)
		  #pragma unused resultptr
		  if result <> 0 then RaiseEvent Error(result)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E65772C20656D707479204B6579636861696E6974656D2E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Capacity as uinteger = 1) -- From AppleMutableDictionary
		  // Constructor() -- From AppleDictionary
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)))
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetKeychainData(byref item as AppleData) As int32
		  dim resultptr as ptr
		  dim result as int32   = SecurityFramework.SecItemCopyMatching(self.id, resultptr)
		  item= new AppleData (resultptr)
		  if result <> 0 then RaiseEvent Error(result)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetKeychainItem(byref item as AppleKeychainItem) As int32
		  dim resultptr as ptr
		  dim result as int32   = SecurityFramework.SecItemCopyMatching(self.id, resultptr)
		  item  =  AppleKeychainItem.MakeFromPtr (resultptr)
		  if result <> 0 then RaiseEvent Error(result)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleKeychainItem
		  return if (aptr = nil, nil, new AppleKeychainItem(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F64696669657320746865205F4D617463684C696D69745F204B6579206F662061206B6579636861696E6974656D207573656420666F72207175657269657320746F2072657475726E20616E2061727261792028616C6C206D61746368696E67206B6579636861696E6974656D733B20536561726368416C6C203D2074727565292C2031206974656D2028536561726368416C6C203D2066616C73652C204C696D6974203D203129206F722061206365727461696E206E756D6265722E204E6F742075736566756C2063757272656E746C79206173207468657265206973206E6F20636F6E76656E69656E6365206D6574686F642068616E646C696E6720616E206172726179206F66206B6579636861696E6974656D73207965742E20
		Sub setMatchLimit(searchAll as boolean, limit as integer = 0)
		  if searchAll then
		    setMatchLimit (kMatchLimitAll)
		  elseif limit < 2 then
		    setMatchLimit (kMatchLimitOne)
		  else
		    dim num as new AppleNumber(limit)
		    setMatchLimit (num.id)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 4D6F64696669657320746865205F4D617463684C696D69745F204B6579206F662061206B6579636861696E6974656D207573656420666F72207175657269657320746F2072657475726E20616E2061727261792028616C6C206D61746368696E67206B6579636861696E6974656D733B20536561726368416C6C203D2074727565292C2031206974656D2028536561726368416C6C203D2066616C73652C204C696D6974203D203129206F722061206365727461696E206E756D6265722E204E6F742075736566756C2063757272656E746C79206173207468657265206973206E6F20636F6E76656E69656E6365206D6574686F642068616E646C696E6720616E206172726179206F66206B6579636861696E6974656D73207965742E20
		Attributes( hidden ) Private Sub setMatchLimit(value as ptr)
		  me.PtrForKey(kMatchLimit) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 547269657320746F206D6F6469667920746865206B6579636861696E6974656D2069742067657473206166746572207175657279696E6720776974682074686520636F6E74656E74206F66207468652063757272656E74204B6579636861696E4974656D2E2054686973206974656D206D757374206F6E6C7920636F6E7461696E20227265616C22206B6579636861696E646174612C206E6F206D65746164617461206C696B65205F536572766963654E616D655F206F72205F4163636F756E745F2E2052657475726E73206120526573756C742C2030206966207375636365737366756C2E
		Function UpdateItem(query as AppleKeychainItem) As int32
		  dim result as int32  = SecurityFramework.SecItemUpdate(query.id, self.id)
		  if result <> 0 then RaiseEvent Error(result)
		  return result
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061204B6579636861696E206D6574686F642072657475726E7320616E206572726F722E
		Event Error(error as int32)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeAccessGroup) <> nil then return me.TextForKey(kAttributeAccessGroup)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeAccessGroup) = value
			End Set
		#tag EndSetter
		AccessGroup As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case me.PtrForKey(kAttributeAccessible)
			  case kAccessibleAfterFirstUnlock
			    return KeychainAccessibility.AfterFirstUnlock
			  case kAccessibleAfterFirstUnlockThisDeviceOnly
			    return KeychainAccessibility.AfterFirstUnlockThisDeviceOnly
			  case kAccessibleAlways
			    return KeychainAccessibility.Always
			  case kAccessibleWhenPasscodeSetThisDeviceOnly
			    return KeychainAccessibility.WhenPasscodeSetThisDeviceOnly
			  case kAccessibleAlwaysThisDeviceOnly
			    return KeychainAccessibility.AlwaysThisDeviceOnly
			  case kAccessibleWhenUnlocked
			    return KeychainAccessibility.WhenUnlocked
			  case kAccessibleWhenUnlockedThisDeviceOnly
			    return KeychainAccessibility.WhenUnlockedThisDeviceOnly
			  else
			    return KeychainAccessibility.undefined
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case KeychainAccessibility.AfterFirstUnlock
			    me.PtrForKey(kAttributeAccessible) = kAccessibleAfterFirstUnlock
			  case KeychainAccessibility.AfterFirstUnlockThisDeviceOnly
			    me.PtrForKey(kAttributeAccessible) = kAccessibleAfterFirstUnlockThisDeviceOnly
			  case KeychainAccessibility.Always
			    me.PtrForKey(kAttributeAccessible) = kAccessibleAlways
			  case KeychainAccessibility.WhenPasscodeSetThisDeviceOnly
			    me.PtrForKey(kAttributeAccessible) = kAccessibleWhenPasscodeSetThisDeviceOnly
			  case KeychainAccessibility.AlwaysThisDeviceOnly
			    me.PtrForKey(kAttributeAccessible) = kAccessibleAlwaysThisDeviceOnly
			  case KeychainAccessibility.WhenUnlocked
			    me.PtrForKey(kAttributeAccessible) = kAccessibleWhenUnlocked
			  case KeychainAccessibility.WhenUnlockedThisDeviceOnly
			    me.PtrForKey(kAttributeAccessible) = kAccessibleWhenUnlockedThisDeviceOnly
			  else
			    if me.PtrForKey(kAttributeAccessible) <> nil then 
			      me.RemoveObject (kAttributeAccessible)
			    end if
			  end select
			End Set
		#tag EndSetter
		Accessibility As keychainaccessibility
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206163636F756E74206E616D6520666F72205365637572697479206163636573732E
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeAccount) <> nil then return me.TextForKey(kAttributeAccount)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeAccount) = value
			End Set
		#tag EndSetter
		Account As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeApplicationLabel) <> nil then return me.TextForKey(kAttributeApplicationLabel)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeApplicationLabel) = value
			End Set
		#tag EndSetter
		ApplicationLabel As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if ApplicationTagData <> nil then return ApplicationTagData.ToText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ApplicationTagData = value.toAppleData
			End Set
		#tag EndSetter
		ApplicationTag As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return appledata.MakefromPtr(me.PtrForKey(kAttributeApplicationTag))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kAttributeApplicationTag) = value
			End Set
		#tag EndSetter
		Protected ApplicationTagData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case me.PtrForKey(kAttributeAuthenticationType)
			  case kAuthenticationTypeDefault
			    return KeychainAuthenticationType.Default
			  case kAuthenticationTypeNTLM
			    return KeychainAuthenticationType.NTLM
			  case kAuthenticationTypeMSN
			    return KeychainAuthenticationType.MSN
			  case kAuthenticationTypeDPA
			    return KeychainAuthenticationType.DPA
			  case kAuthenticationTypeRPA
			    return KeychainAuthenticationType.RPA
			  case kAuthenticationTypeHTTPBasic
			    return KeychainAuthenticationType.HTTPBasic
			  case kAuthenticationTypeHTTPDigest
			    return KeychainAuthenticationType.HTTPDigest
			  case kAuthenticationTypeHTMLForm
			    return KeychainAuthenticationType.HTMLForm
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case KeychainAuthenticationType.NTLM
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeNTLM
			  case KeychainAuthenticationType.MSN
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeMSN
			  case KeychainAuthenticationType.DPA
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeDPA
			  case KeychainAuthenticationType.RPA
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeRPA
			  case KeychainAuthenticationType.HTTPBasic
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeHTTPBasic
			  case KeychainAuthenticationType.HTMLForm
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeHTMLForm
			  case KeychainAuthenticationType.HTTPDigest
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeHTTPDigest
			  case KeychainAuthenticationType.Default
			    me.PtrForKey(kAttributeAuthenticationType) = kAuthenticationTypeDefault
			  end select
			End Set
		#tag EndSetter
		AuthenticationType As KeychainAuthenticationType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeCanDecrypt) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeCanDecrypt) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeCanDecrypt) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		CanDecrypt As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeCanDerive) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeCanDerive) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeCanDerive) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		CanDerive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeCanEncrypt) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeCanEncrypt) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeCanEncrypt) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		CanEncrypt As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeCanSign) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeCanSign) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeCanSign) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		CanSign As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeCanUnwrap) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeCanUnwrap) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeCanUnwrap) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		CanUnwrap As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeCanVerify) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeCanVerify) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeCanVerify) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		CanVerify As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeCanWrap) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeCanWrap) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeCanWrap) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		CanWrap As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleNumber.MakefromPtr(PtrForKey(kAttributeCertificateEncoding)).IntegerValue
			End Get
		#tag EndGetter
		CertificateEncoding As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if CertificateIssuerData <> nil then return CertificateIssuerData.ToText
			End Get
		#tag EndGetter
		CertificateIssuer As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return appledata.MakefromPtr(me.PtrForKey(kAttributeIssuer))
			End Get
		#tag EndGetter
		Protected CertificateIssuerData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if CertificatePublikKeyHashData <> nil then return CertificatePublikKeyHashData.ToText
			End Get
		#tag EndGetter
		CertificatePublicKeyHash As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return appledata.MakefromPtr(me.PtrForKey(kAttributePublicKeyHash))
			End Get
		#tag EndGetter
		Protected CertificatePublikKeyHashData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if CertificateSerialNumberData <> nil then return CertificateSerialNumberData.ToText
			End Get
		#tag EndGetter
		CertificateSerialNumber As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return appledata.MakefromPtr(me.PtrForKey(kAttributeSerialNumber))
			End Get
		#tag EndGetter
		Protected CertificateSerialNumberData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if CertificateSubjectData <> nil then return CertificateSubjectData.ToText
			End Get
		#tag EndGetter
		CertificateSubject As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return appledata.MakefromPtr(me.PtrForKey(kAttributeSubject))
			End Get
		#tag EndGetter
		Protected CertificateSubjectData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.PtrForKey(kAttributeSubjectKeyID)
			End Get
		#tag EndGetter
		CertificateSubjectKeyID As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleNumber.MakefromPtr(PtrForKey(kAttributeCertificateType)).IntegerValue
			End Get
		#tag EndGetter
		CertificateType As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C20636F6D6D656E742E20
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeComment) <> nil then return me.TextForKey(kAttributeComment)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeComment) = value
			End Set
		#tag EndSetter
		Comment As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey(kAttributeCreationDate) <> nil then
			    dim result as new AppleDate(PtrForKey(kAttributeCreationDate))
			    return result.toCoreDate
			  end if
			End Get
		#tag EndGetter
		CreationDate As xojo.Core.Date
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey(kAttributeCreator) <> nil then
			    dim result as new AppleNumber(PtrForKey(kAttributeCreator))
			    dim IntResult as int32= result.Int32Value
			    return IntResult.toOSType
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value.Length = 4 then
			    me.TextForKey(kAttributeCreator) =value
			  end if
			End Set
		#tag EndSetter
		Attributes( incomplete = "should be OSType" ) CreatorCode As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C20646573637269707469766520746578742E2020
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeDescription) <> nil then return me.TextForKey(kAttributeDescription)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeDescription) = value
			End Set
		#tag EndSetter
		Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey(kAttributeEffectiveKeySize) <> nil then
			    dim result as new AppleNumber(PtrForKey(kAttributeEffectiveKeySize))
			    return result.IntegerValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kAttributeEffectiveKeySize) =new AppleNumber(value)
			  
			End Set
		#tag EndSetter
		EffectiveKeySize As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeGeneric) <> nil then return appledata.MakefromPtr (me.PtrForKey(kAttributeGeneric))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kAttributeGeneric) = value
			End Set
		#tag EndSetter
		GenericUserDefinedAttribute As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kImportExportPassphrase) <> nil then return me.TextForKey(kImportExportPassphrase)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kImportExportPassphrase) = value
			End Set
		#tag EndSetter
		ImportExportPassphrase As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kAttributePath) <> nil then return me.TextForKey(kAttributePath)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributePath) = value
			End Set
		#tag EndSetter
		InternetPath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey(kAttributePort) <> nil then
			    dim result as new AppleNumber(PtrForKey(kAttributePort))
			    dim IntResult as Int64 = result.Int64Value
			    return IntResult
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kAttributePort) =new AppleNumber(value)
			  
			End Set
		#tag EndSetter
		InternetPort As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeSecurityDomain) <> nil then return me.TextForKey(kAttributeSecurityDomain)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeSecurityDomain) = value
			End Set
		#tag EndSetter
		InternetSecurityDomain As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeInvisible) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeInvisible) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeInvisible) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		Invisible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case me.ItemClassText
			  case ItemClassCertificate
			    return KeychainItemClass.Certificate
			  case ItemClassIdentity
			    return KeychainItemClass.Identity
			  case ItemClassValueInternetPassword
			    return KeychainItemClass.InternetPassword
			  case ItemClassValueGenericPassword
			    return KeychainItemClass.GenericPassword
			  case ItemClassKeyConstant
			    return KeychainItemClass.Key
			  else
			    return KeychainItemClass.undefined
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case KeychainItemClass.Certificate
			    ItemClassText = ItemClassCertificate
			  case KeychainItemClass.Identity
			    ItemClassText = ItemClassIdentity
			  case KeychainItemClass.InternetPassword
			    ItemClassText = ItemClassValueInternetPassword
			  case KeychainItemClass.GenericPassword
			    ItemClassText = ItemClassValueGenericPassword
			  case KeychainItemClass.Key
			    ItemClassText = ItemClassKeyConstant
			  Else
			    ItemClassText = ""
			  end select
			End Set
		#tag EndSetter
		ItemClass As KeychainItemClass
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as text = SystemConstantName ("kSecClassCertificate", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared ItemClassCertificate As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as text = SystemConstantName ("kSecClassIdentity", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared ItemClassIdentity As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as text = SystemConstantName ("kSecClass", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared ItemClassKeyConstant As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kItemClassKey) <> nil then return me.TextForKey(kItemClassKey)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kItemClassKey) = value
			End Set
		#tag EndSetter
		ItemClassText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as text = SystemConstantName ("kSecClassGenericPassword", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared ItemClassValueGenericPassword As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as text = SystemConstantName ("kSecClassInternetPassword", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared ItemClassValueInternetPassword As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessibleAfterFirstUnlock", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAccessibleAfterFirstUnlock As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAccessibleAfterFirstUnlockThisDeviceOnly As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessibleAlways", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAccessibleAlways As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessibleAlwaysThisDeviceOnly", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAccessibleAlwaysThisDeviceOnly As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAccessibleWhenPasscodeSetThisDeviceOnly As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessibleWhenUnlocked", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAccessibleWhenUnlocked As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessibleWhenUnlockedThisDeviceOnly", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAccessibleWhenUnlockedThisDeviceOnly As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAccessGroup", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeAccessGroup As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrAccessible", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeAccessible As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantptr ("kSecAttrAccount", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Protected Shared kAttributeAccount As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrApplicationLabel", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeApplicationLabel As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrApplicationTag", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeApplicationTag As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationType", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeAuthenticationType As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCanDecrypt", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCanDecrypt As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCanDerive", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCanDerive As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCanEncrypt", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCanEncrypt As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCanSign", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCanSign As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCanUnwrap", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCanUnwrap As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCanVerify", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCanVerify As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCanWrap", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCanWrap As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCertificateEncoding", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCertificateEncoding As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCertificateType", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCertificateType As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrComment", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeComment As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrCreationDate", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCreationDate As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrCreator", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeCreator As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrDescription", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeDescription As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrEffectiveKeySize", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeEffectiveKeySize As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrGeneric", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeGeneric As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrIsInvisible", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeInvisible As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantptr ("kSecAttrIssuer", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeIssuer As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrKeyClass", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeKeyClass As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrKeySizeInBits", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeKeySizeInBits As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrKeyType", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeKeyType As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrLabel", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeLabel As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrModificationDate", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeModificationDate As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrIsNegative", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeNegative As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrPath", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributePath As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrIsPermanent", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributePermanent As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrPort", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributePort As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocol", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeProtocol As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrPublicKeyHash", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributePublicKeyHash As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrSecurityDomain", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeSecurityDomain As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrSerialNumber", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeSerialNumber As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrServer", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeServer As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrService", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeService As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrSubject", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeSubject As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrSubjectKeyID", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeSubjectKeyID As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrType", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAttributeType As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeDefault", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeDefault As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeDPA", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeDPA As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeHTMLForm", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeHTMLForm As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeHTTPBasic", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeHTTPBasic As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeHTTPDigest", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeHTTPDigest As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeMSN", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeMSN As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeNTLM", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeNTLM As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrAuthenticationTypeRPA", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kAuthenticationTypeRPA As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case me.PtrForKey(kAttributeKeyClass)
			  case KeyClassPrivate
			    return KeychainKeyClass.PrivateKey
			  case KeyClassPublic
			    return KeychainKeyClass.PublicKey
			  case KeyClassSymmetric
			    return KeychainKeyClass.SymmetricKey
			  else
			    return KeychainKeyClass.undefined
			  end select
			End Get
		#tag EndGetter
		KeyClass As KeychainKeyClass
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrKeyClassPrivate", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared KeyClassPrivate As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrKeyClassPublic", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared KeyClassPublic As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrKeyClassSymmetric", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared KeyClassSymmetric As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey(kAttributeKeySizeInBits) <> nil then
			    dim result as new AppleNumber(PtrForKey(kAttributeKeySizeInBits))
			    return result.IntegerValue
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kAttributeKeySizeInBits) =new AppleNumber(value)
			  
			End Set
		#tag EndSetter
		KeySizeInBits As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.TextForKey(kAttributeKeyType) = KeyTypeRSA then
			    return KeychainKeyType.RSA
			  else
			    return KeychainKeyType.undefined
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value =  KeychainKeyType.RSA then
			    me.TextForKey(kAttributeKeyType) =KeyTypeRSA
			  else
			    me.RemoveObject(kAttributeKeyType)
			  end if
			  
			End Set
		#tag EndSetter
		KeyType As KeychainKeyType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as text = SystemConstantName ("kSecAttrKeyTypeRSA", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared KeyTypeRSA As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecImportExportPassphrase", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kImportExportPassphrase As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecClass", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kItemClassKey As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchCaseInsensitive", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchCaseInsensitive As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchEmailAddressIfPresent", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchEMail As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchIssuers", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchIssuers As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchItemList", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchItemList As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchLimit", SecurityPath)
			  // dim num as new AppleNumber(kConst)
			  // return num.IntegerValue
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchLimit As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchLimitAll", SecurityPath)
			  // dim num as new AppleNumber(kConst)
			  // return num.IntegerValue
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchLimitAll As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchLimitOne", SecurityPath)
			  // dim num as new AppleNumber(kConst)
			  // return num.IntegerValue
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchLimitOne As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchPolicy", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchPolicy As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchSearchList", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchSearchList As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchSubjectContains", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchSubjectContains As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchTrustedOnly", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchTrustedOnly As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecMatchValidOnDate", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kMatchValidOnDate As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolAFP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolAFP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecAttrProtocolAppleTalk", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolAppleTalk As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolDAAP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolDAAP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolEPPC", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolEPPC As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolFTP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolFTP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolFTPAccount", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolFTPAccount As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolFTPProxy", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolFTPProxy As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolFTPS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolFTPS As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolHTTP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolHTTP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolHTTPProxy", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolHTTPProxy As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolHTTPS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolHTTPS As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolHTTPSProxy", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolHTTPSProxy As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolIMAP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolIMAP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolIMAPS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolIMAPS As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolIPP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolIPP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolIRC", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolIRC As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolIRCS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolIRCS As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolLDAP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolLDAP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolLDAPS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolLDAPS As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolNNTP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolNNTP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolNNTPS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolNNTPS As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolPOP3", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolPOP3 As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolPOP3S", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolPOP3S As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolRTSP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolRTSP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolRTSPProxy", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolRTSPProxy As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolSMB", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolSMB As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolSMTP", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolSMTP As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolSOCKS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolSOCKS As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolSSH", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolSSH As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolTelnet", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolTelnet As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecAttrProtocolTelnetS", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kProtocolTelnetS As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantptr ("kSecReturnAttributes", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kReturnAttributes As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Note
			k
		#tag EndNote
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecReturnData", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kReturnData As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as Ptr = SystemConstantPtr ("kSecReturnPersistentRef", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kReturnPersistentRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantptr ("kSecReturnRef", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kReturnRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecUseItemList", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kUseItemList As ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecValueData", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kValueData As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecValuePersistentRef", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kValuePersistentRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static kConst as ptr = SystemConstantPtr ("kSecValueRef", SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kValueRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C206C6162656C2E
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeLabel) <> nil then return me.TextForKey(kAttributeLabel)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeLabel) = value
			End Set
		#tag EndSetter
		Label As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kMatchCaseInsensitive) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kMatchCaseInsensitive) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kMatchCaseInsensitive) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		MatchCaseInsensitive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kMatchEMail) <> nil then return me.TextForKey(kMatchEMail)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kMatchEMail) = value
			End Set
		#tag EndSetter
		MatchEMailAddress As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr (PtrForKey(kMatchIssuers))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kMatchIssuers) =value
			End Set
		#tag EndSetter
		MatchIssuers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return PtrForKey(kMatchItemList)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.PtrForKey(kMatchItemList) =value
			End Set
		#tag EndSetter
		MatchItemList As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim limit as ptr = me.PtrForKey(kMatchLimit)
			  if limit <> nil then
			    if limit = kMatchLimitAll then
			      return &hffffffff
			    elseif limit = kMatchLimitOne then
			      return 1
			    else
			      dim num as new AppleNumber(limit)
			      return num.IntegerValue
			    end if
			  else
			    return 1
			  end if
			End Get
		#tag EndGetter
		MatchLimit As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kMatchPolicy) <> nil then return new SecurityPolicy (PtrForKey(kMatchPolicy))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.PtrForKey(kMatchPolicy) = if (value = nil, nil, value.CFTypeRef)
			End Set
		#tag EndSetter
		MatchPolicy As SecurityPolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr (PtrForKey(kMatchSearchList))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kMatchSearchList) =value
			End Set
		#tag EndSetter
		MatchsearchList As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kMatchSubjectContains) <> nil then return me.TextForKey(kMatchSubjectContains)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kMatchSubjectContains) = value
			End Set
		#tag EndSetter
		MatchSubjectContent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kMatchTrustedOnly) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kMatchTrustedOnly) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kMatchTrustedOnly) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		MatchTrustedOnly As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if PtrForKey(kMatchValidOnDate) <> nil then
			    dim ad as new AppleDate(PtrForKey(kMatchValidOnDate))
			    return ad.toCoreDate
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kMatchValidOnDate) =value.toappledate
			End Set
		#tag EndSetter
		MatchValidOnDate As xojo.Core.Date
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey(kAttributeModificationDate) <> nil then
			    dim result as new AppleDate(PtrForKey(kAttributeModificationDate))
			    return result.toCoreDate
			  end if
			End Get
		#tag EndGetter
		ModificationDate As xojo.Core.Date
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributeNegative) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributeNegative) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributeNegative) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		Negative As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070617373776F72642E
		#tag Getter
			Get
			  if me.PtrForKey (kValueData) <> nil then
			    dim myData as appledata = AppleData.MakefromPtr ( me.PtrForKey(kValueData))
			    if mydata <> nil then
			      return AppleString.DataToCFSTringRef (mydata)
			    end if
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kValueData) = value.toAppleData.id
			End Set
		#tag EndSetter
		Password As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.ObjectForKey (kAttributePermanent) = AppleCFBoolean.BooleanTrue then
			    return true
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    me.ObjectForKey (kAttributePermanent) = AppleCFBoolean.BooleanTrue
			  else
			    me.ObjectForKey (kAttributePermanent) = AppleCFBoolean.BooleanFalse
			  end if
			End Set
		#tag EndSetter
		Permanent As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case me.PtrForKey(kAttributeProtocol)
			  case kProtocolFTP
			    return KeyChainProtocol.FTP
			  case kProtocolFTPAccount
			    return KeyChainProtocol.FTPAccount
			  case kProtocolHTTP
			    return KeyChainProtocol.HTTP
			  case kProtocolIRC
			    return KeyChainProtocol.IRC
			  case kProtocolNNTP
			    return KeyChainProtocol.NNTP
			  case kProtocolPOP3
			    return KeyChainProtocol.POP3
			  case kProtocolSMTP
			    return KeyChainProtocol.SMTP
			  case kProtocolSOCKS
			    return KeyChainProtocol.SOCKS
			  case kProtocolIMAP
			    return KeyChainProtocol.IMAP
			  case kProtocolLDAP
			    return KeyChainProtocol.LDAP
			  case kProtocolAppleTalk
			    return KeyChainProtocol.AppleTalk
			  case kProtocolAFP
			    return KeyChainProtocol.AFP
			  case kProtocolTelnet
			    return KeyChainProtocol.Telnet
			  case kProtocolSSH
			    return KeyChainProtocol.SSH
			  case kProtocolFTPS
			    return KeyChainProtocol.FTPS
			  case kProtocolHTTPS
			    return KeyChainProtocol.HTTPS
			  case kProtocolHTTPProxy
			    return KeyChainProtocol.HTTPProxy
			  case kProtocolHTTPSProxy
			    return KeyChainProtocol.HTTPSProxy
			  case kProtocolFTPProxy
			    return KeyChainProtocol.FTPProxy
			  case kProtocolSMB
			    return KeyChainProtocol.SMB
			  case kProtocolRTSP
			    return KeyChainProtocol.RTSP
			  case kProtocolRTSPProxy
			    return KeyChainProtocol.RTSPProxy
			  case kProtocolDAAP
			    return KeyChainProtocol.DAAP
			  case kProtocolEPPC
			    return KeyChainProtocol.EPPC
			  case kProtocolIPP
			    return KeyChainProtocol.IPP
			  case kProtocolNNTPS
			    return KeyChainProtocol.NNTPS
			  case kProtocolLDAPS
			    return KeyChainProtocol.LDAPS
			  case kProtocolTelnetS
			    return KeyChainProtocol.TelnetS
			  case kProtocolIMAPS
			    return KeyChainProtocol.IMAPS
			  case kProtocolIRCS
			    return KeyChainProtocol.IRCS
			  case kProtocolPOP3S
			    return KeyChainProtocol.POP3S
			  else
			    return KeyChainProtocol.undefined
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case KeyChainProtocol.FTP
			    me.PtrForKey(kAttributeProtocol) = kProtocolFTP
			  case KeyChainProtocol.FTPAccount
			    me.PtrForKey(kAttributeProtocol) = kProtocolFTPAccount
			  case KeyChainProtocol.HTTP
			    me.PtrForKey(kAttributeProtocol) = kProtocolHTTP
			  case KeyChainProtocol.IRC
			    me.PtrForKey(kAttributeProtocol) = kProtocolIRC
			  case KeyChainProtocol.NNTP
			    me.PtrForKey(kAttributeProtocol) = kProtocolNNTP
			  case KeyChainProtocol.POP3
			    me.PtrForKey(kAttributeProtocol) = kProtocolPOP3
			  case KeyChainProtocol.SMTP
			    me.PtrForKey(kAttributeProtocol) = kProtocolSMTP
			  case KeyChainProtocol.SOCKS
			    me.PtrForKey(kAttributeProtocol) = kProtocolSOCKS
			  case KeyChainProtocol.IMAP
			    me.PtrForKey(kAttributeProtocol) = kProtocolIMAP
			  case KeyChainProtocol.LDAP
			    me.PtrForKey(kAttributeProtocol) = kProtocolLDAP
			  case KeyChainProtocol.AppleTalk
			    me.PtrForKey(kAttributeProtocol) = kProtocolAppleTalk
			  case KeyChainProtocol.AFP
			    me.PtrForKey(kAttributeProtocol) = kProtocolAFP
			  case KeyChainProtocol.Telnet
			    me.PtrForKey(kAttributeProtocol) = kProtocolTelnet
			  case KeyChainProtocol.SSH
			    me.PtrForKey(kAttributeProtocol) = kProtocolSSH
			  case KeyChainProtocol.FTPS
			    me.PtrForKey(kAttributeProtocol) = kProtocolFTPS
			  case KeyChainProtocol.HTTPS
			    me.PtrForKey(kAttributeProtocol) = kProtocolHTTPS
			  case KeyChainProtocol.HTTPProxy
			    me.PtrForKey(kAttributeProtocol) = kProtocolHTTPProxy
			  case KeyChainProtocol.HTTPSProxy
			    me.PtrForKey(kAttributeProtocol) = kProtocolHTTPSProxy
			  case KeyChainProtocol.FTPProxy
			    me.PtrForKey(kAttributeProtocol) = kProtocolFTPProxy
			  case KeyChainProtocol.SMB
			    me.PtrForKey(kAttributeProtocol) = kProtocolSMB
			  case KeyChainProtocol.RTSP
			    me.PtrForKey(kAttributeProtocol) = kProtocolRTSP
			  case KeyChainProtocol.RTSPProxy
			    me.PtrForKey(kAttributeProtocol) = kProtocolRTSPProxy
			  case KeyChainProtocol.DAAP
			    me.PtrForKey(kAttributeProtocol) = kProtocolDAAP
			  case KeyChainProtocol.EPPC
			    me.PtrForKey(kAttributeProtocol) = kProtocolEPPC
			  case KeyChainProtocol.IPP
			    me.PtrForKey(kAttributeProtocol) = kProtocolIPP
			  case KeyChainProtocol.NNTPS
			    me.PtrForKey(kAttributeProtocol) = kProtocolNNTPS
			  case KeyChainProtocol.LDAPS
			    me.PtrForKey(kAttributeProtocol) = kProtocolLDAPS
			  case KeyChainProtocol.TelnetS
			    me.PtrForKey(kAttributeProtocol) = kProtocolTelnetS
			  case KeyChainProtocol.IMAPS
			    me.PtrForKey(kAttributeProtocol) = kProtocolIMAPS
			  case KeyChainProtocol.IRCS
			    me.PtrForKey(kAttributeProtocol) = kProtocolIRCS
			  case KeyChainProtocol.POP3S
			    me.PtrForKey(kAttributeProtocol) = kProtocolPOP3S
			  else
			    if me.PtrForKey(kAttributeProtocol) <> nil then me.RemoveObject (kAttributeProtocol)
			  end select
			End Set
		#tag EndSetter
		Protocol As KeyChainProtocol
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if ObjectForKey(kReturnAttributes) = AppleCFBoolean.BooleanTrue then
			    return KeyChainReturnAttribute.KeychainItem
			  elseif ObjectForKey(kReturnData) = AppleCFBoolean.BooleanTrue then
			    return KeyChainReturnAttribute.Data
			  elseif ObjectForKey(kReturnPersistentRef) = AppleCFBoolean.BooleanTrue then
			    return KeyChainReturnAttribute.PersistentReference
			  elseif ObjectForKey(kReturnRef) = AppleCFBoolean.BooleanTrue then
			    return KeyChainReturnAttribute.Reference
			  else
			    return KeychainReturnAttribute.undefined
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey(kReturnAttributes) = AppleCFBoolean.BooleanFalse
			  me.ObjectForKey(kReturnData) = AppleCFBoolean.BooleanFalse
			  me.ObjectForKey(kReturnPersistentRef) = AppleCFBoolean.BooleanFalse
			  me.ObjectForKey(kReturnRef) = AppleCFBoolean.BooleanFalse
			  select case value
			  case KeyChainReturnAttribute.KeychainItem
			    me.ObjectForKey(kReturnAttributes) = AppleCFBoolean.BooleanTrue
			  case KeyChainReturnAttribute.Data
			    me.ObjectForKey(kReturnData) = AppleCFBoolean.BooleanTrue
			  case KeyChainReturnAttribute.PersistentReference
			    me.ObjectForKey(kReturnPersistentRef) = AppleCFBoolean.BooleanTrue
			  case KeyChainReturnAttribute.Reference
			    me.ObjectForKey(kReturnRef) = AppleCFBoolean.BooleanTrue
			  end select
			End Set
		#tag EndSetter
		ReturnValue As KeyChainReturnAttribute
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeServer) <> nil then return me.TextForKey(kAttributeServer)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeServer) = value
			End Set
		#tag EndSetter
		ServerDomain As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073657276696365206E616D6520746F20726567697374657220756E6465722E
		#tag Getter
			Get
			  if me.PtrForKey (kAttributeService) <> nil then return me.TextForKey(kAttributeService)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey(kAttributeService) = value
			End Set
		#tag EndSetter
		ServiceName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if me.PtrForKey(kAttributeType) <> nil then
			    dim result as new AppleNumber(PtrForKey(kAttributeType))
			    dim IntResult as int32= result.Int32Value
			    return IntResult.toOSType
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value.Length = 4 then
			    me.TextForKey(kAttributeType) =value
			  end if
			End Set
		#tag EndSetter
		Attributes( incomplete = "should be OSType" ) Type As text
	#tag EndComputedProperty


	#tag Enum, Name = KeychainAccessibility, Type = Integer, Flags = &h0
		AfterFirstUnlock
		  AfterFirstUnlockThisDeviceOnly
		  Always
		  WhenPasscodeSetThisDeviceOnly
		  WhenUnlocked
		  WhenUnlockedThisDeviceOnly
		  AlwaysThisDeviceOnly
		undefined
	#tag EndEnum

	#tag Enum, Name = KeychainAuthenticationType, Type = Integer, Flags = &h0
		Default
		  NTLM
		  MSN
		  DPA
		  RPA
		  HTTPBasic
		  HTTPDigest
		HTMLForm
	#tag EndEnum

	#tag Enum, Name = KeychainItemClass, Type = Integer, Flags = &h0
		GenericPassword
		  InternetPassword
		  Certificate
		  Key
		  Identity
		undefined
	#tag EndEnum

	#tag Enum, Name = KeychainKeyClass, Type = Integer, Flags = &h0
		PublicKey
		  PrivateKey
		  SymmetricKey
		undefined
	#tag EndEnum

	#tag Enum, Name = KeychainKeyType, Type = Integer, Flags = &h0
		RSA
		undefined
	#tag EndEnum

	#tag Enum, Name = KeychainProtocol, Type = Integer, Flags = &h0
		FTP
		  FTPAccount
		  HTTP
		  IRC
		  NNTP
		  POP3
		  SMTP
		  SOCKS
		  IMAP
		  LDAP
		  AppleTalk
		  AFP
		  Telnet
		  SSH
		  FTPS
		  HTTPS
		  HTTPProxy
		  HTTPSProxy
		  FTPProxy
		  SMB
		  RTSP
		  RTSPProxy
		  DAAP
		  EPPC
		  IPP
		  NNTPS
		  LDAPS
		  TelnetS
		  IMAPS
		  IRCS
		  POP3S
		undefined
	#tag EndEnum

	#tag Enum, Name = KeychainReturnAttribute, Type = Integer, Flags = &h0
		Data
		  KeychainItem
		  Reference
		  PersistentReference
		undefined
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessGroup"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Accessibility"
			Group="Behavior"
			Type="keychainaccessibility"
			EditorType="Enum"
			#tag EnumValues
				"0 - AfterFirstUnlock"
				"1 - AfterFirstUnlockThisDeviceOnly"
				"2 - Always"
				"3 - WhenPasscodeSetThisDeviceOnly"
				"4 - WhenUnlocked"
				"5 - WhenUnlockedThisDeviceOnly"
				"6 - AlwaysThisDeviceOnly"
				"7 - undefined"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Account"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ApplicationLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ApplicationTag"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AuthenticationType"
			Group="Behavior"
			Type="KeychainAuthenticationType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - NTLM"
				"2 - MSN"
				"3 - DPA"
				"4 - RPA"
				"5 - HTTPBasic"
				"6 - HTTPDigest"
				"7 - HTMLForm"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDecrypt"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDerive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanEncrypt"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanSign"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanUnwrap"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanVerify"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanWrap"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateEncoding"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateIssuer"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificatePublicKeyHash"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateSerialNumber"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateSubject"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateType"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Comment"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CreatorCode"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EffectiveKeySize"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImportExportPassphrase"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InternetPath"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InternetPort"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InternetSecurityDomain"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Invisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ItemClass"
			Group="Behavior"
			Type="KeychainItemClass"
			EditorType="Enum"
			#tag EnumValues
				"0 - GenericPassword"
				"1 - InternetPassword"
				"2 - Certificate"
				"3 - Key"
				"4 - Identity"
				"5 - undefined"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ItemClassText"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyClass"
			Group="Behavior"
			Type="KeychainKeyClass"
			EditorType="Enum"
			#tag EnumValues
				"0 - PublicKey"
				"1 - PrivateKey"
				"2 - SymmetricKey"
				"3 - undefined"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeySizeInBits"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyType"
			Group="Behavior"
			Type="KeychainKeyType"
			EditorType="Enum"
			#tag EnumValues
				"0 - RSA"
				"1 - undefined"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Label"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MatchCaseInsensitive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MatchEMailAddress"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MatchLimit"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MatchSubjectContent"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MatchTrustedOnly"
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
			Name="Negative"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Permanent"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Protocol"
			Group="Behavior"
			Type="KeyChainProtocol"
			EditorType="Enum"
			#tag EnumValues
				"0 - FTP"
				"1 - FTPAccount"
				"2 - HTTP"
				"3 - IRC"
				"4 - NNTP"
				"5 - POP3"
				"6 - SMTP"
				"7 - SOCKS"
				"8 - IMAP"
				"9 - LDAP"
				"10 - AppleTalk"
				"11 - AFP"
				"12 - Telnet"
				"13 - SSH"
				"14 - FTPS"
				"15 - HTTPS"
				"16 - HTTPProxy"
				"17 - HTTPSProxy"
				"18 - FTPProxy"
				"19 - SMB"
				"20 - RTSP"
				"21 - RTSPProxy"
				"22 - DAAP"
				"23 - EPPC"
				"24 - IPP"
				"25 - NNTPS"
				"26 - LDAPS"
				"27 - TelnetS"
				"28 - IMAPS"
				"29 - IRCS"
				"30 - POP3S"
				"31 - undefined"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReturnValue"
			Group="Behavior"
			Type="KeyChainReturnAttribute"
			EditorType="Enum"
			#tag EnumValues
				"0 - Data"
				"1 - KeychainItem"
				"2 - Reference"
				"3 - PersistentReference"
				"4 - undefined"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ServerDomain"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ServiceName"
			Group="Behavior"
			Type="Text"
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
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
