#tag Class
Protected Class AppleAVPlayer
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function addBoundaryTimeObserverForTimes Lib AVFoundationLibname Selector "addBoundaryTimeObserverForTimes:queue:usingBlock:" (id as ptr, times as ptr, queue as ptr, Block as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function addPeriodicTimeObserverForInterval Lib AVFoundationLibname Selector "addPeriodicTimeObserverForInterval:queue:usingBlock:" (id as ptr, interval as AVFoundationFramework . CMTime, queue as ptr, Block as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657175657374732074686520696E766F636174696F6E206F66206120626C6F636B207768656E207370656369666965642074696D6573206172652074726176657273656420647572696E67206E6F726D616C20706C61796261636B2E
		Function AddTimeObserver(times as applearray, block as AppleBlock, queue as ptr = nil) As Ptr
		  return addBoundaryTimeObserverForTimes (id, times.id, queue, block.Handle)
		  
		  // use the return value for removeTimeObserver!
		  // The necessary Observer method for this observer takes no input parameters and returns nothing.
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657175657374732074686520706572696F64696320696E766F636174696F6E206F66206120676976656E20626C6F636B20647572696E6720706C61796261636B20746F207265706F7274206368616E67696E672074696D652E
		Function AddTimeObserver(Interval as AVFoundationFramework.CMTime, block as AppleBlock, queue as ptr = nil) As Ptr
		  return addPeriodicTimeObserverForInterval (id, Interval, queue, block.Handle)
		  
		  // use the return value for removeTimeObserver!
		  // see TimeObserverTemplate for the structure of the block method
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 43616E63656C7320616E792070656E64696E6720707265726F6C6C20726571756573747320616E6420696E766F6B65732074686520636F72726573706F6E64696E6720636F6D706C6574696F6E2068616E646C6572732069662070726573656E742E
		Private Sub CancelPendingPrerolls()
		  cancelPendingPrerolls mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub cancelPendingPrerolls Lib AVFoundationLibname Selector "cancelPendingPrerolls" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub CompletionBlock(finished as Boolean)
		  If me <> nil then RaiseEvent SeekComplete (finished)
		End Sub
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

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E6174656420736F756E642066696C652E
		Sub Constructor(URLName as CFStringRef)
		  Constructor (new appleurl(URLName))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20617564696F20706C6179657220666F7220706C6179696E6720612064657369676E6174656420736F756E642066696C652E
		Sub Constructor(aURL as FolderItem)
		  Constructor (new AppleURL(aurl))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getactionAtItemEnd Lib AVFoundationLibname Selector "actionAtItemEnd" (id as ptr) As AVPlayerActionAtItemEnd
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getallowsExternalPlayback Lib AVFoundationLibname Selector "allowsExternalPlayback" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getappliesMediaSelectionCriteriaAutomatically Lib AVFoundationLibname Selector "appliesMediaSelectionCriteriaAutomatically" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getautomaticallyWaitsToMinimizeStalling Lib AVFoundationLibname Selector "automaticallyWaitsToMinimizeStalling" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getenableRate Lib AVFoundationLibname Selector "enableRate" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getmasterClock Lib AVFoundationLibname Selector "masterClock" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getmediaSelectionCriteriaForMediaCharacteristic Lib AVFoundationLibname Selector "mediaSelectionCriteriaForMediaCharacteristic" (id as ptr, characteristic as CFStringRef) As CFStringRef
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
		Private Declare Function getreasonForWaitingToPlay Lib AVFoundationLibname Selector "reasonForWaitingToPlay" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function gettimeControlStatus Lib AVFoundationLibname Selector "appliesMediaSelectionCriteriaAutomatically" (id as ptr) As AVPlayerTimeControlStatus
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getusesExternalPlaybackWhileExternalScreenIsActive Lib AVFoundationLibname Selector "usesExternalPlaybackWhileExternalScreenIsActive" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getVolume Lib AVFoundationLibname Selector "volume" (id as ptr) As single
	#tag EndExternalMethod

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

	#tag ExternalMethod, Flags = &h21
		Private Declare Function isExternalPlaybackActive Lib AVFoundationLibname Selector "isExternalPlaybackActive" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVPlayer
		  return if (aptr = nil, nil, new AppleAVPlayer(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206175746F6D617469632073656C656374696F6E20637269746572696120666F72206D656469612074686174206861732074686520737065636966696564206D656469612063686172616374657269737469632E
		Function MediaSeelctionCriteria(characteristic as cfstringref) As text
		  return getmediaSelectionCriteriaForMediaCharacteristic (id, characteristic)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206175746F6D617469632073656C656374696F6E20637269746572696120666F72206D656469612074686174206861732074686520737065636966696564206D656469612063686172616374657269737469632E
		Sub MediaSeelctionCriteria(characteristic as cfstringref, assigns value as text)
		  setmediaSelectionCriteriaForMediaCharacteristic (id, characteristic, value)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function outputObscuredDueToInsufficientExternalProtection Lib AVFoundationLibname Selector "outputObscuredDueToInsufficientExternalProtection" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50617573657320706C61796261636B3B20736F756E642072656D61696E7320726561647920746F20726573756D6520706C61796261636B2066726F6D207768657265206974206C656674206F66662E
		Sub Pause()
		  AVFoundationFramework.pause (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 426567696E7320706C61796261636B206F66207468652063757272656E74206974656D2E
		Function Play() As Boolean
		  play (mid)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub play Lib AVFoundationLibname Selector "play" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496D6D6564696174656C7920706C6179732074686520617661696C61626C65206D656469612064617461206174207468652073706563696669656420726174652E20417661696C61626C652073696E6365206D61634F532031302E3132
		Sub Play(Rate As Single)
		  if RespondsToSelector ("playImmediately:atRate:", ClassPtr) then playImmediately mid, rate
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub playImmediately Lib AVFoundationLibname Selector "playImmediately:atRate:" (id as ptr, rate as single)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 426567696E73206C6F6164696E67206D65646961206461746120746F207072696D6520746865206D6564696120706970656C696E657320666F7220706C61796261636B2E
		Sub Preroll(Rate As Single, Block As AppleBlock = Nil)
		  if block = nil then block = new AppleBlock(Addressof PreRollBlock)
		  prerollAtRate mid, rate, block.Handle
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub prerollAtRate Lib AVFoundationLibname Selector "prerollAtRate:completionHandler:" (id as ptr, rate as single, completion as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub PrerollBlock(DataLoaded as Boolean)
		  If me <> nil then RaiseEvent PrerollComplete (DataLoaded)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616E63656C7320612070726576696F75736C79207265676973746572656420706572696F646963206F7220626F756E646172792074696D65206F627365727665722E
		Sub RemoveTimeObserver(ObserverPtr as Ptr)
		  removeTimeObserver (id, ObserverPtr)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub removeTimeObserver Lib AVFoundationLibname Selector "removeTimeObserver:" (id as ptr, observer as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub replaceCurrentItemWithPlayerItem Lib AVFoundationLibname Selector "replaceCurrentItemWithPlayerItem:" (id as ptr, playerItem As Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265706C61636573207468652063757272656E7420706C61796572206974656D20776974682061206E657720706C61796572206974656D2E
		Sub ReplaceItem(PlayerItem As AppleAVPlayerItem)
		  replaceCurrentItemWithPlayerItem (id, if (PlayerItem = nil, nil, PlayerItem.id))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420706C61796261636B2074696D6520746F2074686520737065636966696564206461746520616E64206578656375746573207468652073706563696669656420626C6F636B207768656E20746865207365656B206F7065726174696F6E2068617320656974686572206265656E20636F6D706C65746564206F72206265656E20696E7465727275707465642E
		Sub Seek(Date As AppleDate, block as AppleBlock = nil)
		  if Block = nil then Block = new appleblock (AddressOf CompletionBlock)
		  seekToDate mid, date.id, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420706C61796261636B2074696D6520746F20746865207370656369666965642074696D6520616E64206578656375746573207468652073706563696669656420626C6F636B207768656E20746865207365656B206F7065726174696F6E2068617320656974686572206265656E20636F6D706C65746564206F72206265656E20696E7465727275707465642E
		Sub Seek(Time As AVFoundationFrameWork.cmtime, block as AppleBlock = nil)
		  if Block = nil then Block = new appleblock (AddressOf CompletionBlock)
		  seekToTime mid, time, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420706C61796261636B2074696D652077697468696E2061207370656369666965642074696D6520626F756E6420616E6420696E766F6B6573207468652073706563696669656420626C6F636B207768656E20746865207365656B206F7065726174696F6E2068617320656974686572206265656E20636F6D706C65746564206F72206265656E20696E7465727275707465642E
		Sub Seek(Time As AVFoundationFrameWork.cmtime, toleranceBEfore as AVFoundationFramework.cmtime, ToleranceAfter as AVFoundationFramework.CMTime, block as AppleBlock = nil)
		  if Block = nil then Block = new appleblock (AddressOf CompletionBlock)
		  seekToTimeTolerance mid, time, toleranceBEfore, ToleranceAfter, block.Handle
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub seekToDate Lib AVFoundationLibname Selector "seekToDate:completionHandler:" (id as ptr, value as Ptr, completion as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub seekToTime Lib AVFoundationLibname Selector "seekToTime:completionHandler:" (id as ptr, value as AVFoundationFrameWork . cmtime, completion as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub seekToTimeTolerance Lib AVFoundationLibname Selector "seekToTime:toleranceBefore:toleranceAfter:completionHandler:" (id as ptr, value as AVFoundationFrameWork . cmtime, before as AVFoundationFramework . CMTime, After As AVFoundationFramework . CMTime, completion as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setactionAtItemEnd Lib AVFoundationLibname Selector "setActionAtItemEnd:" (id as ptr, value as AVPlayerActionAtItemEnd)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setallowsExternalPlayback Lib AVFoundationLibname Selector "setAllowsExternalPlayback:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setappliesMediaSelectionCriteriaAutomatically Lib AVFoundationLibname Selector "setAppliesMediaSelectionCriteriaAutomatically:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setautomaticallyWaitsToMinimizeStalling Lib AVFoundationLibname Selector "setAutomaticallyWaitsToMinimizeStalling:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setenableRate Lib AVFoundationLibname Selector "setEnableRate:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setmasterClock Lib AVFoundationLibname Selector "setMasterClock:" (id as ptr, clock as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setmediaSelectionCriteriaForMediaCharacteristic Lib AVFoundationLibname Selector "setMediaSelectionCriteria:forMediaCharacteristic:" (id as ptr, characteristic as cfstringref, value as cfstringref)
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

	#tag Method, Flags = &h0, Description = 53796E6368726F6E697A65732074686520706C61796261636B207261746520616E642074696D65206F66207468652063757272656E74206974656D207769746820616E2065787465726E616C20736F757263652E
		Sub SetRate(rate as single, itemTime as AVFoundationFramework.CMTime, HostClockTime as AVFoundationFramework.CMTime)
		  setRatetime (id, rate, itemTime, HostClockTime)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setRateTime Lib AVFoundationLibname Selector "setRate:time:atHostTime:" (id as ptr, rate As single, itemTime as AVFoundationFramework . CMTime, HostClockTime as AVFoundationFramework . CMTime)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setusesExternalPlaybackWhileExternalScreenIsActive Lib AVFoundationLibname Selector "setUsesExternalPlaybackWhileExternalScreenIsActive:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setVolume Lib AVFoundationLibname Selector "setVolume:" (id as ptr, volume as single)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53746F707320706C61796261636B20616E6420756E646F657320746865207365747570206E656564656420666F7220706C61796261636B2E
		Function Stop() As Boolean
		   AVFoundationFramework.stop (mid)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TimeObserverTemplate(Time as AVFoundationFramework.CMTime)
		  // This is a template for addTimeObserver
		  // uncomment the following:
		  
		  #pragma unused time
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120507265526F6C6C206D6574686F642066696E69736865732E
		Event PrerollComplete(DataLoaded As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061205365656B206D6574686F6420666F756E6420746865207370656369666965642074696D652E
		Event SeekComplete(Finished As Boolean)
	#tag EndHook


	#tag Note, Name = Status finished\x2C but extendable
		macOS 10.12
		Enumeration MediaCharateristics needs a conversion ti its text constant in order to be useful
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616374696F6E20746F20706572666F726D207768656E207468652063757272656E7420706C61796572206974656D206861732066696E697368656420706C6179696E672E
		#tag Getter
			Get
			  return getactionAtItemEnd (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setActionAtItemEnd mid, value
			End Set
		#tag EndSetter
		ActionAtItemEnd As AVPlayerActionAtItemEnd
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520706C6179657220616C6C6F777320737769746368696E6720746F2065787465726E616C20706C61796261636B206D6F64652E
		#tag Getter
			Get
			  return getallowsExternalPlayback (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAllowsExternalPlayback mid, value
			End Set
		#tag EndSetter
		AllowsExternalPlayback As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652072656365697665722073686F756C64206170706C79207468652063757272656E742073656C656374696F6E206372697465726961206175746F6D61746963616C6C7920746F20706C61796572206974656D732E
		#tag Getter
			Get
			  return getappliesMediaSelectionCriteriaAutomatically  (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setappliesMediaSelectionCriteriaAutomatically mid, value
			End Set
		#tag EndSetter
		AppliesMediaSelectionCriteriaAutomatically As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520706C617965722073686F756C64206175746F6D61746963616C6C792064656C617920706C61796261636B20696E206F7264657220746F206D696E696D697A65207374616C6C696E672E20417661696C6169626C652073696E6365206D61634F532031302E3132
		#tag Getter
			Get
			  if RespondsToSelector("automaticallyWaitsToMinimizeStalling", classptr) then return getautomaticallyWaitsToMinimizeStalling (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("automaticallyWaitsToMinimizeStalling", classptr) then setautomaticallyWaitsToMinimizeStalling id, value
			End Set
		#tag EndSetter
		AutomaticallyWaitsToMinimizeStalling As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getappliesMediaSelectionCriteriaAutomatically (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAppliesMediaSelectionCriteriaAutomatically id, value
			End Set
		#tag EndSetter
		AutomaticMediaSelection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204156417564696F53657373696F6E4368616E6E656C4465736372697074696F6E206F626A65637473206173736F63696174656420776974682074686520617564696F20706C61796572
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

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = Nil then  mClassPtr = FoundationFrameWork.NSClassFromString("AVPlayer")
			  Return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520706C61796572207573657320636C6F7365642063617074696F6E696E672E
		#tag Getter
			Get
			  Declare function isClosedCaptionDisplayEnabled lib AVFoundationLibName selector "isClosedCaptionDisplayEnabled" (id as ptr) as Boolean
			  return isClosedCaptionDisplayEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setClosedCaptionDisplayEnabled lib AVFoundationLibName selector "setClosedCaptionDisplayEnabled:" (id as ptr, value as Boolean)
			  setClosedCaptionDisplayEnabled id, value
			End Set
		#tag EndSetter
		ClosedCaptionDisplay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706C61796572E28099732063757272656E7420706C61796572206974656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function currentItem lib AVFoundationLibName selector "currentItem" (id as ptr) as Ptr
			  return AppleAVPlayerItem.makefromPtr (currentItem (id))
			End Get
		#tag EndGetter
		CurrentItem As AppleAVPlayerItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E742074696D65206F66207468652063757272656E7420706C61796572206974656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVFoundationFramework.getcurrentTime (id)
			End Get
		#tag EndGetter
		currentTime As AVFoundationFramework.CMTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 49662074686520706C61796572E280997320737461747573206973204156506C617965725374617475734661696C65642C20746869732064657363726962657320746865206572726F7220746861742063617573656420746865206661696C7572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleError.MakefromPtr (AVFoundationFramework.geterror(id))
			End Get
		#tag EndGetter
		Error As AppleError
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520706C617965722069732063757272656E746C7920706C6179696E6720766964656F20696E2065787465726E616C20706C61796261636B206D6F64652E2028726561642D6F706E6C7929
		#tag Getter
			Get
			  return isExternalPlaybackActive (mid)
			End Get
		#tag EndGetter
		ExternalPlaybackActive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520766964656F2067726176697479206F662074686520706C6179657220666F722065787465726E616C20706C61796261636B206D6F6465206F6E6C792E
		#tag Getter
			Get
			  select case ExternalPlaybackVideoGravityText
			  case AVLayerVideoGravityResize
			    return AVLayerGravity.Fill
			  case AVLayerVideoGravityResizeAspect
			    return AVLayerGravity.FitProportional
			  case AVLayerVideoGravityResizeAspectFill
			    return AVLayerGravity.FillProportional
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim myvalue as text
			  select case value
			  case AVLayerGravity.Fill
			    myvalue = AVLayerVideoGravityResize
			  case AVLayerGravity.FitProportional
			    myvalue= AVLayerVideoGravityResizeAspect
			  case AVLayerGravity.FillProportional
			    myvalue = AVLayerVideoGravityResizeAspectFill
			  end select
			  ExternalPlaybackVideoGravityText = myvalue
			End Set
		#tag EndSetter
		ExternalPlaybackVideoGravity As AVLayerGravity
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Declare function externalPlaybackVideoGravity lib AVFoundationLibName selector "externalPlaybackVideoGravity" (id as ptr) as CFStringRef
			  return externalPlaybackVideoGravity (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setExternalPlaybackVideoGravity lib AVFoundationLibName selector "setExternalPlaybackVideoGravity:" (id as ptr, value as CFStringRef)
			  setExternalPlaybackVideoGravity id, value
			End Set
		#tag EndSetter
		Protected ExternalPlaybackVideoGravityText As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520706C617965722073686F756C64206175746F6D61746963616C6C792073776974636820746F2065787465726E616C20706C61796261636B206D6F6465207768696C65207468652065787465726E616C2073637265656E206D6F64652069732061637469766520696E206F7264657220746F20706C617920766964656F20636F6E74656E742E
		#tag Getter
			Get
			  return getusesExternalPlaybackWhileExternalScreenIsActive (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUsesExternalPlaybackWhileExternalScreenIsActive id, value
			End Set
		#tag EndSetter
		ExternalPlaybackWhileExternalScreenActive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D617374657220636C6F636B207573656420666F72206974656D2074696D6562617365732E2053686F756C64206265206120434D436C6F636B526566
		#tag Note
			// Here should follow a CMClockRef class!
		#tag EndNote
		#tag Getter
			Get
			  return getmasterClock (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmasterClock (id, value)
			End Set
		#tag EndSetter
		MasterClock As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520617564696F206F7574707574206F662074686520706C61796572206973206D757465642E
		#tag Getter
			Get
			  Declare function isMuted lib AVFoundationLibName selector "isMuted" (id as ptr) as Boolean
			  return isMuted (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMuted lib AVFoundationLibName selector "setMuted:" (id as ptr, value as Boolean)
			  setMuted id, value
			End Set
		#tag EndSetter
		Muted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620617564696F206368616E6E656C7320696E2074686520736F756E64206173736F63696174656420776974682074686520617564696F20706C617965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVFoundationFramework.getnumberOfChannels (mid)
			End Get
		#tag EndGetter
		NumberOfChannels As Integer
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

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572206F7574707574206973206265696E67206F627363757265642062656361757365206F6620696E73756666696369656E742065787465726E616C2070726F74656374696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return outputObscuredDueToInsufficientExternalProtection (id)
			End Get
		#tag EndGetter
		OutputObscured As Boolean
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520726561736F6E2074686520706C617965722069732063757272656E746C792077616974696E6720666F7220706C61796261636B20746F20626567696E206F7220726573756D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365206D61634F732031302E31322E
		#tag Getter
			Get
			  if RespondsToSelector ("reasonForWaitingToPlay", classptr) then return getreasonForWaitingToPlay (mid)
			End Get
		#tag EndGetter
		ReasonForWaitingToPlay As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F2073657474696E677320666F722074686520617564696F20706C617965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AVAudioSettingsDictionary(AppleDictionary.MakeFromPtr(AVFoundationFramework.getsettings (mid)))
			End Get
		#tag EndGetter
		Settings As AVAudioSettingsDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E6469636174657320776865746865722074686520706C617965722063616E206265207573656420666F7220706C61796261636B2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function status lib AVFoundationLibName selector "status" (id as ptr) as AVPlayerStatus
			  return status (id)
			End Get
		#tag EndGetter
		Status As AVPlayerStatus
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220706C61796261636B2069732063757272656E746C7920696E2070726F67726573732C2070617573656420696E646566696E6974656C792C206F722073757370656E646564207768696C652077616974696E6720666F7220617070726F707269617465206E6574776F726B20636F6E646974696F6E732E2028726561642D6F6E6C792920417661696C61626C652073696E6365206D61634F532031302E3132
		#tag Getter
			Get
			  if RespondsToSelector("timeControlStatus", classptr) then return gettimeControlStatus (mid)
			End Get
		#tag EndGetter
		TimeControlStatus As AVPlayerTimeControlStatus
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


	#tag Constant, Name = AVMediaCharacteristicAudible, Type = Text, Dynamic = False, Default = \"AVMediaCharacteristicAudible", Scope = Private
	#tag EndConstant

	#tag Constant, Name = AVMediaCharacteristicFrameBased, Type = Text, Dynamic = False, Default = \"AVMediaCharacteristicFrameBased", Scope = Private
	#tag EndConstant

	#tag Constant, Name = AVMediaCharacteristicLegible, Type = Text, Dynamic = False, Default = \"AVMediaCharacteristicLegible", Scope = Private
	#tag EndConstant

	#tag Constant, Name = AVMediaCharacteristicVisual, Type = Text, Dynamic = False, Default = \"AVMediaCharacteristicVisual", Scope = Private
	#tag EndConstant


	#tag Enum, Name = AVPlayerActionAtItemEnd, Type = Integer, Flags = &h0
		Advance
		  Pause
		None
	#tag EndEnum

	#tag Enum, Name = AVPlayerStatus, Type = Integer, Flags = &h0
		Unknown
		  ReadyToPlay
		Failed
	#tag EndEnum

	#tag Enum, Name = AVPlayerTimeControlStatus, Type = Integer, Flags = &h0
		paused = 0
		  waitingToPlayAtSpecifiedRate = 1
		playing = 2
	#tag EndEnum

	#tag Enum, Name = MediaCharacteristics, Type = Integer, Flags = &h0
		Visual
		  Audible
		  Legible
		FrameBased
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActionAtItemEnd"
			Group="Behavior"
			Type="AVPlayerActionAtItemEnd"
			EditorType="Enum"
			#tag EnumValues
				"0 - Advance"
				"1 - Pause"
				"2 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsExternalPlayback"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticMediaSelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClosedCaptionDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExternalPlaybackActive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExternalPlaybackWhileExternalScreenActive"
			Group="Behavior"
			Type="Boolean"
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
			Name="Muted"
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
			Name="OutputObscured"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rate"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Status"
			Group="Behavior"
			Type="AVPlayerStatus"
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
		#tag ViewProperty
			Name="Volume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
