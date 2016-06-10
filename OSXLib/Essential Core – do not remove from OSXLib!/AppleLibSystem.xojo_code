#tag Module
Protected Module AppleLibSystem
	#tag Method, Flags = &h1
		Protected Function DataPointerforName(name as CFStringRef, frameworkID as CFStringRef, suppressException as boolean = false) As Ptr
		  #If TargetMacOS
		    // Implementation courtesy of Jim McKay, with additions from Jason King
		    
		    dim framework As new AppleCFBundle (frameworkID)
		    if framework.isnil then // Used to be Return NIL, but there are some FWs without identifier in my simulator, so let's try them
		      dim identifier as text = frameworkID
		      dim sections() as text = identifier.Split(".")
		      dim compare as text = sections (sections.Ubound)
		      for q as integer = 0 to AppleCFBundle.MainBundle.AllBundles.Count -1
		        dim bundle as new AppleCFBundle (AppleCFBundle.MainBundle.AllBundles.PtrAtIndex (q))
		        if bundle.Description.IndexOf (compare) > -1 then
		          framework= bundle
		          exit for
		        end if
		      next
		      if framework.isnil then // still haven't got it; try to load it now:
		        call AppleLibSystem.LoadFramework (compare, suppressException)
		        framework = new AppleCFBundle (frameworkID)
		      end if
		    end if
		    
		    if not FrameWork.ExecutableIsLoaded then //bundle is not loaded
		      if not FrameWork.Load then  //try to load it
		        //fail
		        Return nil
		      end if
		    end if
		    
		    Return framework.DataPtrForName (name) //lookup the constant
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dlerror Lib libsystem () As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dlopen Lib libsystem (framework As cstring, flag as int32) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub free Lib libsystem (p As cstring)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub free Lib libsystem (p As Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function LoadFramework(name as text, suppressException As Boolean = false) As boolean
		  dim path as Text =  "/System/Library/Frameworks/" + name + ".framework/" + name
		  Dim result As Ptr = dlopen(path.ToCString, 1 Or 8)
		  If result = Nil Then
		    if not suppressException then
		      Dim reason As Text = Text.FromCString(dlerror(), Xojo.Core.TextEncoding.UTF8)
		      Dim exc As New Xojo.Core.InvalidArgumentException
		      exc.Reason = reason
		      Raise exc
		    End If
		    return false
		  else
		    return true
		  End If
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function malloc Lib libsystem (capacity as integer) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RunBlockOnMainThread(block as appleblock)
		  #pragma StackOverflowChecking false
		  #pragma NilObjectChecking false
		  
		  Declare Function dlopen Lib appleLibSystem.LibSystemWithoutB ( path As CString, mode As Int32 ) As Ptr
		  Declare Function dlsym Lib appleLibSystem.LibSystemWithoutB ( handle As Ptr, name As CString ) As ptr
		  dim sysLib as ptr = dlopen("/usr/lib/libSystem.B.dylib",5)
		  Declare sub dispatch_async lib appleLibSystem.LibSystemWithoutB (queue as ptr, block as ptr)
		  
		  dim disp as ptr = dlsym(sysLib,"_dispatch_main_q")
		  dispatch_async (disp, block.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemConstantDouble(name as CFStringRef, frameworkPath as CFStringRef) As Double
		  Return DataPointerforName (name, frameworkPath).double(0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemConstantInteger(name as CFStringRef, frameworkPath as CFStringRef) As integer
		  Return DataPointerforName (name, frameworkPath).integer(0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemConstantName(name as CFStringRef, frameworkPath as CFStringRef) As text
		  #If TargetMacOS
		    Return DataPointerforName (name, frameworkPath).cfstringref(0)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemConstantPtr(name as CFStringRef, frameworkPath as CFStringRef) As Ptr
		  Return DataPointerforName (name, frameworkPath).ptr(0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemConstantSingle(name as CFStringRef, frameworkPath as CFStringRef) As Single
		  Return DataPointerforName (name, frameworkPath).single(0)
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = LibSystem, Type = Text, Dynamic = False, Default = \"/usr/lib/libSystem.B.dylib", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LibSystemWithoutB, Type = Text, Dynamic = False, Default = \"/usr/lib/libSystem.dylib", Scope = Public
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
