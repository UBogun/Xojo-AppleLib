#tag IOSView
Begin iosView AVTonePlayerView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "AVTonePlayerNode"
   Top             =   0
   Begin iOSSlider Slider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider1, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Slider1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Slider1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 42, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   14000.0
      MinValue        =   100.0
      Scope           =   0
      Top             =   107
      Value           =   440.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch1, 1, Slider1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch1, 3, Slider1, 4, False, +1.00, 1, 1, 22, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   152
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, Switch1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 146, 
      AutoLayout      =   Label1, 3, Switch1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Play 440 Hz"
      TextAlignment   =   "0"
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   152
      Visible         =   True
      Width           =   146.0
   End
   Begin AppleAVAudioEngine Engine
      DebugDescription=   ""
      HasOwnership    =   False
      Left            =   0
      LockedInPosition=   False
      mHasOwnership   =   False
      PanelIndex      =   -1
      Parent          =   ""
      RetainCount     =   ""
      Scope           =   0
      Top             =   0
   End
   Begin AppleLibAVTonePlayerNode Generator
      Amplitude       =   0.25
      BufferCapacity  =   "512"
      DebugDescription=   ""
      Frequency       =   440.0
      HasOwnership    =   False
      Left            =   0
      LockedInPosition=   False
      MelodyRepeat    =   0
      mHasOwnership   =   False
      NextAvailableInputBus=   ""
      NumberOfInputs  =   ""
      NumberOfOutputs =   ""
      Obstruction     =   0.0
      Occlusion       =   0.0
      Pan             =   0.0
      PanelIndex      =   -1
      Parent          =   ""
      Playing         =   False
      RenderingAlgorithms=   ""
      RetainCount     =   ""
      ReverbBlend     =   0.0
      SampleRate      =   44100.0
      Scope           =   0
      StoponNextNote  =   False
      Top             =   0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 1, Switch1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 3, Switch1, 4, False, +1.00, 1, 1, 22, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 105, 
      Caption         =   "Play Melody"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   205
      Visible         =   True
      Width           =   105.0
   End
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 1, Button1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   TextField1, 7, , 0, False, +1.00, 1, 1, 44, 
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 11, Button1, 11, False, +1.00, 1, 1, , 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   133
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "5"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   204
      Visible         =   True
      Width           =   44.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, TextField1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   185
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "times"
      TextAlignment   =   "0"
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   204
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 2, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextArea1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -20, 
      AutoLayout      =   TextArea1, 3, Button1, 4, False, +1.00, 2, 1, 20, 
      Editable        =   False
      Height          =   205.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "AppleLibAVAudioTonePlayerNode is a custom subclass of an AVAudioPlayerNode incorporating a sine wave tone generator. The tone can be generated continously with the option to influence frequency and amplitude in (almost) real-time, or as a beep with the Sound() method that takes frequency, duration and amplitude.\nAnother option is the PlayMelody method that takes an array of Doubles in the order as above, with an optional MelodyRepeat to repeat the cadence.\nThe math is done with Accelerate framework methods, so the sine gets calculated about twice as fast than with pure Xojo code.\nPlease note that PlayMelody does not perform any fade-in our -out of the notes, so you may hear some unfitting cracks when the tone ends. An alternative could be to calculate the last buffer a bit longer so that it ends on a 0.\n\nKudos to Dave Sisemore for collecting and enhancing the Swift toneGenerator class I took as example."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   255
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Close()
		  if Generator.Playing then 
		    Generator.stop
		    Generator.reset
		  end if
		  Engine.MainMixerNode.Volume = 0
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Engine.AttachNode (Generator)
		  dim mixer as AppleAVAudioMixerNode = engine.MainMixerNode
		  Engine.ConnectNodes (Generator, mixer, Generator.AudioFormat)
		  try
		    Engine.Start
		  catch err as xojo.core.ErrorException
		    break
		  end try
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  Label1.Text = "Play "+me.value.ToText+" Hz"
		  Generator.Frequency = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  if me.Value  then
		    Button1.Enabled = false
		    Generator.Frequency = Slider1.value
		    Generator.preparePlay
		    Generator.play
		    engine.mainMixerNode.volume = 1.0
		  else
		    engine.mainMixerNode.volume = 0.0
		    Generator.stop()
		    Button1.Enabled = true
		  end if
		  //
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Generator
	#tag Event , Description = 4669726573207768656E206120546F6E6520706C6179656420776974682074686520536F756E64206D6574686F642066696E69736865732E
		Sub MelodyFinished()
		  try
		    Switch1.Enabled = true
		    Button1.Enabled = true
		  catch NilObjectException // in case the view was closes
		    
		  end try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  dim times as integer = integer.parse(TextField1.Text)
		  if times = 0 then TextField1.text = "0"
		  me.Enabled = false
		  switch1.Enabled = false
		  generator.melodyRepeat = times
		  Generator.PlayMelody  array(440, 250, 0.25, 221.5, 250, 0.25, 166, 500, 0.25, 0, 500, 0)
		  
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
