#tag Class
Protected Class AppleAVAudioSession
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 416374697661746573206F7220646561637469766174657320796F757220617070E280997320617564696F2073657373696F6E2E2052696173657320616E206572726F72657863657074696F6E206F6E206661696C7572652E
		Sub Active(assigns Active as Boolean)
		  dim err as new AppleError
		  dim p as ptr = err.id
		  dim success as Boolean = setactive (SharedInstance.id, active, p)
		  if not success then
		    err = AppleError.MakefromPtr (p)
		    MakeException err.LocalizedDescription
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416374697661746573206F7220646561637469766174657320796F757220617070E280997320617564696F2073657373696F6E2C206F7074696F6E616C6C79206175746F2D696E666F726D696E6720696E74657272757074656420617564696F2D73657373696F6E73206F6E20646561637469766174696F6E2E2052696173657320616E206572726F72657863657074696F6E206F6E206661696C7572652E
		Function Active(NotiFyOthersOnDeactivation as Boolean, assigns Active as Boolean) As Boolean
		  dim err as new AppleError
		  dim p as ptr = err.id
		  dim success as Boolean = setactiveoptions (SharedInstance.id, active, if (NotiFyOthersOnDeactivation, 1, 0), p)
		  if not success then
		    err = AppleError.MakefromPtr (p)
		    MakeException err.LocalizedDescription
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub AudioHintBlock(Notificationptr as ptr)
		  dim Notification as new AppleNotification (Notificationptr)
		  if me <> nil then RaiseEvent SecondaryAudioHint (Notification.UserInfo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Category(options as appleavaudiosessioncategoryoptions,  assigns value as  AVAudiosessioncategory)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.Id
		    dim result as boolean = SetCategoryOptions (SharedInstance.id, CategoryConstant(value), options.id, p)
		    if not result then err = new AppleError(p)
		    MakeException err.LocalizedDescription
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CategoryConstant(value as AVAudioSessionCategory) As text
		  dim result as text
		  Select case value
		  case AVAudioSessionCategory.Ambient
		    result = kAVAudioSessionCategoryAmbient
		  case AVAudioSessionCategory.AudioProcessing
		    result = kAVAudioSessionCategoryAudioProcessing
		  case AVAudioSessionCategory.MultiRoute
		    result = kAVAudioSessionCategoryMultiRoute
		  case AVAudioSessionCategory.PlayAndRecord
		    result = kAVAudioSessionCategoryPlayAndRecord
		  case AVAudioSessionCategory.Playback
		    result = kAVAudioSessionCategoryPlayback
		  case AVAudioSessionCategory.Record
		    result = kAVAudioSessionCategoryRecord
		  case AVAudioSessionCategory.SoloAmbient
		    result = kAVAudioSessionCategorySoloAmbient
		  End Select
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204156417564696F73657373696F6E20287768696368206973206261736963616C6C792061207772617070657220746F20616363657373207468652073686172656420696E7374616E636529
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (SharedInstance.id)
		  // Attach notification blocks:
		  dim ChangeBlock as new AppleBlock (addressof RouteChangeBlock)
		  NotificationObjects.Append AppleNotificationCenter.AddObserver (kAVAudioSessionRouteChangeNotification, self, AppleOperationQueue.MainQueue, ChangeBlock)
		  dim interruptblock as new AppleBlock (addressof InterruptionBlock)
		  NotificationObjects.Append AppleNotificationCenter.addObserver (kAVAudioSessionInterruptionNotification, self, AppleOperationQueue.MainQueue, interruptblock)
		  dim ServiceBlock as new AppleBlock (addressof ServiceLostBlock)
		  NotificationObjects.Append AppleNotificationCenter.addObserver (kAVAudioSessionMediaServicesWereLostNotification, self, AppleOperationQueue.MainQueue, ServiceBlock)
		  dim ResetBlock as new AppleBlock (addressof ServiceResetBlock)
		  NotificationObjects.Append AppleNotificationCenter.addObserver (kAVAudioSessionMediaServicesWereResetNotification, self, AppleOperationQueue.MainQueue, resetBlock)
		  dim Silence as new AppleBlock (addressof AudioHintBlock)
		  NotificationObjects.Append AppleNotificationCenter.addObserver (kAVAudioSessionSilenceSecondaryAudioHintNotification , self, AppleOperationQueue.MainQueue, Silence)
		  xojo.core.timer.CallLater 0,AddressOf informonOpen
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub destructor()
		  for each ob as AppleNotificationObject in NotificationObjects
		    AppleNotificationCenter.RemoveObserver ob
		  next
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getavailableCategories Lib AVFoundationLibname Selector "availableCategories" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getavailableInputs Lib AVFoundationLibname Selector "availableInputs" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getavailableModes Lib AVFoundationLibname Selector "availableModes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcategory Lib AVFoundationLibname Selector "category" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcategoryOptions Lib AVFoundationLibname Selector "categoryOptions" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcurrentRoute Lib AVFoundationLibname Selector "currentRoute" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getinputDataSource Lib AVFoundationLibname Selector "inputDataSource" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getinputDataSources Lib AVFoundationLibname Selector "inputDataSources" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getInputGain Lib AVFoundationLibname Selector "inputGain" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getinputLatency Lib AVFoundationLibname Selector "inputLatency" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getinputNumberOfChannels Lib AVFoundationLibname Selector "inputNumberOfChannels" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getIOBufferDuration Lib AVFoundationLibname Selector "IOBufferDuration" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmaximumInputNumberOfChannels Lib AVFoundationLibname Selector "maximumInputNumberOfChannels" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmaximumOutputNumberOfChannels Lib AVFoundationLibname Selector "maximumOutputNumberOfChannels" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmode Lib AVFoundationLibname Selector "mode" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getoutputDataSource Lib AVFoundationLibname Selector "outputDataSource" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getoutputDataSources Lib AVFoundationLibname Selector "outputDataSources" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getoutputLatency Lib AVFoundationLibname Selector "outputLatency" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getoutputNumberOfChannels Lib AVFoundationLibname Selector "outputNumberOfChannels" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getoutputVolume Lib AVFoundationLibname Selector "outputVolume" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getpreferredInput Lib AVFoundationLibname Selector "preferredInput" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getpreferredInputNumberOfChannels Lib AVFoundationLibname Selector "preferredInputNumberOfChannels" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getpreferredIOBufferDuration Lib AVFoundationLibname Selector "preferredIOBufferDuration" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getpreferredOutputNumberOfChannels Lib AVFoundationLibname Selector "preferredOutputNumberOfChannels" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getpreferredSampleRate Lib AVFoundationLibname Selector "preferredSampleRate" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getrecordPermission Lib AVFoundationLibname Selector "recordPermission" (id as ptr) As OSType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getsampleRate Lib AVFoundationLibname Selector "sampleRate" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getsecondaryAudioShouldBeSilencedHint Lib AVFoundationLibname Selector "secondaryAudioShouldBeSilencedHint" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getsharedInstance Lib AVFoundationLibname Selector "sharedInstance" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnOpen()
		  RaiseEvent Open
		  HasInitialized = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InputDataSource(assigns DataSource as appleavaudiosessiondatasourcedescription)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.id
		    dim success as Boolean = SetInputdatasource (SharedInstance.id, DataSource.id,p)
		    if not success then 
		      err = AppleError.MakefromPtr(p)
		      MakeException err.LocalizedDescription
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub InterruptionBlock(Notificationptr as ptr)
		  dim Notification as new AppleNotification (Notificationptr)
		  if me <> nil then RaiseEvent Interruption (Notification.UserInfo)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isInputAvailable Lib AVFoundationLibname Selector "isInputAvailable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isInputGainSettable Lib AVFoundationLibname Selector "isInputGainSettable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isOtherAudioPlaying Lib AVFoundationLibname Selector "isOtherAudioPlaying" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioSession
		  return if (aptr = nil, nil, new AppleAVAudioSession(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OutputDataSource(assigns DataSource as AppleAVAudioSessionDataSourceDescription)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.id
		    dim success as Boolean = SetOutputdatasource (SharedInstance.id, DataSource.id, p)
		    if not success then 
		      err = AppleError.MakefromPtr(p)
		      MakeException err.LocalizedDescription
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656D706F726172696C79206368616E676573207468652063757272656E7420617564696F20726F7574652E2052616973657320616E206572726F72657863657074696F6E206966206F76657272696465206661696C732E
		Sub OverrideOutputAudioPort(Override as AVAudioSessionPortOverride)
		  dim uintval as uint32 = OST_spkr
		  dim err as new AppleError
		  dim p as ptr = err.id
		  dim result as boolean = setoverrideOutputAudioPort (SharedInstance.id, if (Override = AVAudioSessionPortOverride.Speaker, uintval, 0), p)
		  if not result then 
		    err = AppleError.MakefromPtr(p)
		    MakeException err.LocalizedDescription
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub PermissionBlock(Granted as Boolean)
		  if me <> nil then RaiseEvent RecordPermissionReceived (granted)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreferredInput(Assigns Input as appleAVAudioSessionPortDescription)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.id
		    dim success as Boolean = setPreferredInput (mid, input.id,p)
		    if not success then 
		      err = AppleError.MakefromPtr(p)
		      MakeException err.LocalizedDescription
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreferredInputNumberOfChannels(assigns value as integer)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.id
		    dim success as Boolean = SetPreferredInputNumberOfChannels (mid, value,p)
		    if not success then 
		      err = AppleError.MakefromPtr(p)
		      MakeException err.LocalizedDescription
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreferredIOBufferDuration(assigns value as double)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.id
		    dim success as Boolean = SetPreferredIOBufferDuration (mid, value,p)
		    if not success then 
		      err = AppleError.MakefromPtr(p)
		      MakeException err.LocalizedDescription
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreferredOutputNumberOfChannels(assigns value as integer)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.id
		    dim success as Boolean = SetPreferredOutputNumberOfChannels (mid, value,p)
		    if not success then 
		      err = AppleError.MakefromPtr(p)
		      MakeException err.LocalizedDescription
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreferredSampleRate(assigns value as double)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.id
		    dim success as Boolean = setPreferredSampleRate (mid, value,p)
		    if not success then 
		      err = AppleError.MakefromPtr(p)
		      MakeException err.LocalizedDescription
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265717565737473207468652075736572E2809973207065726D697373696F6E20666F7220617564696F207265636F7264696E672E2057696C6C20666972652074686520617070726F707269617465206576656E7420617320726573756C74206F722063616C6C206120626C6F636B20696620796F7520646566696E65206F6E652E
		Sub RequestRecordPermission(Permission As AppleBlock = nil)
		  if Permission = nil then Permission = new AppleBlock (AddressOf PermissionBlock)
		  RequestRecordPermission (SharedInstance.Id, Permission.Handle)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub requestRecordPermission Lib AVFoundationLibname Selector "requestRecordPermission:" (id as ptr, block as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub RouteChangeBlock(Notificationptr as ptr)
		  dim Notification as new AppleNotification (Notificationptr)
		  if me <> nil then RaiseEvent RouteChanged (Notification.UserInfo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub ServiceLostBlock()
		  if me <> nil then RaiseEvent ServicesLost ()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub ServiceResetBlock()
		  if me <> nil then RaiseEvent ServicesReset ()
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setactive Lib AVFoundationLibname Selector "setActive:error:" (id as ptr, value as boolean, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setActiveOptions Lib AVFoundationLibname Selector "setActive:withOptions:error:" (id as ptr, value as boolean, options as uinteger, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub SetCategory(Category as CFStringRef)
		  if HasInitialized then
		    dim err as new AppleError
		    dim p as ptr = err.Id
		    dim result as boolean= SetCategory (SharedInstance.id, Category, p)
		    if not result then err = new AppleError(p)
		    MakeException err.LocalizedDescription
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setcategory Lib AVFoundationLibname Selector "setCategory:error:" (id as ptr, value as CFStringRef, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setcategoryOptions Lib AVFoundationLibname Selector "setCategory:withOptions:error:" (id as ptr, value as CFStringRef, options as uinteger, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setInputDataSource Lib AVFoundationLibname Selector "setInputDataSource:error:" (id as ptr, value as ptr, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setInputGain Lib AVFoundationLibname Selector "setInputGain:error:" (id as ptr, value as single, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setmode Lib AVFoundationLibname Selector "setMode:error:" (id as ptr, value as CFStringRef, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setOutputDataSource Lib AVFoundationLibname Selector "setOutputDataSource:error:" (id as ptr, value as ptr, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setoverrideOutputAudioPort Lib AVFoundationLibname Selector "overrideOutputAudioPort:error:" (id as ptr, value as uint32, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setPreferredInput Lib AVFoundationLibname Selector "setPreferredInput:error:" (id as ptr, value as ptr, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setPreferredInputNumberOfChannels Lib AVFoundationLibname Selector "setPreferredInputNumberOfChannels:error:" (id as ptr, value as integer, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setPreferredIOBufferDuration Lib AVFoundationLibname Selector "setPreferredIOBufferDuration:error:" (id as ptr, value as double, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setPreferredOutputNumberOfChannels Lib AVFoundationLibname Selector "setPreferredOutputNumberOfChannels:error:" (id as ptr, value as integer, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function setPreferredSampleRate Lib AVFoundationLibname Selector "setPreferredSampleRate:error:" (id as ptr, value as double, byref error as ptr) As Boolean
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event Interruption(NotificationDict as AppleDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120526571756573745265636F72645065726D697373696F6E206D6574686F642072657475726E732E
		Event RecordPermissionReceived(Granted as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RouteChanged(NotificationDict as AppleDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SecondaryAudioHint(NotificationDict as AppleDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ServicesLost()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ServicesReset()
	#tag EndHook


	#tag Note, Name = Read me!
		
		AVAudioSession is a singleton object – you will usually create only one. 
		For easy handling, drag one onto the screen where you want to use it or declare it as a (global) property and use attachHandler to tweak its events to your own methods.
		
		
	#tag EndNote

	#tag Note, Name = Status
		
		Completed, but a few constants for NotificationDictionaries could follow
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F2073657373696F6E2063617465676F7269657320617661696C61626C65206F6E20746865206465766963652E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector ("availableCategories", classptr) then return applearray.MakeFromPtr(getavailableCategories (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		AvailableCategories As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620696E70757420706F72747320617661696C61626C6520666F7220726F7574696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applearray.MakeFromPtr(getavailableInputs (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		AvailableInputs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F2073657373696F6E206D6F64657320617661696C61626C65206F6E20746865206465766963652E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if respondsToSelector ("availableModes", ClassPtr ) then return applearray.MakeFromPtr(getavailablemodes (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		AvailableModes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E7420617564696F2073657373696F6E2063617465676F72792E2053657474696E6720746869732076616C7565206D617920726169736520616E206572726F72657863657074696F6E2069662074686520726571756573746564206368616E6765206973206E6F7420706F737369626C652E20596F752063616E20736574207468652063617465676F727920746F6765746865722077697468204156417564696F53657373696F6E43617465676F72794F7074696F6E7320746F6F2C
		#tag Getter
			Get
			  select case CategoryText
			  case kAVAudioSessionCategoryAmbient
			    return AVAudioSessionCategory.Ambient
			  case kAVAudioSessionCategoryAudioProcessing
			    return AVAudioSessionCategory.AudioProcessing
			  case kAVAudioSessionCategoryMultiRoute
			    return AVAudioSessionCategory.MultiRoute
			  case kAVAudioSessionCategoryPlayAndRecord
			    return AVAudioSessionCategory.PlayAndRecord
			  case kAVAudioSessionCategoryPlayback
			    return AVAudioSessionCategory.Playback
			  case kAVAudioSessionCategoryRecord
			    return AVAudioSessionCategory.Record
			  case kAVAudioSessionCategorySoloAmbient
			    return AVAudioSessionCategory.SoloAmbient
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetCategory CategoryConstant (value)
			End Set
		#tag EndSetter
		Category As AVAudioSessionCategory
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7074696F6E73206173736F6369617465642077697468207468652063757272656E7420617564696F2073657373696F6E2063617465676F72792E
		#tag Getter
			Get
			  return new AppleAVAudioSessionCategoryOptions( getcategoryoptions (SharedInstance.id))
			End Get
		#tag EndGetter
		CategoryOptions As AppleAVAudioSessionCategoryOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21, Description = 5468652063757272656E7420617564696F2073657373696F6E2063617465676F72792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcategory (SharedInstance.id)
			End Get
		#tag EndGetter
		Private CategoryText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioSession")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A6563742064657363726962696E67207468652063757272656E7420617564696F20696E70757420616E64206F757470757420726F7574652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleAVAudioSessionRouteDescription.MakeFromPtr(getcurrentRoute (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		CurrentRoute As AppleAVAudioSessionRouteDescription
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private HasInitialized As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220616E20617564696F20696E707574207061746820697320617661696C61626C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isInputAvailable (SharedInstance.id)
			End Get
		#tag EndGetter
		InputAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620617661696C61626C65206461746120736F757263657320666F722074686520617564696F2073657373696F6EE28099732063757272656E7420696E70757420706F72742E2052616973657320616E206572726F72657863657074696F6E2069662073657474696E67206974206661696C732E
		#tag Getter
			Get
			  return AppleAVAudioSessionDataSourceDescription.MakeFromPtr(getinputDataSource (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		InputDataSource As AppleAVAudioSessionDataSourceDescription
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr(getinputDataSources (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		InputDataSources As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206761696E206170706C69656420746F20696E70757473206173736F6369617465642077697468207468652073657373696F6E2E2052616973657320616E206572726F72657863657074696F6E2069662073657474696E67206974206661696C732E
		#tag Getter
			Get
			  return getinputGain (SharedInstance.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputGainSettable  then
			    dim err as new AppleError
			    dim p as ptr = err.id
			    dim success as Boolean = SetInputGain (mid, value,p)
			    if not success then
			      err = AppleError.MakefromPtr(p)
			      MakeException err.LocalizedDescription
			    end if
			  end if
			End Set
		#tag EndSetter
		InputGain As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696E707574206761696E2063616E206265207365742E202D38726561642D6F6E6C7929
		#tag Getter
			Get
			  return isInputGainSettable (SharedInstance.id)
			End Get
		#tag EndGetter
		InputGainSettable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6174656E637920666F7220617564696F20696E7075742C20696E207365636F6E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getinputLatency (SharedInstance.id)
			End Get
		#tag EndGetter
		InputLatency As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620617564696F20696E707574206368616E6E656C7320666F72207468652063757272656E7420726F7574652E2028726561642D6F6E6C79290A5573652050656665727265644E756D6265724F66496E7075744368616E6E656C7320746F206368616E67652E
		#tag Getter
			Get
			  return getinputNumberOfChannels (SharedInstance.id)
			End Get
		#tag EndGetter
		InputNumberOfChannels As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520492F4F20627566666572206475726174696F6E2C20696E207365636F6E64732C20746861742069732063757272656E746C7920696E206566666563742E2028726561642D6F6E6C79292E2055736520507265666572726564494F4275666665724475726174696F6E20746F206368616E67652E
		#tag Getter
			Get
			  return getIOBufferDuration (SharedInstance.id)
			End Get
		#tag EndGetter
		IOBufferDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C617267657374206E756D626572206F6620696E707574206368616E6E656C7320617661696C61626C6520666F72207468652063757272656E7420726F7574652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmaximumInputNumberOfChannels (SharedInstance.id)
			End Get
		#tag EndGetter
		MaximumInputNumberOfChannels As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C617267657374206E756D626572206F66206F7574707574206368616E6E656C7320617661696C61626C6520666F72207468652063757272656E7420726F7574652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmaximumOutputNumberOfChannels (SharedInstance.id)
			End Get
		#tag EndGetter
		MaximumOutputNumberOfChannels As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E7420617564696F2073657373696F6E206D6F64652E204368616E67696E67206974206D69676874207269736520616E206572726F72657863657074696F6E202D206D616B65207375726520746F20636174636820697421
		#tag Getter
			Get
			  select case ModeText
			  case kAVAudioSessionModeDefault
			    return AVAudioSessionMode.Default
			  case kAVAudioSessionModeGameChat
			    return AVAudioSessionMode.GameChat
			  case kAVAudioSessionModeMeasurement
			    return AVAudioSessionMode.Measurement
			  case kAVAudioSessionModeMoviePlayback
			    return AVAudioSessionMode.MoviePlayback
			  case kAVAudioSessionModeSpokenAudio
			    return AVAudioSessionMode.SpokenAudio
			  case kAVAudioSessionModeVideoChat
			    return AVAudioSessionMode.VideoChat
			  case kAVAudioSessionModeVideoRecording
			    return AVAudioSessionMode.VideoRecording
			  case kAVAudioSessionModeVoiceChat
			    return AVAudioSessionMode.VoiceChat
			  end select
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim result as text
			  Select case value
			  case AVAudioSessionMode.Default
			    result = kAVAudioSessionModeDefault
			  case AVAudioSessionMode.GameChat
			    result = kAVAudioSessionModeGameChat
			  case AVAudioSessionMode.Measurement
			    result = kAVAudioSessionModeMeasurement
			  case AVAudioSessionMode.MoviePlayback
			    result = kAVAudioSessionModeMoviePlayback
			  case AVAudioSessionMode.SpokenAudio
			    result = kAVAudioSessionModeSpokenAudio
			  case AVAudioSessionMode.VideoChat
			    result = kAVAudioSessionModeVideoChat
			  case AVAudioSessionMode.VideoRecording
			    result = kAVAudioSessionModeVideoRecording
			  case AVAudioSessionMode.VoiceChat
			    result = kAVAudioSessionModeVoiceChat
			  End Select
			  dim err as new AppleError
			  dim p as ptr = err.id
			  dim success as Boolean = SetMode (mid, result,p)
			  err = AppleError.MakefromPtr(p)
			  if not success then MakeException err.LocalizedDescription
			End Set
		#tag EndSetter
		Mode As AVAudioSessionMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return getmode (SharedInstance.id)
			End Get
		#tag EndGetter
		Private ModeText As Text
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private NotificationObjects() As AppleNotificationObject
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220616E6F74686572206170702069732063757272656E746C7920706C6179696E6720617564696F2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isOtherAudioPlaying (SharedInstance.id)
			End Get
		#tag EndGetter
		OtherAudioIsPlaying As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E746C792073656C6563746564206F7574707574206461746120736F757263652E2052616973657320616E206572726F72657863657074696F6E2069662073657474696E67206974206661696C732E
		#tag Getter
			Get
			  return AppleAVAudioSessionDataSourceDescription.MakeFromPtr(getoutputDataSource (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		OutputDataSource As AppleAVAudioSessionDataSourceDescription
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620617661696C61626C65206F7574707574206461746120736F757263657320666F72207468652063757272656E7420617564696F20726F7574652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applearray.MakeFromPtr(getoutputDataSources (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		OutputDataSources As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6174656E637920666F7220617564696F206F75747075742C206D6561737572656420696E207365636F6E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getoutputLatency (SharedInstance.id)
			End Get
		#tag EndGetter
		OutputLatency As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620617564696F206F7574707574206368616E6E656C732E2028726561642D6F6E6C79292E20557365205072656665727265644F75747075744E756D6265724F664368616E6E656C7320746F206368616E67652E
		#tag Getter
			Get
			  return getoutputNumberOfChannels (SharedInstance.id)
			End Get
		#tag EndGetter
		OutputNumberOfChannels As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073797374656D2077696465206F757470757420766F6C756D65207365742062792074686520757365722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getoutputVolume (SharedInstance.id)
			End Get
		#tag EndGetter
		OutputVolume As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070726566657272656420696E70757420706F727420666F7220617564696F20726F7574696E672E2052616973657320616E206572726F72457863657074696F6E2069662073657474696E67206974206661696C732E
		#tag Getter
			Get
			  return AppleAVAudioSessionPortDescription.MakeFromPtr(getpreferredInput (SharedInstance.id))
			  
			End Get
		#tag EndGetter
		PreferredInput As AppleAVAudioSessionPortDescription
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520707265666572726564206E756D626572206F6620696E707574206368616E6E656C7320666F72207468652063757272656E7420726F7574652E2052616973657320616E206572726F72657863657074696F6E206966206368616E67696E67206974206661696C732E
		#tag Getter
			Get
			  return getpreferredInputNumberOfChannels (SharedInstance.id)
			End Get
		#tag EndGetter
		PreferredInputNumberOfChannels As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070726566657272656420492F4F20627566666572206475726174696F6E2C20696E207365636F6E64732E205261696973657320616E206572726F72657863657074696F6E2069662073657474696E67206974206661696C732E
		#tag Getter
			Get
			  return getpreferredIOBufferDuration (SharedInstance.id)
			End Get
		#tag EndGetter
		PreferredIOBufferDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520707265666572726564206E756D626572206F66206F7574707574206368616E6E656C7320666F72207468652063757272656E7420726F7574652E2052616973657320616E206572726F72657863657074696F6E206966206368616E67696E67206974206661696C732E
		#tag Getter
			Get
			  return getpreferredOutputNumberOfChannels (SharedInstance.id)
			End Get
		#tag EndGetter
		PreferredOutputNumberOfChannels As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207072656665727265642073616D706C6520726174652C20696E20686572747A2E2052616973657320616E206572726F72657863657074696F6E206966206368616E67696E67206974206661696C732E
		#tag Getter
			Get
			  return getpreferredSampleRate (SharedInstance.id)
			End Get
		#tag EndGetter
		PreferredSampleRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207265636F7264696E67207065726D697373696F6E207374617475732E2028726561642D6F6E6C79293A200A67726E74203D207065726D697373696F6E206772616E7465642C2064656E79203D207065726D697373696F6E2064656E6965642C20756E6474203D20756E64657465726D696E65642E
		#tag Getter
			Get
			  return GetRecordPermission (SharedInstance.id)
			End Get
		#tag EndGetter
		RecordPermission As OSType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F2073616D706C6520726174652C20696E20686572747A2C20746861742069732063757272656E746C7920696E206566666563742E2028726561642D6F6E6C79292E205573652050726566657272656453616D706C655261746520746F206368616E67652069742E
		#tag Getter
			Get
			  return getsampleRate (SharedInstance.id)
			End Get
		#tag EndGetter
		SampleRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220616E6F74686572206170706C69636174696F6E20697320706C6179696E6720617564696F2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getsecondaryAudioShouldBeSilencedHint (SharedInstance.id)
			End Get
		#tag EndGetter
		SecondaryAudioShouldBeSilenced As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Static SharedID as AppleAVAudioSession
			  if SharedID = nil then SharedID =  new AppleAVAudioSession(getsharedInstance(classptr))
			  return SharedID
			End Get
		#tag EndGetter
		Private Shared SharedInstance As AppleAVAudioSession
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mXojoIdentity as xojo.Core.Dictionary
			  if mXojoIdentity = nil then mXojoIdentity = new xojo.Core.Dictionary
			  return mXojoIdentity
			End Get
		#tag EndGetter
		Private Shared XojoIdentity As xojo.Core.Dictionary
	#tag EndComputedProperty


	#tag Constant, Name = kAVAudioSessionCategoryAmbient, Type = Text, Dynamic = False, Default = \"AVAudioSessionCategoryAmbient", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionCategoryAudioProcessing, Type = Text, Dynamic = False, Default = \"AVAudioSessionCategoryAudioProcessing", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionCategoryMultiRoute, Type = Text, Dynamic = False, Default = \"AVAudioSessionCategoryMultiRoute", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionCategoryPlayAndRecord, Type = Text, Dynamic = False, Default = \"AVAudioSessionCategoryPlayAndRecord", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionCategoryPlayback, Type = Text, Dynamic = False, Default = \"AVAudioSessionCategoryPlayback", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionCategoryRecord, Type = Text, Dynamic = False, Default = \"AVAudioSessionCategoryRecord", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionCategorySoloAmbient, Type = Text, Dynamic = False, Default = \"AVAudioSessionCategorySoloAmbient", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionInterruptionNotification, Type = Text, Dynamic = False, Default = \"AVAudioSessionInterruptionNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionMediaServicesWereLostNotification, Type = Text, Dynamic = False, Default = \"AVAudioSessionMediaServicesWereLostNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionMediaServicesWereResetNotification, Type = Text, Dynamic = False, Default = \"AVAudioSessionMediaServicesWereResetNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeDefault, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeDefault", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeGameChat, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeGameChat", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeMeasurement, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeMeasurement", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeMoviePlayback, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeMoviePlayback", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeSpokenAudio, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeSpokenAudio", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeVideoChat, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeVideoChat", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeVideoRecording, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeVideoRecording", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionModeVoiceChat, Type = Text, Dynamic = False, Default = \"AVAudioSessionModeVoiceChat", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionRouteChangeNotification, Type = Text, Dynamic = False, Default = \"AVAudioSessionRouteChangeNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAVAudioSessionSilenceSecondaryAudioHintNotification, Type = Text, Dynamic = False, Default = \"AVAudioSessionSilenceSecondaryAudioHintNotification ", Scope = Private
	#tag EndConstant

	#tag Constant, Name = OST_spkr, Type = Double, Dynamic = False, Default = \"&h73706b72", Scope = Private
	#tag EndConstant


	#tag Enum, Name = AVAudioSessionCategory, Type = Integer, Flags = &h0
		Ambient
		  SoloAmbient
		  Playback
		  Record
		  PlayAndRecord
		  AudioProcessing
		MultiRoute
	#tag EndEnum

	#tag Enum, Name = AVAudioSessionMode, Type = Integer, Flags = &h0
		Default
		  VoiceChat
		  GameChat
		  VideoRecording
		  Measurement
		  MoviePlayback
		  VideoChat
		SpokenAudio
	#tag EndEnum

	#tag Enum, Name = AVAudioSessionPortOverride, Type = Integer, Flags = &h0
		None
		Speaker
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Category"
			Group="Behavior"
			Type="AVAudioSessionCategory"
			EditorType="Enum"
			#tag EnumValues
				"0 - Ambient"
				"1 - SoloAmbient"
				"2 - Playback"
				"3 - Record"
				"4 - PlayAndRecord"
				"5 - AudioProcessing"
				"6 - MultiRoute"
			#tag EndEnumValues
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
			Name="InputAvailable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputGain"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputGainSettable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputLatency"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputNumberOfChannels"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IOBufferDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumInputNumberOfChannels"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumOutputNumberOfChannels"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Group="Behavior"
			Type="AVAudioSessionMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - VoiceChat"
				"2 - GameChat"
				"3 - VideoRecording"
				"4 - Measurement"
				"5 - MoviePlayback"
				"6 - VideoChat"
				"7 - SpokenAudio"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OtherAudioIsPlaying"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputLatency"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputNumberOfChannels"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputVolume"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredInputNumberOfChannels"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredIOBufferDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredOutputNumberOfChannels"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredSampleRate"
			Group="Behavior"
			InitialValue="44100.0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SampleRate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondaryAudioShouldBeSilenced"
			Group="Behavior"
			Type="Boolean"
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
