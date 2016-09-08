#tag Class
Protected Class AppleCGImage
Inherits AppleCFObject
	#tag Method, Flags = &h0
		Shared Function MakeFromCFTypeRef(aCFTypeRef as ptr) As AppleCGImage
		  return if (aCFTypeRef = nil, nil, new AppleCGImage(aCFTypeRef))
		End Function
	#tag EndMethod


End Class
#tag EndClass
