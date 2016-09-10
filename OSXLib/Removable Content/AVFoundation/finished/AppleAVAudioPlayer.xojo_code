#tag Class
Protected Class AppleAVAudioPlayer
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E7320746865206176657261676520706F77657220666F72206120676976656E206368616E6E656C2C20696E206465636962656C732C20666F722074686520736F756E64206265696E6720706C617965642E
		Function AveragePower(Channel as Integer) As Single
		  return AVFoundationFramework.getaveragePowerForChannel(mid, channel)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(PlayerItem As AppleAVPlayerItem)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithPlayerItem(alloc(Classptr), PlayerItem.id))
		  mhasownership = true
		  registerControl(self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E61746564206D656D6F7279206275666665722E
		Sub Constructor(data as appledata, byref anerror as appleerror)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim p as ptr = anerror.id
		  Super.Constructor (initWithData(alloc(Classptr), data.id, p))
		  anerror = AppleError.MakefromPtr(p)
		  if anerror = nil then
		    mhasownership = true
		    registerControl(self)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E61746564206D656D6F7279206275666665722E
		Sub Constructor(data as appledata, fileTypeHint as CFStringRef, byref anerror as appleerror)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim p as ptr = anerror.id
		  Super.Constructor (initWithDataAndHint(alloc(Classptr), data.id, fileTypeHint, p))
		  anerror = AppleError.MakefromPtr(p)
		  if anerror = nil then
		    mhasownership = true
		    registerControl(self)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E6174656420736F756E642066696C652E
		Sub Constructor(aURL as AppleURL, byref anerror as appleerror)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim p as ptr = anerror.id
		  Super.Constructor (initWithContentsOfURL(alloc(Classptr), aURL.id, p))
		  anerror = AppleError.MakefromPtr(p)
		  if anerror = nil then
		    mhasownership = true
		    registerControl(self)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C61796572207573696E6720746865207370656369666965642055524C20616E642066696C6520747970652068696E742E
		Sub Constructor(aURL as AppleURL, fileTypeHint as CFStringRef, byref anerror as appleerror)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim p as ptr = anerror.id
		  Super.Constructor (initWithContentsOfURLwithHint(alloc(Classptr), aURL.id, fileTypeHint, p))
		  anerror = AppleError.MakefromPtr(p)
		  if anerror = nil then
		    mhasownership = true
		    registerControl(self)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E6174656420736F756E642066696C652E
		Sub Constructor(URLName as CFStringRef, byref anerror as AppleError)
		  Constructor (new appleurl(URLName), anerror)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E6174656420736F756E642066696C652E
		Sub Constructor(URLName as CFStringRef, fileTypeHint as CFStringRef, byref anerror as AppleError)
		  Constructor (new appleurl(URLName), fileTypeHint, anerror)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E6174656420736F756E642066696C652E
		Sub Constructor(aURL as FolderItem, byref anerror as AppleError)
		  Constructor (new AppleURL(aurl), anerror)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E6174656420736F756E642066696C652E
		Sub Constructor(aURL as FolderItem, fileTypeHint as CFStringRef, byref anerror as AppleError)
		  Constructor (new AppleURL(aurl), fileTypeHint, anerror)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if id <> nil then
		    if mHasOwnership then
		      removecontrol
		      #if DebugBuild
		        if LibDebug then system.DebugLog "Released control too"
		      #endif
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getchannelAssignments Lib AVFoundationLibname Selector "channelAssignments" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getenableRate Lib AVFoundationLibname Selector "enableRate" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getmasterClock Lib AVFoundationLibname Selector "masterClock" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getnumberOfLoops Lib AVFoundationLibname Selector "numberOfLoops" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getPan Lib AVFoundationLibname Selector "pan" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getRate Lib AVFoundationLibname Selector "rate" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getVolume Lib AVFoundationLibname Selector "volume" (id as ptr) As single
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_audioPlayerDecodeErrorDidOccur(pid as ptr, sel as ptr, audioPlayer as Ptr, error as ptr)
		  dim ego as AppleAVAudioPlayer = AppleAVAudioPlayer.MakeFromPtr(pid)
		  if ego <> nil then ego.informOnaudioPlayerDecodeErrorDidOccur(AppleError.MakefromPtr(error))
		  #Pragma unused audioPlayer
		  #Pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_audioPlayerDidFinishPlaying(pid as ptr, sel as ptr, audioPlayer as Ptr, successfully as Boolean)
		  dim ego as AppleAVAudioPlayer = AppleAVAudioPlayer.MakeFromPtr(pid)
		  if ego <> nil then ego.informOnAudioPlayerDidFinishPlaying (successfully)
		  #Pragma unused audioPlayer
		  #Pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonaudioPlayerDecodeErrorDidOccur(Error As AppleError)
		  dim parent as AppleAVAudioPlayer = me.parentcontrol
		  if parent <> nil and parent <> self then
		    parent.informonaudioPlayerDecodeErrorDidOccur (Error)
		  else
		    RaiseEvent DEcodingError (Error)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informOnAudioPlayerDidFinishPlaying(successfully As Boolean)
		  dim parent as AppleAVAudioPlayer = me.parentcontrol
		  if parent <> nil and parent <> self then
		    parent.informOnAudioPlayerDidFinishPlaying (successfully)
		  else
		    RaiseEvent FinishedPlaying (successfully)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithContentsOfURL Lib AVFoundationLibname Selector "initWithContentsOfURL:error:" (id as ptr, url As Ptr, byref error as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithContentsOfURLwithHint Lib AVFoundationLibname Selector "initWithContentsOfURL:fileTypeHint:error:" (id as ptr, url As Ptr, hint as cfstringRef, byref error as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithData Lib AVFoundationLibname Selector "initWithData:error" (id as ptr, data As Ptr, byref error as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithDataAndHint Lib AVFoundationLibname Selector "initWithData:fileTypeHint:error" (id as ptr, data As Ptr, fileTypeHint as CFStringRef, byref error as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithPlayerItem Lib AVFoundationLibname Selector "initWithPlayerItem:" (id as ptr, playerItem As Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioPlayer
		  return if (aptr = nil, nil, new AppleAVAudioPlayer(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden ) Private Function ParentControl() As AppleAVAudioPlayer
		  #pragma BreakOnExceptions false
		  try
		    dim  wr as xojo.core.weakref = XojoControls.Value (id)  
		    return AppleAVAudioPlayer(wr.Value)
		  catch NilObjectException
		    return Nil
		  end try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617573657320706C61796261636B3B20736F756E642072656D61696E7320726561647920746F20726573756D6520706C61796261636B2066726F6D207768657265206974206C656674206F66662E
		Sub Pause()
		  AVFoundationFramework.pause (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207065616B20706F77657220666F72206120676976656E206368616E6E656C2C20696E206465636962656C732C20666F722074686520736F756E64206265696E6720706C617965642E
		Function PeakPower(Channel as Integer) As Single
		  return AVFoundationFramework.getpeakPowerForChannel(mid, channel)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506C617973206120736F756E64206173796E6368726F6E6F75736C792E
		Function Play() As Boolean
		  return AVFoundationFramework.play (mid)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506C617973206120736F756E64206173796E6368726F6E6F75736C792C207374617274696E6720617420612073706563696669656420706F696E7420696E2074686520617564696F206F757470757420646576696365E28099732074696D656C696E652E
		Function Play(atTime As Double) As Boolean
		  return AVFoundationFramework.playAtTime (mid, atTime)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726570617265732074686520617564696F20706C6179657220666F7220706C61796261636B206279207072656C6F6164696E672069747320627566666572732E
		Function PrepareToPlay() As Boolean
		  return AVFoundationFramework.prepareToPlay (mid)
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

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setchannelAssignments Lib AVFoundationLibname Selector "setChannelAssignments:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setenableRate Lib AVFoundationLibname Selector "setEnableRate:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setmasterClock Lib AVFoundationLibname Selector "setMasterClock:" (id as ptr, clock as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setnumberOfLoops Lib AVFoundationLibname Selector "setNumberOfLoops:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setPan Lib AVFoundationLibname Selector "setPan:" (id as ptr, volume as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setRate Lib AVFoundationLibname Selector "setRate:" (id as ptr, volume as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setVolume Lib AVFoundationLibname Selector "setVolume:" (id as ptr, volume as single)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53746F707320706C61796261636B20616E6420756E646F657320746865207365747570206E656564656420666F7220706C61796261636B2E
		Function Stop() As Boolean
		  AVFoundationFramework.stop (mid)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656672657368657320746865206176657261676520616E64207065616B20706F7765722076616C75657320666F7220616C6C206368616E6E656C73206F6620616E20617564696F20706C617965722E
		Sub UpdateMeters()
		  AVFoundationFramework.updateMeters mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520766F6C756D6520746F2061206E65772076616C75652C20666164696E6720696E206F72206F757420746F206974206F766572207365636F6E6473206475726174696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322E
		Sub Volume(FadeDuration As Double, assigns value as single)
		  if RespondsToSelector("setVolume:fadeDuration:", classptr) then AVFoundationFramework.setVolumeFade mid, value, FadeDuration
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520617564696F20706C6179657220656E636F756E74657265642061206465636F64696E67206572726F722E
		Event DecodingError(Error As AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520617564696F20706C617965722066696E697368656420706C6179696E672E
		Event FinishedPlaying(Successfully As Boolean)
	#tag EndHook


	#tag Note, Name = Status finished
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F466F726D61742063757272656E746C7920696E207573652062792074686520706C617965722028726561642D6F6E6C79292E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  if RespondsToSelector("AVAudioFormat", classptr) then return appleAVAudioFormat.MakeFromPtr(AVFoundationFramework.getAVAudioFormat(mid))
			End Get
		#tag EndGetter
		AVAudioFormat As AppleAVAudioFormat
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204156417564696F53657373696F6E4368616E6E656C4465736372697074696F6E206F626A65637473206173736F63696174656420776974682074686520617564696F20706C61796572
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getchannelAssignments(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setchannelAssignments mid, if (value = nil, nil, value.Id)
			End Set
		#tag EndSetter
		ChannelAssignments As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("audioPlayerDidFinishPlaying:successfully:", AddressOf impl_audioPlayerDidFinishPlaying, "v@:@c")
			    methods.Append new TargetClassMethodHelper("audioPlayerDecodeErrorDidOccur:error:", AddressOf impl_audioPlayerDecodeErrorDidOccur, "v@:@@")
			    
			    mClassPtr = BuildTargetClass ("AVAudioPlayer", "OSXLibAVAudioPlayer",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AVFoundationFramework.getcurrentTimeAsDouble (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AVFoundationFramework.setcurrentTimeAsDouble mid, value
			End Set
		#tag EndSetter
		currentTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064617461206F626A65637420636F6E7461696E696E672074686520736F756E64206173736F63696174656420776974682074686520617564696F20706C617965722028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return appledata.MakefromPtr(avFoundationFrameWork.getdata (mid))
			End Get
		#tag EndGetter
		Data As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D652076616C75652C20696E207365636F6E64732C206F662074686520617564696F206F7574707574206465766963652028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return AVFoundationFramework.getdeviceCurrentTime (mid)
			End Get
		#tag EndGetter
		DeviceCurrentTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746F74616C206475726174696F6E2C20696E207365636F6E64732C206F662074686520736F756E64206173736F63696174656420776974682074686520617564696F20706C617965722028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return AVFoundationFramework.getduration (mid)
			End Get
		#tag EndGetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220617564696F2D6C6576656C206D65746572696E67206F6E2F6F666620737461746520666F722074686520617564696F20706C617965722E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return AVFoundationFramework.isMeteringEnabled(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AVFoundationFramework.setMeteringEnabled mid, value
			End Set
		#tag EndSetter
		MeteringEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620617564696F206368616E6E656C7320696E2074686520736F756E64206173736F63696174656420776974682074686520617564696F20706C617965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVFoundationFramework.getnumberOfChannels (mid)
			End Get
		#tag EndGetter
		NumberOfChannels As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662074696D6573206120736F756E642077696C6C2072657475726E20746F2074686520626567696E6E696E672C2075706F6E207265616368696E672074686520656E642C20746F2072657065617420706C61796261636B2E
		#tag Getter
			Get
			  return getnumberOfLoops (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setnumberOfLoops mid, value
			End Set
		#tag EndSetter
		NumberOfLoops As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F20706C61796572E28099732073746572656F2070616E20706F736974696F6E2E
		#tag Getter
			Get
			  return getPan (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPan mid, value
			End Set
		#tag EndSetter
		Pan As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F20706C6179657220697320706C6179696E672028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVFoundationFramework.isPlaying (id)
			End Get
		#tag EndGetter
		Playing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F20706C61796572E280997320706C61796261636B20726174652E
		#tag Getter
			Get
			  return getrate (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRate id, value
			End Set
		#tag EndSetter
		Rate As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220706C61796261636B20726174652061646A7573746D656E7420697320656E61626C656420666F7220616E20617564696F20706C617965722E
		#tag Getter
			Get
			  return getenableRate(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setenableRate mid, value
			End Set
		#tag EndSetter
		RateEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F2073657474696E677320666F722074686520617564696F20706C617965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVAudioSettingsDictionary(AppleDictionary.MakeFromPtr(AVFoundationFramework.getsettings (mid)))
			End Get
		#tag EndGetter
		Settings As AVAudioSettingsDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C20666F722074686520736F756E64206173736F63696174656420776974682074686520617564696F20706C617965722028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return appleurl.MakefromPtr(FoundationFrameWork.getURL (mid))
			End Get
		#tag EndGetter
		URL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706C61796261636B20766F6C756D6520666F722074686520617564696F20706C617965722C2072616E67696E672066726F6D20302E30207468726F75676820312E30206F6E2061206C696E656172207363616C652E
		#tag Getter
			Get
			  return getVolume (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setVolume mid, value
			End Set
		#tag EndSetter
		Volume As Single
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="currentTime"
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
			Name="Duration"
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
			Name="NumberOfChannels"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfLoops"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pan"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Playing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rate"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RateEnabled"
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
		#tag ViewProperty
			Name="Volume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
