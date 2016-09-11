#tag Class
Protected Class AppleSKTextureAtlas
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function atlasNamed Lib SpriteKitLibName Selector "atlasNamed:" (id as ptr, atlasName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function atlasWithDictionary Lib SpriteKitLibName Selector "atlasWithDictionary:" (id as ptr, dict as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub CompletionHandlerTemplate(ErrPtr as Ptr, found as Ptr)
		  // Template for the PreloadTextureAtlases shared method:
		  
		  dim Error as AppleError = AppleError.MakefromPtr(errPtr)
		  dim FoundAtlases As AppleArray = AppleArray.MakeFromPtr(found)
		  
		  #Pragma unused error
		  #Pragma unused FoundAtlases
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720746578747572652061746C6173206F626A6563742066726F6D206120736574206F6620696D6167652066696C65732E20546865206B65797320726570726573656E7420746865206E616D6573206F662074686520696E646976756475616C20746578747572657320616E642074686569722076616C7565732063616E2062650A2D2061204346537472696E675265662077697468207468652066696C65207061746820746F207468652066696C65207468617420636F6E7461696E73206120746578747572650A2D2061204170706C6555524C206F626A656374206F720A2D2061204170706C65496D616765
		Sub Constructor(AtlasDict as AppleDictionary)
		  super.Constructor (atlasWithDictionary (ClassPtr, AtlasDict.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E2061746C61732066726F6D20646174612073746F72656420696E20746865206170702062756E646C652E
		Sub Constructor(atlasname as CFStringRef)
		  super.Constructor (atlasNamed (ClassPtr, atlasname))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextureNamed Lib SpriteKitLibName Selector "textureNamed:" (id as ptr, textureName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextureNames Lib SpriteKitLibName Selector "textureNames" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4C6F6164207468652061746C6173E280997320746578747572657320696E746F206D656D6F72792C2063616C6C696E67206120636F6D706C6574696F6E2068616E646C657220616674657220746865207461736B20636F6D706C657465732E2054686520436F6D706C6574696F6E426C6F636B206D7573742074616B6520616E642072657475726E206E6F20706172616D65746572732E
		Sub Preload(CompletionBlock As AppleBlock)
		  preloadWithCompletionHandler mid, CompletionBlock.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F61647320616C6C2061746C617365732077686F7365206E616D6573206172652073746F726564206173204346537472696E675265667320696E20616E204170706C65417272617920696E746F206D656D6F727920616E642063616C6C73206120626C6F636B206F6E636520697420697320646F6E652E205365652074686520436F6D706C6574696F6E48616E646C657254656D706C61746520666F72206974732073747563747572652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Sub PreloadTextureAtlases(atlases as AppleArray, CompletionBlock As AppleBlock)
		  if RespondsToSelector("preloadTextureAtlasesNamed:withCompletionHandler:", classptr) then preloadTextureAtlasesNamed ( classptr, atlases.id, CompletionBlock.Handle)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub preloadTextureAtlasesNamed Lib SpriteKitLibName Selector "preloadTextureAtlasesNamed:withCompletionHandler:" (id as ptr, atlases as ptr, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub preloadWithCompletionHandler Lib SpriteKitLibName Selector "preloadWithCompletionHandler:" (id as ptr, block as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120746578747572652066726F6D20646174612073746F72656420696E2074686520746578747572652061746C61732E
		Function TextureNamed(TextureName as CFStringRef) As AppleSKTexture
		  return AppleSKTexture.MakeFromPtr (gettextureNamed(mid, TextureName))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKTextureAtlas")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D6573206F6620746865207465787475726520696D616765732073746F72656420696E207468652061746C61732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (gettextureNames(mid))
			End Get
		#tag EndGetter
		TextureNames As AppleArray
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
