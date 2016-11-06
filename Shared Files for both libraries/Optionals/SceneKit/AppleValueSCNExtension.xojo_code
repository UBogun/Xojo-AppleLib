#tag Module
Protected Module AppleValueSCNExtension
	#tag Method, Flags = &h0
		Function SCNVector3Value(extends v as AppleValue) As SCNVector3
		  return SceneKitFrameWork.getSCNVector3Value(v.Id)
		End Function
	#tag EndMethod


End Module
#tag EndModule
