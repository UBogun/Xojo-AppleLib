#tag Class
Protected Class SecurityKey
Inherits AppleCFObject
	#tag Method, Flags = &h0
		Function DecryptText(Byref CipherText as Text, Padding as SecurityPadding = Securitypadding.PKCS1) As Int32
		  dim mb as  MemoryBlock
		  mb = TextEncoding.UTF8.ConvertTextToData(CipherText)
		  
		  dim DecryptedBlock as new MutableMemoryBlock (mb.size)
		  dim size as integer = mb.size
		  dim result as int32 = secKeyDecrypt (mCFTypeRef, Padding, mb.Data, mb.Size, DecryptedBlock.Data, size)
		  CipherText = TextEncoding.ASCII.ConvertDataToText (DecryptedBlock)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EncryptText(Byref PlainText as Text, Padding as SecurityPadding = Securitypadding.PKCS1) As Int32
		  dim mb as  MemoryBlock
		  mb = TextEncoding.UTF8.ConvertTextToData(plaintext)
		  
		  dim EncryptedBlock as new MutableMemoryBlock (mb.size)
		  dim size as integer = mb.size
		  dim result as int32 = secKeyEncrypt (mCFTypeRef, Padding, mb.Data, mb.Size, EncryptedBlock.Data, size)
		  PlainText = TextEncoding.ASCII.ConvertDataToText (EncryptedBlock)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GenerateKeypair(Parameters as AppleDictionary, PublicKey as SecurityKey, PrivateKey as SecurityKey) As Int32
		  // Calling the overridden superclass constructor.
		  return SecKeyGeneratePair (Parameters.id, PublicKey.mcftyperef, privateKey.mcftyperef)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecKeyDecrypt Lib SecurityLibName (key as ptr, padding as SecurityPadding, CipherText as Ptr, CipherTextLength as Integer, PlainText as Ptr, Byref PlainTextLength as Integer) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecKeyEncrypt Lib SecurityLibName (key as ptr, padding as SecurityPadding, PlainText as Ptr, PlainTextLength as Integer, CipherText as Ptr, Byref CipherTextLength as Integer) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecKeyGeneratePair Lib SecurityLibName (dict as ptr, publicKey as ptr, PrivateKey as Ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecKeyGetBlockSize Lib SecurityLibName (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecKeyGetTypeID Lib SecurityLibName (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecKeyRawSign Lib SecurityLibName (key as ptr, padding as SecurityPadding, DataToSign as Ptr, DataLength as Integer, Signature as Ptr, Byref SignatureLength as Integer) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecKeyRawVerify Lib SecurityLibName (key as ptr, padding as SecurityPadding, SignedData as Ptr, SignedLength as Integer, Signature as Ptr, SignatureLength as Integer) As int32
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Sign(SignText as Text, Signature As text, Padding as SecurityPadding = Securitypadding.None) As Int32
		  dim mb as  MemoryBlock
		  mb = TextEncoding.UTF8.ConvertTextToData(SignText)
		  
		  dim SignBlock as new MutableMemoryBlock (mb.size)
		  dim size as integer = mb.size
		  dim result as int32 = secKeyRawSign (mCFTypeRef, Padding, mb.Data, mb.Size, Signblock.Data, size)
		  Signature = TextEncoding.ASCII.ConvertDataToText (SignBlock)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Verify(SignedData as Text, Signature As text, Padding as SecurityPadding = Securitypadding.None) As Int32
		  dim mb as  MemoryBlock
		  mb = TextEncoding.ASCII.ConvertTextToData(SignedData)
		  
		  dim SignBlock as MemoryBlock
		  signblock = TextEncoding.ascii.ConvertTextToData(Signature)
		  dim result as int32 = secKeyRawVerify (mCFTypeRef, Padding, mb.Data, mb.Size, Signblock.Data, SignBlock.size)
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return SecKeyGetBlockSize (mCFTypeRef)
			End Get
		#tag EndGetter
		BlockSize As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static kConst as text = SystemConstantName (kSecPrivateKeyAttrs, SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		DictionaryKeyPrivate As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static kConst as text = SystemConstantName (kSecPublicKeyAttrs, SecurityPath)
			  return kConst
			End Get
		#tag EndGetter
		DictionaryKeyPublic As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return SecKeyGetTypeID (mCFTypeRef)
			End Get
		#tag EndGetter
		TypeID As UInteger
	#tag EndComputedProperty


	#tag Constant, Name = kSecPrivateKeyAttrs, Type = Text, Dynamic = False, Default = \"kSecPrivateKeyAttrs", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSecPublicKeyAttrs, Type = Text, Dynamic = False, Default = \"kSecPublicKeyAttrs", Scope = Private
	#tag EndConstant


	#tag Enum, Name = SecurityPadding, Type = UInt32, Flags = &h0
		None = 0
		  PKCS1 = 1
		  PKCS1MD2 = &h8000
		  PKCS1MD5 = &h8001
		PKCS1SHA1 = &h8002
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="BlockSize"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DictionaryKeyPrivate"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DictionaryKeyPublic"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
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
			Type="Boolean"
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
			Type="Integer"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
