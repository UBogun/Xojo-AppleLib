#tag IOSView
Begin iosView AVAudioView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "AVAudioSession"
   Top             =   0
   Begin AppleAVAudioSession AppleAVAudioSession1
      Category        =   ""
      DebugDescription=   ""
      HasOwnership    =   False
      Height          =   32
      Height          =   32
      InputAvailable  =   False
      InputGain       =   0.0
      InputGainSettable=   False
      InputLatency    =   0.0
      InputNumberOfChannels=   0
      IOBufferDuration=   0.0
      Left            =   60
      Left            =   60
      LockedInPosition=   False
      MaximumInputNumberOfChannels=   0
      MaximumOutputNumberOfChannels=   0
      mHasOwnership   =   False
      Mode            =   ""
      OtherAudioIsPlaying=   False
      OutputLatency   =   0.0
      OutputNumberOfChannels=   0
      OutputVolume    =   0.0
      PanelIndex      =   -1
      Parent          =   ""
      PreferredInputNumberOfChannels=   0
      PreferredIOBufferDuration=   0.0
      PreferredOutputNumberOfChannels=   0
      PreferredSampleRate=   0.0
      RetainCount     =   ""
      SampleRate      =   0.0
      Scope           =   2
      SecondaryAudioShouldBeSilenced=   False
      Top             =   60
      Top             =   60
      Width           =   32
      Width           =   32
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 4, BottomLayoutGuide, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Start Engine"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, Button1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button2, 11, Button1, 11, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Stop Engine"
      Enabled         =   True
      Height          =   30.0
      Left            =   128
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSTextarea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 7, <Parent>, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 4, Button1, 3, False, +1.00, 2, 1, -59, 
      AutoLayout      =   TextArea1, 3, <Parent>, 3, False, +1.00, 1, 1, 65, 
      Editable        =   False
      Height          =   318.0
      KeyboardType    =   "0"
      Left            =   0.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "This is a very crude example for using AVAudioSession to record and examine audio data in realtime. \n\nPlease note that the audio and timing data is returned on a background thread, so you cannot do too much with it without endangering your app’s stability. And please note this kind of handling is not officially supported and might break in the future.\n\nAnyway, because of the limitations background handling brings with it, the example code in the CallBackBlock method only retains the received pointers and adds them to shared variables. You must address shared properties, a lock to a Xojo instance would crash the app.\n\nLuckily, an AVAudioSession is a Singleton anyway so you won’t need to install more than one on an iOSview. You should adjust the timer period to your desired sample frequency. In the method analyzing both shared ptr properties, take ownership of the classes. That what\n    dim buffer as new AppleAVAudioPCMBuffer(buf, true, false) and\n    dim buffertime as new AppleAVAudioTime(time, true, false)\nin the time action method EngineUpdate do. Else you will create memory leaks. And of course you should then do something valuable with them, not only show their time …"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   65.0
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 1, , 0, False, +1.00, 1, 1, 20, 
      AutoLayout      =   TextField1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 4, Button2, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   403
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub CallBackBlock(bufferPtr as Ptr, timePtr as Ptr)
		  #pragma StackOverflowChecking false
		  #Pragma BackgroundTasks false
		  #Pragma NilObjectChecking false
		  BufferPtrs.Append FoundationFrameWork.retain (bufferptr)
		  TimerPtrs.Append FoundationFrameWork.retain (timePtr)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EngineUpdate(t as xojo.core.timer)
		  if BufferPtrs.Ubound > -1 and TimerPtrs.Ubound > -1 then
		    dim buf as ptr = BufferPtrs(0)
		    dim time as ptr = TimerPtrs(0)
		    dim buffer as new AppleAVAudioPCMBuffer(buf, true, false)
		    dim buffertime as new AppleAVAudioTime(time, true, false)
		    BufferPtrs.Remove(0)
		    TimerPtrs.remove(0)
		    Textfield1.text = buffer.AudioBufferList.Size.ToText+" Samples with frame length "+buffer.FrameLength.ToText+" received at "+buffertime.HostTime.ToText
		    
		  end if
		  #pragma unused t
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Shared BufferPtrs() As Ptr
	#tag EndProperty

	#tag Property, Flags = &h0
		Engine As AppleAVAudioEngine
	#tag EndProperty

	#tag Property, Flags = &h0
		EngineTimer As xojo.Core.Timer
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared TimerPtrs() As Ptr
	#tag EndProperty


#tag EndWindowCode

#tag Events AppleAVAudioSession1
	#tag Event
		Sub ServicesLost()
		  break
		End Sub
	#tag EndEvent
	#tag Event
		Sub ServicesReset()
		  break
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.RequestRecordPermission
		End Sub
	#tag EndEvent
	#tag Event
		Sub RecordPermissionReceived(Granted as Boolean)
		  dim m as new iOSMessageBox
		  m.Title = "AVAudioSession initialized, recording permission  "+if (not granted, "not ", "")+"granted."
		  m.Message = if (me.InputAvailable, "Input is available", "Input unavailable") + _
		  eol+me.InputNumberOfChannels.ToText +" input channnels"+ eol+ _
		  me.InputLatency.ToText+" s input latency"+eol + _
		  me.OutputNumberOfChannels.ToText+" output channels"
		  m.Buttons = array("OK")
		  m.show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  engine = new AppleAVAudioEngine
		  // dim mixer as AppleAVAudioMixerNode = engine.MainMixerNode
		  dim input as AppleAVAudioInputNode = engine.InputNode
		  dim format as AppleAVAudioFormat = input.InputFormat(0)
		  dim error as new AppleError
		  
		  dim block as new appleblock (addressof CallBackBlock)
		  input.InstallTap (0,4096, format, block)
		  
		  EngineTimer = new xojo.core.timer
		  EngineTimer.Period = 10
		  AddHandler EngineTimer.action, AddressOf EngineUpdate
		  
		  if engine.Start (error) then
		    EngineTimer.mode = xojo.core.timer.modes.Multiple
		  else
		    dim m as new iOSMessageBox
		    m.Title = "AVAudioSession Engine Start Error"
		    m.Message = error.LocalizedDescription
		    m.Show
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  if Engine <> nil then
		    Engine.Stop
		    EngineTimer.mode = xojo.core.timer.modes.off
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
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
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
