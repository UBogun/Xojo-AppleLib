#tag Class
Protected Class AppleAVAudioRecorder
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E7320746865206176657261676520706F77657220666F72206120676976656E206368616E6E656C2C20696E206465636962656C732C20666F722074686520736F756E64206265696E67207265636F726465642E
		Function AveragePower(Channel as Integer) As Single
		  return AVFoundationFramework.getaveragePowerForChannel(mid, channel)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720417564696F5265636F726465722066726F6D20612055524C20616E642061206365727461696E20666F726D61742E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Sub Constructor(URL As AppleURL, Format As AppleAVAudioFormat, byref Error As AppleError)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  if RespondsToSelector("initWithURL:format:error:", classptr) then
		    dim p as ptr = Error.id
		    super.Constructor(initWithURLformat(alloc(classptr), url.Id, format.id, p))
		    error =  AppleError.MakefromPtr(p)
		    me.DelegateObject = self
		    registerControl(self)
		    MHasOwnership = true
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720417564696F5265636F72646572
		Sub Constructor(URL As AppleURL, Settings As AppleDictionary, byref Error As AppleError)
		  dim p as ptr = Error.id
		  super.Constructor(initWithURLSettings(alloc(classptr), url.Id, settings.id, p))
		  error =  AppleError.MakefromPtr(p)
		  me.DelegateObject = self
		  registerControl(self)
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44656C657465732061207265636F7264656420617564696F2066696C652E
		Function DeleteRecording() As Boolean
		  return deleteRecording (mid)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function deleteRecording Lib AVFoundationLibName Selector "deleteRecording" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if id <> nil then
		    if mHasOwnership then
		      removecontrol
		      if LibDebug then system.DebugLog "Released control too"
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmeteringEnabled Lib AVFoundationLibName Selector "isMeteringEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_audioRecorderDidFinishRecording(pid as ptr, sel as ptr, audioRecorder as Ptr, successfully as Boolean)
		  dim ego as AppleAVAudioRecorder = AppleAVAudioRecorder.MakeFromPtr(pid)
		  if ego <> nil then ego.informOnaudioRecorderDidFinishRecording (successfully)
		  #Pragma unused audioRecorder
		  #Pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_audioRecorderEncodeErrorDidOccur(pid as ptr, sel as ptr, audioRecorder as Ptr, error as ptr)
		  dim ego as AppleAVAudioRecorder = AppleAVAudioRecorder.MakeFromPtr(pid)
		  if ego <> nil then ego.informOnaudioRecorderEncodingError(AppleError.MakefromPtr(error))
		  #Pragma unused audioRecorder
		  #Pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnaudioRecorderDidFinishRecording(successfully As Boolean)
		  dim parent as AppleAVAudioRecorder = me.parentcontrol
		  if parent <> nil and parent <> self then
		    parent.informOnaudioRecorderDidFinishRecording (successfully)
		  else
		    RaiseEvent FinishedRecording (successfully)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnaudioRecorderEncodingError(Error As AppleError)
		  dim parent as AppleAVAudioRecorder = me.parentcontrol
		  if parent <> nil and parent <> self then
		    parent.informOnaudioRecorderEncodingError (Error)
		  else
		    RaiseEvent EncodingError (Error)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithURLformat Lib AVFoundationLibName Selector "initWithURL:format:error:" (id as ptr, url as ptr, format as ptr, byref error as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithURLSettings Lib AVFoundationLibName Selector "initWithURL:settings:error:" (id as ptr, url as ptr, settings as ptr, byref error as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isRecording Lib AVFoundationLibName Selector "isRecording" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioRecorder
		  return if (aptr = nil, nil, new AppleAVAudioRecorder(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden ) Private Function ParentControl() As AppleAVAudioRecorder
		  #pragma BreakOnExceptions false
		  try
		    dim  wr as xojo.core.weakref = XojoControls.Value (id)  
		    return AppleAVAudioRecorder(wr.Value)
		  catch NilObjectException
		    return Nil
		  end try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5061757365732061207265636F7264696E672E
		Sub Pause()
		  AVFoundationFramework.pause mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207065616B20706F77657220666F72206120676976656E206368616E6E656C2C20696E206465636962656C732C20666F722074686520736F756E64206265696E67207265636F726465642E
		Function PeakPower(Channel as Integer) As Single
		  return AVFoundationFramework.getpeakPowerForChannel(mid, channel)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20617564696F2066696C6520616E64207072657061726573207468652073797374656D20666F72207265636F7264696E672E2052657475726E732074686520726573756C74206173206120426F6F6C65616E2E
		Function PrepareToRecord() As Boolean
		  return prepareToRecord (mid)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function prepareToRecord Lib AVFoundationLibName Selector "prepareToRecord" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 537461727473206F7220726573756D6573207265636F7264696E672E
		Function Record() As Boolean
		  return record (mid)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function record Lib AVFoundationLibName Selector "record" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function recordAtTime Lib AVFoundationLibName Selector "recordAtTime:" (id as ptr, time as Double) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function recordAtTimeforDuration Lib AVFoundationLibName Selector "recordAtTime:forDuration:" (id as ptr, time as Double, duration as Double) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265636F72647320666F72206120737065636966696564206475726174696F6E206F662074696D652E
		Function RecordForDuration(Duration As Double) As Boolean
		  return recordForDuration (mid, duration)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function recordForDuration Lib AVFoundationLibName Selector "recordForDuration:" (id as ptr, duration as Double) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 537461727473207265636F7264696E6720617420612073706563696669632074696D652E
		Function RecordInSeconds(Delay As Double) As Boolean
		  return recordAtTime (mid, Delay)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473207265636F7264696E672061742061207370656369666965642074696D6520666F72206120737065636966696564206475726174696F6E206F662074696D652E
		Function RecordInSeconds(Delay As Double, Duration As Double) As Boolean
		  return recordAtTimeforDuration (mid, Delay, duration)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RegisterControl(ParentControl As object)
		  if XojoControls = nil then XojoControls = new xojo.Core.Dictionary
		  XojoControls.Value (id) = xojo.core.WeakRef.Create(ParentControl)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RemoveControl()
		  #Pragma BreakOnExceptions false
		  try
		    XojoControls.Remove (id)
		  catch 
		    
		  end try
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmeteringEnabled Lib AVFoundationLibName Selector "setMeteringEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53746F7073207265636F7264696E6720616E6420636C6F7365732074686520617564696F2066696C652E
		Sub Stop()
		  AVFoundationFramework.stop mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656672657368657320746865206176657261676520616E64207065616B20706F7765722076616C75657320666F7220616C6C206368616E6E656C73206F6620616E20617564696F207265636F726465722E
		Sub UpdateMeters()
		  AVFoundationFramework.updateMeters mid
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520617564696F207265636F7264657220656E636F756E746572656420616E20656E636F64696E67206572726F722E
		Event EncodingError(Error As AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520617564696F207265636F726465722066696E69736865642061207265636F7264696E672E
		Event FinishedRecording(Successfully As Boolean)
	#tag EndHook


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F466F726D61742063757272656E746C7920696E2075736520627920746865207265636F726465722028726561642D6F6E6C79292E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  if RespondsToSelector("AVAudioFormat", classptr) then return appleAVAudioFormat.MakeFromPtr(AVFoundationFramework.getAVAudioFormat(mid))
			End Get
		#tag EndGetter
		AVAudioFormat As AppleAVAudioFormat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204156417564696F53657373696F6E4368616E6E656C4465736372697074696F6E206F626A65637473206173736F63696174656420776974682074686520617564696F207265636F726465722E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(AVFoundationFramework.getchannelAssignments(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AVFoundationFramework.setchannelAssignments mid, if (value = nil, nil, value.Id)
			End Set
		#tag EndSetter
		ChannelAssignments As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("audioRecorderDidFinishRecording:successfully:", AddressOf impl_audioRecorderDidFinishRecording, "v@:@c")
			    methods.Append new TargetClassMethodHelper("audioRecorderEncodeErrorDidOccur:error:", AddressOf impl_audioRecorderEncodeErrorDidOccur, "v@:@@")
			    
			    mClassPtr = BuildTargetClass ("AVAudioRecorder", "OSXLibAVAudioRecorder",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D652C20696E207365636F6E64732C2073696E63652074686520626567696E6E696E67206F6620746865207265636F7264696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getcurrentTime (mid)
			End Get
		#tag EndGetter
		CurrentTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F6620746865206D656E752E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(AppKitFramework.getdelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdelegate(id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D652C20696E207365636F6E64732C206F662074686520686F7374206465766963652077686572652074686520617564696F207265636F72646572206973206C6F63617465642E2028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return AVFoundationFramework.getdeviceCurrentTime (mid)
			End Get
		#tag EndGetter
		DeviceCurrentTime As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private iVarPtr As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220617564696F2D6C6576656C206D65746572696E6720697320656E61626C65642E
		#tag Getter
			Get
			  return getmeteringEnabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmeteringEnabled id, value
			End Set
		#tag EndSetter
		MeteringEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F207265636F72646572206973207265636F7264696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isRecording (mid)
			End Get
		#tag EndGetter
		Recording As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F2073657474696E677320666F722074686520617564696F207265636F726465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVAudioSettingsDictionary(AppleDictionary.MakeFromPtr(AVFoundationFramework.getsettings (mid)))
			End Get
		#tag EndGetter
		Settings As AVAudioSettingsDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C20666F722074686520617564696F2066696C65206173736F63696174656420776974682074686520617564696F207265636F726465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr(FoundationFrameWork.getURL (mid))
			End Get
		#tag EndGetter
		URL As AppleURL
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared XojoControls As xojo.Core.Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CurrentTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DeviceCurrentTime"
			Group="Behavior"
			Type="Double"
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
			Name="MeteringEnabled"
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
			Name="Recording"
			Group="Behavior"
			Type="Boolean"
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
