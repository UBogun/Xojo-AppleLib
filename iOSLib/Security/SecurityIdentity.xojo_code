#tag Class
Protected Class SecurityIdentity
Inherits AppleCFObject
	#tag Method, Flags = &h0
		Function Certificate(Certificate as SecurityCertificate) As Int32
		  dim CertRef as ptr
		  dim result as int32 = SecIdentityCopyCertificate (mcftyperef, certref)
		  if result = 0 then
		    Certificate = new SecurityCertificate (certref)
		    Certificate.mHasOwnership = true
		  end if
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function PKCS12Import(PKCS12Data as AppleData, options as AppleDictionary,  byref items as Applearray) As Int32
		  dim itemRef as ptr
		  dim result as int32 = SecPKCS12Import (PKCS12Data.Id, options.id, itemRef)
		  items = AppleArray.MakeFromPtr (itemref)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PrivateKey(PrivateKey as SecurityKey) As Int32
		  dim CertRef as ptr
		  dim result as int32 = SecIdentityCopyPrivateKey (mcftyperef, certref)
		  if result = 0 then
		    PrivateKey = new SecurityKey (certref)
		    PrivateKey.mHasOwnership = true
		  end if
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecIdentityCopyCertificate Lib SecurityLibName (id as ptr, byref CertRef as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecIdentityCopyPrivateKey Lib SecurityLibName (id as ptr, byref SecKey as ptr) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function SecPKCS12Import Lib SecurityLibName (PKCS12Data as ptr, Options as ptr, ArrayRef as ptr) As int32
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mText as text = SystemConstantName ("kSecImportItemIdentity", SecurityPath)
			  return mtext
			End Get
		#tag EndGetter
		Shared PKS12ImportKeyidentity As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mText as text = SystemConstantName ("kSecImportItemKeyID", SecurityPath)
			  return mtext
			End Get
		#tag EndGetter
		Shared PKS12ImportKeyKeyID As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kSecImportItemLabel", SecurityPath)
			  return mtext
			End Get
		#tag EndGetter
		Shared PKS12ImportKeyLabel As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mText as text = SystemConstantName ("kSecImportItemTrust", SecurityPath)
			  return mtext
			End Get
		#tag EndGetter
		Shared PKS12ImportKeyTrust As Text
	#tag EndComputedProperty


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
