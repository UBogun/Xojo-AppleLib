#tag Class
 Attributes ( incomplete = "needs AVAsset" ) Protected Class AppleAVPlayerItem
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 43616E63656C20616E792070656E64696E67207365656B20726571756573747320616E6420696E766F6B652074686520636F72726573706F6E64696E6720636F6D706C6574696F6E2068616E646C6572732069662070726573656E742E
		Sub CancelPendingSeeks()
		  cancelPendingSeeks (id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub cancelPendingSeeks Lib AVFoundationLibname Selector "cancelPendingSeeks" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E657720706C61796572206974656D20666F72206120676976656E2061737365742E
		Sub Constructor(Asset as AppleAVAsset)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithAsset(alloc(Classptr), asset.id))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120706C61796572206974656D2077697468207468652073706563696669656420617373657420616E6420746865206173736574206B65797320746F206265206175746F6D61746963616C6C79206C6F616465642E
		Sub Constructor(Asset as AppleAVAsset, Keys As AppleArray)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithAssetAndKeys(alloc(Classptr), asset.id, keys.id))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 5072657061726573206120706C61796572206974656D2077697468206120676976656E2055524C2E
		Sub Constructor(aURL as AppleURL)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (avFoundationFrameWork.initWithURL(alloc(Classptr), aURL.id))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 5072657061726573206120706C61796572206974656D2077697468206120676976656E2055524C2E
		Sub Constructor(URLName as CFStringRef)
		  Constructor (new AppleURL (URLName))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 5072657061726573206120706C61796572206974656D2077697468206120676976656E2055524C2E
		Sub Constructor(aURL as FolderItem)
		  Constructor(new AppleURL(aurl))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getaudioMix Lib AVFoundationLibname Selector "audioMix" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getaudioTimePitchAlgorithm Lib AVFoundationLibname Selector "audioTimePitchAlgorithm" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getautomaticallyLoadedAssetKeys Lib AVFoundationLibname Selector "automaticallyLoadedAssetKeys" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlayFastForward Lib AVFoundationLibname Selector "canPlayFastForward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlayFastReverse Lib AVFoundationLibname Selector "canPlayFastReverse" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlayReverse Lib AVFoundationLibname Selector "canPlayReverse" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlaySlowForward Lib AVFoundationLibname Selector "canPlaySlowForward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanPlaySlowReverse Lib AVFoundationLibname Selector "canPlaySlowReverse" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanStepBackward Lib AVFoundationLibname Selector "canStepBackward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanStepForward Lib AVFoundationLibname Selector "canStepForward" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getcanUseNetworkResourcesForLiveStreamingWhilePaused Lib AVFoundationLibname Selector "canUseNetworkResourcesForLiveStreamingWhilePaused" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getduration Lib AVFoundationLibname Selector "duration" (id as ptr) As AVFoundationFramework.CMTime
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getforwardPlaybackEndTime Lib AVFoundationLibname Selector "forwardPlaybackEndTime" (id as ptr) As AVFoundationFramework.CMTime
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getloadedTimeRanges Lib AVFoundationLibname Selector "loadedTimeRanges" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getpreferredForwardBufferDuration Lib AVFoundationLibname Selector "preferredForwardBufferDuration" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getpreferredPeakBitRate Lib AVFoundationLibname Selector "preferredPeakBitRate" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function getpresentationSize Lib AVFoundationLibname Selector "presentationSize" (id as ptr) As FoundationFrameWork.nssize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getreversePlaybackEndTime Lib AVFoundationLibname Selector "reversePlaybackEndTime" (id as ptr) As AVFoundationFramework.CMTime
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getseekableTimeRanges Lib AVFoundationLibname Selector "seekableTimeRanges" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getseekingWaitsForVideoCompositionRendering Lib AVFoundationLibname Selector "seekingWaitsForVideoCompositionRendering" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getstatus Lib AVFoundationLibname Selector "status" (id as ptr) As PlayerItemStatus
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getTimebase Lib AVFoundationLibname Selector "timebase" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function gettimedMetadata Lib AVFoundationLibname Selector "timedMetadata" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function gettracks Lib AVFoundationLibname Selector "tracks" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithAsset Lib AVFoundationLibname Selector "initWithAsset:" (id as ptr, asset as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithAssetAndKeys Lib AVFoundationLibname Selector "initWithAsset:automaticallyLoadedAssetKeys:" (id as ptr, asset as ptr, loadedKeys as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isPlaybackBufferEmpty Lib AVFoundationLibname Selector "isPlaybackBufferEmpty" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isPlaybackBufferFull Lib AVFoundationLibname Selector "isPlaybackBufferFull" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isPlaybackLikelyToKeepUp Lib AVFoundationLibname Selector "isPlaybackLikelyToKeepUp" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function makefromPtr(aPtr as Ptr) As AppleAVPlayerItem
		  return if (aptr = nil, nil, new AppleAVPlayerItem(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 547269657320746F20736574207468652063757272656E7420706C61796261636B2074696D6520746F207468652074696D6520737065636966696564206279207468652064617465206F626A6563742E
		Function SeekToDate(Date As AppleDate) As Boolean
		  return seekToDate (mid, date.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function seekToDate Lib AVFoundationLibname Selector "seekToDate:" (id as ptr, date as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420706C61796261636B2074696D6520746F20746865207370656369666965642074696D652E204669726573207468652054696D65466F756E64204576656E7420696620796F752073706563696679206E6F206F74686572204170706C65426C6F636B20617320436F6D706C6574696F6E48616E646C65722E
		Sub SeekToTime(Time as AVFoundationFramework.CMTime, Block as AppleBlock = nil)
		  if block = nil then block = new AppleBlock (AddressOf SeekToTimeCompletionBlock)
		  AVFoundationFramework.seekToTime id, time, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420706C61796261636B2074696D652077697468696E2061207370656369666965642074696D6520626F756E642E204669726573207468652054696D65466F756E64204576656E7420696620796F752073706563696679206E6F206F74686572204170706C65426C6F636B20617320436F6D706C6574696F6E48616E646C65722E
		Sub SeekToTime(Time as AVFoundationFramework.CMTime, ToleranceBefore as AVFoundationFramework.CMTime, ToleranceAfter as AVFoundationFramework.CMTime, block as AppleBlock = nil)
		  if block = nil then block = new AppleBlock (AddressOf SeekToTimeCompletionBlock)
		  AVFoundationFramework.seekToTimeTolerance id, time, ToleranceBefore, ToleranceAfter, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub SeekToTimeCompletionBlock(Finished as Boolean)
		  if me <> nil then RaiseEvent TimeFound (Finished)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setaudioMix Lib AVFoundationLibname Selector "setAudioMix:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setaudioTimePitchAlgorithm Lib AVFoundationLibname Selector "setAudioTimePitchAlgorithm:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setcanUseNetworkResourcesForLiveStreamingWhilePaused Lib AVFoundationLibname Selector "setCanUseNetworkResourcesForLiveStreamingWhilePaused:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setforwardPlaybackEndTime Lib AVFoundationLibname Selector "setForwardPlaybackEndTime:" (id as ptr, value as AVFoundationFramework . CMTime)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setpreferredForwardBufferDuration Lib AVFoundationLibname Selector "setPreferredForwardBufferDuration:" (id as ptr, value as Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setpreferredPeakBitRate Lib AVFoundationLibname Selector "setPreferredPeakBitRate:" (id as ptr, value as Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setreversePlaybackEndTime Lib AVFoundationLibname Selector "setReversePlaybackEndTime:" (id as ptr, value as AVFoundationFramework . CMTime)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setseekingWaitsForVideoCompositionRendering Lib AVFoundationLibname Selector "setSeekingWaitsForVideoCompositionRendering:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D6F7665732074686520706C61796572206974656DE28099732063757272656E742074696D6520666F7277617264206F72206261636B77617264206279206120737065636966696564206E756D626572206F662073746570732E
		Sub StepBy(StepCount As Integer)
		  stepByCount (id, StepCount)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub stepByCount Lib AVFoundationLibname Selector "stepByCount" (id as ptr, stepcount as integer)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event TimeFound(Finished as Boolean)
	#tag EndHook


	#tag Note, Name = Status
		
		
		Needs AVVideoComposition & AVVideoCompositingfor property
		Logs & Authorization and the rest including notifications missing
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520756E6465726C79696E672061737365742070726F766964656420647572696E6720696E697469616C697A6174696F6E2028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return AppleAVAsset.MakefromPtr(AVFoundationFramework.getAsset(mid))
			End Get
		#tag EndGetter
		Asset As AppleAVAsset
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F206D697820706172616D657465727320746F206265206170706C69656420647572696E6720706C61796261636B2E
		#tag Getter
			Get
			  return AppleAVAudioMix.makeFromPtr (getaudioMix(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setaudioMix (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		AudioMix As AppleAVAudioMix
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070726F63657373696E6720616C676F726974686D207573656420746F206D616E61676520617564696F20706974636820666F72207363616C656420617564696F2065646974732E
		#tag Getter
			Get
			  return getaudioTimePitchAlgorithm (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setaudioTimePitchAlgorithm (id, value)
			End Set
		#tag EndSetter
		AudioTimePitchAlgorithm As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172726179206F66206173736574206B65797320746F206265206175746F6D61746963616C6C79206C6F61646564206265666F726520746F2074686520706C61796572206974656D2072656163686573206120737461747573206F66204156506C617965724974656D5374617475735265616479546F506C61792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(getautomaticallyLoadedAssetKeys(mid))
			End Get
		#tag EndGetter
		AutomaticallyLoadedAssetKeys As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656D2063616E20626520706C617965642061742072617465732067726561746572207468616E20312E302E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanPlayFastForward (id)
			End Get
		#tag EndGetter
		CanPlayFastForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656D2063616E20626520706C61796564206174207261746573206C657373207468616E20E28093312E302E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanPlayFastReverse (id)
			End Get
		#tag EndGetter
		CanPlayFastReverse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656D2063616E20626520706C61796564207769746820612072617465206F66202D312E302E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanPlayReverse (id)
			End Get
		#tag EndGetter
		CanPlayReverse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656D2063616E20626520706C6179656420617420612072617465206265747765656E20302E3020616E6420312E302E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanPlaySlowForward (id)
			End Get
		#tag EndGetter
		CanPlaySlowForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656D2063616E20626520706C6179656420617420612072617465206265747765656E202D312E3020616E6420302E302E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanPlaySlowReverse (id)
			End Get
		#tag EndGetter
		CanPlaySlowReverse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656D20737570706F727473207374657070696E67206261636B776172642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanStepBackward (id)
			End Get
		#tag EndGetter
		CanStepBackward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656D20737570706F727473207374657070696E6720666F72776172642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcanStepForward (id)
			End Get
		#tag EndGetter
		CanStepForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E6469636174657320776865746865722074686520706C61796572206974656D2063616E20757365206E6574776F726B207265736F757263657320746F206B65657020706C61796261636B20737461746520757020746F2064617465207768696C65207061757365642E20417661696C61626C652073696E6365204D61634F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector ("canUseNetworkResourcesForLiveStreamingWhilePaused", classptr) then return getcanUseNetworkResourcesForLiveStreamingWhilePaused (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setCanUseNetworkResourcesForLiveStreamingWhilePaused:", classptr) then setcanUseNetworkResourcesForLiveStreamingWhilePaused mid, value
			End Set
		#tag EndSetter
		CanUseNetworkResourcesForLiveStreamingWhilePaused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("AVPlayerItem")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getTimebase (id)
			End Get
		#tag EndGetter
		CMTimeBaseRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E742074696D65206F6620746865206974656D20617320616E204E5344617465206F626A6563742C206F72206E696C20696620706C61796261636B206973206E6F74206D617070656420746F20616E7920646174652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appledate.MakefromPtr (AVFoundationFramework.getcurrentDate (mid))
			End Get
		#tag EndGetter
		CurrentDate As AppleDate
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E742074696D65206F6620746865206974656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVFoundationFramework.getcurrentTime (id)
			End Get
		#tag EndGetter
		CurrentTime As AVFoundationFramework.CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E206F6620746865206974656DE2809973206D656469612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getduration (id)
			End Get
		#tag EndGetter
		Duration As AVFoundationFramework.CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 49662074686520706C61796572206974656DE280997320737461747573206973204156506C617965724974656D5374617475734661696C65642C20746869732064657363726962657320746865206572726F7220746861742063617573656420746865206661696C7572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleError.MakefromPtr (AVFoundationFramework.geterror(id))
			End Get
		#tag EndGetter
		Error As AppleError
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D6520617420776869636820666F727761726420706C61796261636B20656E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getforwardPlaybackEndTime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setforwardPlaybackEndTime (id, value)
			End Set
		#tag EndSetter
		ForwardPlaybackEndTime As AVFoundationFramework.CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D652072616E676573206F6620746865206974656D20746861742068617665206265656E206C6F616465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applearray.MakeFromPtr (getloadedTimeRanges (id))
			End Get
		#tag EndGetter
		LoadedTimeRanges As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E64696361746573207768657468657220706C61796261636B2068617320636F6E73756D656420616C6C206275666665726564206D6564696120616E64207468617420706C61796261636B2077696C6C207374616C6C206F7220656E642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isPlaybackBufferEmpty (id)
			End Get
		#tag EndGetter
		PlaybackBufferEmpty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E6469636174657320776865746865722074686520696E7465726E616C206D65646961206275666665722069732066756C6C20616E642074686174206675727468657220492F4F2069732073757370656E6465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isPlaybackBufferFull (id)
			End Get
		#tag EndGetter
		PlaybackBufferFull As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E64696361746573207768657468657220746865206974656D2077696C6C206C696B656C7920706C6179207468726F75676820776974686F7574207374616C6C696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isPlaybackLikelyToKeepUp (id)
			End Get
		#tag EndGetter
		PlaybackLikelyToKeepUp As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E6469636174657320746865206475726174696F6E2074686520706C617965722073686F756C6420627566666572206D656469612066726F6D20746865206E6574776F726B206168656164206F662074686520706C61796865616420746F20677561726420616761696E737420706C61796261636B2064697372757074696F6E2E20417661696C61626C652073696E6365206D61634F532031302E3132
		#tag Getter
			Get
			  if RespondsToSelector ("preferredForwardBufferDuration", classptr) then return getpreferredForwardBufferDuration (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setPreferredForwardBufferDuration:", classptr) then setpreferredForwardBufferDuration mid, value
			End Set
		#tag EndSetter
		PreferredForwardBufferDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064657369726564206C696D69742C20696E206269747320706572207365636F6E642C206F66206E6574776F726B2062616E64776964746820636F6E73756D7074696F6E20666F722074686973206974656D2E
		#tag Getter
			Get
			  return getpreferredPeakBitRate (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpreferredPeakBitRate mid, value
			End Set
		#tag EndSetter
		PreferredPeakBitRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206174207768696368207468652076697375616C20706F7274696F6E206F6620746865206974656D2069732070726573656E7465642062792074686520706C617965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getpresentationSize (id)
			End Get
		#tag EndGetter
		PresentationSize As FoundationFrameWork.nssize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getreversePlaybackEndTime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setreversePlaybackEndTime (id, value)
			End Set
		#tag EndSetter
		ReversePlaybackEndTime As AVFoundationFramework.CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662074696D652072616E67657320284E5356616C75657320636F6E7461696E696E6720434D54496D6552616E6765292077697468696E20776869636820697420697320706F737369626C6520746F207365656B2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applearray.MakeFromPtr (getseekableTimeRanges (id))
			End Get
		#tag EndGetter
		SeekableTimeRanges As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206974656DE28099732074696D696E6720666F6C6C6F77732074686520646973706C6179656420766964656F206672616D65207768656E207365656B696E672077697468206120766964656F20636F6D706F736974696F6E2E
		#tag Getter
			Get
			  return getseekingWaitsForVideoCompositionRendering (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setseekingWaitsForVideoCompositionRendering (id, value)
			End Set
		#tag EndSetter
		SeekWaitsForVideo As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737461747573206F662074686520706C61796572206974656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getstatus (id)
			End Get
		#tag EndGetter
		Status As PlayerItemStatus
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D656261736520696E666F726D6174696F6E20666F7220746865206974656D2E2028726561642D6F6E6C79290A53686F756C64206265206120434654696D654261736552656620287768696368206973206E6F742079657420696D706C656D656E74656429
		#tag Getter
			Get
			  return gettimebase (mid)
			End Get
		#tag EndGetter
		Timebase As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D6564206D6574616461746120656E636F756E7465726564206D6F737420726563656E746C7920627920746865206D656469612073747265616D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applearray.MakeFromPtr (gettimedMetadata (id))
			End Get
		#tag EndGetter
		TimedMetadata As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204156506C617965724974656D547261636B206F626A656374732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(gettracks(id))
			End Get
		#tag EndGetter
		Tracks As AppleArray
	#tag EndComputedProperty


	#tag Constant, Name = kAVAudioTimePitchAlgorithmLowQualityZeroLatency, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmLowQualityZeroLatency", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAVAudioTimePitchAlgorithmSpectral, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmSpectral", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAVAudioTimePitchAlgorithmTimeDomain, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmTimeDomain", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAVAudioTimePitchAlgorithmVarispeed, Type = Text, Dynamic = False, Default = \"AVAudioTimePitchAlgorithmVarispeed", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = PlayerItemStatus, Type = Integer, Flags = &h0
		Unknown
		  ReadyToPlay
		Failed
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AudioTimePitchAlgorithm"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPlayFastForward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPlayFastReverse"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPlayReverse"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPlaySlowForward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPlaySlowReverse"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanStepBackward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanStepForward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="PlaybackBufferEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PlaybackBufferFull"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PlaybackLikelyToKeepUp"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeekWaitsForVideo"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Status"
			Group="Behavior"
			Type="PlayerItemStatus"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unknown"
				"1 - ReadyToPlay"
				"2 - Failed"
			#tag EndEnumValues
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
