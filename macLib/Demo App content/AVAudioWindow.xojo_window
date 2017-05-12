#tag Window
Begin Window AVAudioWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   True
   Title           =   "AVAudio"
   Visible         =   True
   Width           =   600
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Start file record"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   27
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   109
   End
   Begin TextArea TextArea1
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFF00FF
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   250
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   27
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This demo uses a few audio features of the AVAudio framework. \n\nYou can record with an AVAudioRecorder when you press ""Start file record"". The sample file will be saved to your desktop.\nAfter that, ""Play recorded file"" allows you to hear a playback of the recorded file.\n\nThe Audio Engine Buttons use an AudioEngine where you can analyze recorded data in (almost) real-time. The demo does not much more than to inform about received sample packages. No analysis included in this demo.\n\n\n"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   553
   End
   Begin ProgressBar ProgressBar1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   27
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   6
      Value           =   0
      Visible         =   True
      Width           =   553
   End
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Stop file record"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   148
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   109
   End
   Begin TextField ChannelField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFF00FF
      Bold            =   False
      Border          =   True
      CueText         =   "Channels"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   27
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "2"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   326
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin TextField FreqField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFF00FF
      Bold            =   False
      Border          =   True
      CueText         =   "Sample frequency"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   119
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "44100"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   326
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   126
   End
   Begin PushButton PushButton3
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Start Audio Engine"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   431
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   327
      Underline       =   False
      Visible         =   True
      Width           =   149
   End
   Begin PushButton PushButton4
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Stop Audio Engine"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   431
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   359
      Underline       =   False
      Visible         =   True
      Width           =   149
   End
   Begin PushButton PlayButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Play recorded File"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   278
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   141
   End
   Begin ProgressBar ProgressBar2
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   27
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   28
      Value           =   0
      Visible         =   True
      Width           =   553
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  ProgressBarTimer = new xojo.core.timer
		  ProgressBarTimer.Period = 20
		  addhandler ProgressBarTimer.action, addressof ProgressBarUpdate
		  
		  ProgressBarPlayerTimer = new xojo.core.timer
		  ProgressBarPlayerTimer.Period = 20
		  addhandler ProgressBarPlayerTimer.action, addressof ProgressBarUpdatePlayer
		  
		  
		  EngineTimer = new xojo.core.timer
		  EngineTimer.Period = 10
		  AddHandler EngineTimer.action, AddressOf EngineUpdate
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CallBackBlock(bufferPtr as Ptr, timePtr as Ptr)
		  #pragma StackOverflowChecking false
		  #Pragma BackgroundTasks false
		  AVAudioWindow.BufferPtrs.Append FoundationFrameWork.retain (bufferptr)
		  AVAudioWindow.TimerPtrs.Append FoundationFrameWork.retain (timePtr)
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
		    TextArea1.AppendText buffer.AudioBufferList.Size.ToText+" Samples received at "+buffertime.HostTime.ToText+EndOfLine
		  end if
		  #pragma unused t
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FinishedHandler(parent as AppleAVAudioRecorder, success as Boolean)
		  ProgressBarTimer.Mode = xojo.core.timer.modes.Off
		  TextArea1.AppendText "Recording stopped"+EndOfLine
		  ProgressBar1.Value = 0
		  ProgressBar2.Value = 0
		  
		  #pragma unused parent
		  #pragma unused success
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FinishedHandlerPlayer(parent as AppleAVAudioPlayer, success as Boolean)
		  ProgressBarPlayerTimer.Mode = xojo.core.timer.modes.Off
		  TextArea1.AppendText "Playback stopped "+ if (success, "successfully", "unsuccessfully")+ EndOfLine
		  ProgressBar1.Value = 0
		  ProgressBar2.Value = 0
		  #pragma unused parent
		  #pragma unused success
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProgressBarUpdate(t as xojo.core.timer)
		  Recorder.UpdateMeters
		  ProgressBar1.Value = 100 + 4 * recorder.AveragePower(0)
		  ProgressBar2.Value = 100 + 4 * recorder.AveragePower(1)
		  
		  #pragma unused t
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProgressBarUpdatePlayer(t as xojo.core.timer)
		  player.UpdateMeters
		  ProgressBar1.Value = 100 + 4 * player.AveragePower(0)
		  ProgressBar2.Value = 100 + 4 * player.AveragePower(1)
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
		Player As AppleAVAudioPlayer
	#tag EndProperty

	#tag Property, Flags = &h0
		ProgressBarPlayerTimer As xojo.Core.Timer
	#tag EndProperty

	#tag Property, Flags = &h0
		ProgressBarTimer As xojo.Core.Timer
	#tag EndProperty

	#tag Property, Flags = &h0
		Recorder As AppleAVAudioRecorder
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared TimerPtrs() As Ptr
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  dim a as new AVAudioSettingsDictionary
		  a.NumberOfChannels = Integer.Parse(ChannelField.text.ToText)
		  a.SampleRate = double.Parse(FreqField.Text.ToText)
		  
		  a.EncoderAudioQuality = AVAudioSettingsDictionary.AVAudioQuality.High
		  a.EncoderBitRate = AVAudioSettingsDictionary.LinearPCMDepth.Bit16
		  dim f as FolderItem = SpecialFolder.Desktop.Child("Testfile.pcm")
		  dim error as new AppleError
		  
		  Recorder = new AppleAVAudioRecorder(new AppleURL(f), a, error)
		  dim result as Boolean  = Recorder.PrepareToRecord
		  recorder.MeteringEnabled = true
		  
		  if result = true then 
		    TextArea1.AppendText "Recording to Testfile.pcm on Desktop with samplerate "+recorder.Settings.SampleRate.ToText+ EndOfLine
		    result = recorder.Record
		    ProgressBarTimer.mode = xojo.core.timer.modes.Multiple
		  end if
		  AddHandler recorder.FinishedREcording, addressof FinishedHandler
		  PushButton2.Enabled = true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  if recorder <> nil then
		    recorder.Stop
		    ProgressBarTimer.mode = xojo.core.timer.modes.off
		    PlayButton.Enabled = true
		    me.Enabled = false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  engine = new AppleAVAudioEngine
		  // dim mixer as AppleAVAudioMixerNode = engine.MainMixerNode
		  dim input as AppleAVAudioInputNode = engine.InputNode
		  dim format as AppleAVAudioFormat = input.InputFormat(0)
		  
		  dim block as new appleblock (addressof CallBackBlock)
		  input.InstallTap (0,4096, format, block)
		  engine.Start 
		  EngineTimer.mode = xojo.core.timer.modes.Multiple
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton4
	#tag Event
		Sub Action()
		  if Engine <> nil then
		    Engine.Stop
		    EngineTimer.mode = xojo.core.timer.modes.off
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PlayButton
	#tag Event
		Sub Action()
		  dim f as FolderItem = SpecialFolder.Desktop.Child("Testfile.pcm")
		  dim error as new AppleError
		  
		  player = new AppleAVAudioPlayer(new AppleURL(f), error)
		  if error =nil then
		    player.MeteringEnabled = true
		    dim result as Boolean  = Player.PrepareToPlay
		    if result then 
		      result = player.Play
		      if not result then 
		        MsgBox "Player does not want to play."
		      else
		        ProgressBarPlayerTimer.Mode = xojo.core.timer.modes.Multiple
		        AddHandler Player.FinishedPlaying, addressof FinishedHandlerPlayer
		      end if
		    else
		      MsgBox "Error praparing playback."
		    end if
		  else
		    MsgBox "Error creating player with URL."
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
