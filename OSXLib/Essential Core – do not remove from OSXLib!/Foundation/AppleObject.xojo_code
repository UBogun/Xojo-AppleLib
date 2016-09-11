#tag Class
Protected Class AppleObject
Implements AppleGeneralObject
	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function Alloc Lib foundationlibname Selector "alloc" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformValueForKey(Key as CFStringRef) As CGAffineTransform
		  return getCGAffineTransformValueForKey (mid, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CGAffineTransformValueForKey(Key as CFStringRef, assigns value as CGAffineTransform)
		  setCGAffineTransformValueForKey mid, value, key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  #If TargetMacOS then
		    mid = init(alloc(classptr))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aPtr as Ptr)
		  mid = aptr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false)
		  mid = if (Retain, retain(aptr), aptr)
		  MHasOwnership = takeOwnership
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  #If TargetMacOS then
		    if id <> nil then
		      #if DebugBuild
		        if mHasOwnership then
		          if LibDebug then system.DebugLog "Releasing "+DebugDescription+" AR: "+RetainCount.totext
		          if XojoControls <> nil and XojoControls.HasKey(id) then 
		            XojoControls.Remove(id)
		            if LibDebug then system.DebugLog "Released control too"
		          end if
		          call release id
		        else
		          if LibDebug then system.debuglog "Losing Handle on "+DebugDescription+" AR: "+RetainCount.totext
		        end if
		      #else
		        if mhasownership then
		          removecontrol
		          call release id
		        end if
		      #endif
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function GeneralID() As Ptr
		  // Part of the AppleGeneralObject interface.
		  
		  return mId
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getCGAffineTransformValueForKey Lib foundationlibname Selector "valueForKey:" (id as ptr, keypath as cfstringRef) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getclass Lib foundationlibname Selector "class" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdebugDescription Lib foundationlibname Selector "debugDescription" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getretainCount Lib foundationlibname Selector "retainCount" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getsuperclass Lib foundationlibname Selector "superclass" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getvalueForKey Lib foundationlibname Selector "valueForKey:" (id as ptr, keypath as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getvalueForKeyPath Lib foundationlibname Selector "valueForKeyPath:" (id as ptr, keypath as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function init Lib foundationlibname Selector "init" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleObject
		  return if (aptr = nil, nil, new appleobject (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RegisterControl(ParentControl As object)
		  if XojoControls = nil then XojoControls = new xojo.Core.Dictionary
		  XojoControls.Value (id) = xojo.core.WeakRef.Create(ParentControl)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub release Lib foundationlibname Selector "release" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RemoveControl()
		  if XojoControls <> nil and xojocontrols.HasKey(id) then XojoControls.Remove (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E73206966206120636C61737320636F6E7461696E732061206D6574686F642073656C6563746F722E
		Protected Shared Function RespondsToSelector(sel as CFStringRef, ClassPtr as Ptr) As Boolean
		  return ObjectiveCRuntime.class_respondsToSelector (ClassPtr, FoundationFrameWork.NSSelectorFromString(sel))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub Retain()
		  #If TargetMacOS then
		    call retain id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function retain Lib foundationlibname Selector "retain" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RetainClassObject()
		  #If TargetMacOS then
		    call retain (id)
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setCGAffineTransformValueForKey Lib foundationlibname Selector "setValue:forKey:" (id as ptr, value as CGAffineTransform, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setValueForKey Lib foundationlibname Selector "setValue:forKey:" (id as ptr, value as ptr, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setValueForKeyPath Lib foundationlibname Selector "setValue:forKeyPath:" (id as ptr, value as ptr, keypath as cfstringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652076616C756520666F72207468652070726F7065727479206964656E746966696564206279206120676976656E206B65792E
		Function ValueForKey(Key as CFStringRef) As AppleObject
		  return AppleObject.MakeFromPtr (getValueForKey (mid, Key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C756520666F72207468652070726F7065727479206964656E746966696564206279206120676976656E206B65792E
		Sub ValueForKey(Key as CFStringRef, assigns value as AppleGeneralObject)
		  setValueForKey (mid, value.GeneralID, Key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652076616C756520666F722074686520646572697665642070726F7065727479206964656E746966696564206279206120676976656E206B657920706174682E
		Function ValueForKeyPath(KeyPath as CFStringRef) As AppleObject
		  return AppleObject.MakeFromPtr (getValueForKeyPath (mid, KeyPath))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub ValueForKeyPath(KeyPath as CFStringRef, assigns value as AppleGeneralObject)
		  setValueForKeyPath (mid, value.GeneralID, KeyPath)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleObject.MakeFromPtr (getclass(id))
			  #endif
			  
			End Get
		#tag EndGetter
		ClassAsObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSObject")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getdebugDescription (id)
			  #endif
			  
			End Get
		#tag EndGetter
		DebugDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E7465726E616C20626F6F6C65616E206E6F74696E672069662074686973206F626A656374207761732063726561746564206F6E20757365722064656D616E642C207768696368206D65616E73206E6F74206173206120726573756C74206F6620616E6F74686572206D6574686F642E
		#tag Getter
			Get
			  return mHasOwnership
			End Get
		#tag EndGetter
		HasOwnership As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Attributes( hidden ) mHasOwnership As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Attributes( hidden ) Protected mId As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E2809973207265666572656E636520636F756E742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getretainCount (id)
			  #endif
			  
			End Get
		#tag EndGetter
		RetainCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleObject.MakeFromPtr (getsuperclass(id))
			  #endif
			  
			End Get
		#tag EndGetter
		SuperClass As AppleObject
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected Shared XojoControls As xojo.Core.Dictionary
	#tag EndProperty


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
