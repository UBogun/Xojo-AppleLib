#tag Class
Protected Class AppleOperationQueue
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub CancelAllOperations()
		  #If TargetMacOS then
		    Declare Sub cancelAllOperations lib FoundationLibName  selector "cancelAllOperations" (id as ptr)
		    CancelAllOperations id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleOperationQueue
		  return if (aptr <> NIL, new AppleOperationQueue (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WaitUntilFinished()
		  #If TargetMacOS then
		    Declare Sub waitUntilAllOperationsAreFinished lib FoundationLibName  selector "waitUntilAllOperationsAreFinished" (id as ptr)
		    waitUntilAllOperationsAreFinished id
		  #endif
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSOperationQueue")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    Declare function currentQueue lib FoundationLibName  selector "currentQueue" (id as ptr) as ptr
			    dim result as new AppleOperationQueue (currentQueue(classptr))
			    result.RetainClassObject
			    return result
			  #endif
			End Get
		#tag EndGetter
		Shared CurrentQueue As AppleOperationQueue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    
			    static mMainQueue as new AppleOperationQueue
			    if mMainQueue = nil then
			      Declare function mainQueue lib FoundationLibName  selector "mainQueue" (id as ptr) as ptr
			      dim result as new AppleOperationQueue  (mainQueue (ClassPtr))
			      result.RetainClassObject
			      mMainQueue = result
			    end if
			    return mMainQueue
			  #endif
			End Get
		#tag EndGetter
		Shared MainQueue As AppleOperationQueue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    Declare function maxConcurrentOperationCount lib FoundationLibName  selector "maxConcurrentOperationCount" (id as ptr) as Integer
			    return maxConcurrentOperationCount (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    Declare Sub setMaxConcurrentOperationCount lib FoundationLibName  selector "setMaxConcurrentOperationCount:" (id as ptr, value as integer)
			    setMaxConcurrentOperationCount (id, value)
			  #endif
			End Set
		#tag EndSetter
		MaxConcurrentOperationCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return FoundationFrameWork.getName (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    FoundationFrameWork.setname id, value
			  #endif
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    Declare function operationCount lib FoundationLibName  selector "operationCount" (id as ptr) as UInteger
			    return operationCount (id)
			  #endif
			  
			End Get
		#tag EndGetter
		OperationCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    Declare function Operations lib FoundationLibName  selector "operations" (id as ptr) as ptr
			    return AppleArray.MakeFromPtr (Operations(id))
			  #endif
			End Get
		#tag EndGetter
		Operations As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    Declare function isSuspended lib FoundationLibName  selector "isSuspended" (id as ptr) as Boolean
			    return isSuspended (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    Declare Sub setSuspended lib FoundationLibName  selector "setSuspended:" (id as ptr, value as Boolean)
			    setSuspended (id, value)
			  #endif
			End Set
		#tag EndSetter
		Suspended As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    Declare function underlyingQueue lib FoundationLibName  selector "underlyingQueue" (id as ptr) as ptr
			    return AppleObject.MakeFromPtr (underlyingQueue(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    Declare Sub setUnderlyingQueue lib FoundationLibName  selector "setUnderlyingQueue:" (id as ptr, value as Ptr)
			    setUnderlyingQueue (id, value.id)
			  #endif
			End Set
		#tag EndSetter
		UnderlyingQueue As AppleObject
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
			Name="MaxConcurrentOperationCount"
			Group="Behavior"
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
			Name="OperationCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="Suspended"
			Group="Behavior"
			Type="Boolean"
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
