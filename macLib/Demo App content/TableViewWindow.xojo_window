#tag Window
Begin Window TableViewWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   496
   ImplicitInstance=   False
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
   Placement       =   0
   Resizeable      =   True
   Title           =   "NSTableView"
   Visible         =   True
   Width           =   1056
   Begin OSXLibTableView OSXLibTableView1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowMagnification=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      AutohidesScrollers=   True
      AutomaticallyAdjustsContentInsets=   True
      Backdrop        =   0
      BackgroundColor =   &c00FF0000
      BorderType      =   "None"
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      DrawsBackground =   False
      DynamicScroll   =   True
      Enabled         =   True
      EraseBackground =   True
      FindBarPosition =   "0"
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   455
      HelpTag         =   ""
      HorizontalLineScroll=   10.0
      HorizontalPageScroll=   100.0
      HorizontalRuler =   False
      HorizontalScrollElasticity=   "0"
      HorizontalScroller=   True
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Magnification   =   1.0
      MaxMagnification=   4.0
      MinMagnification=   0.25
      PredominantAxisScrolling=   False
      RulersVisible   =   False
      Scope           =   2
      ScrollerKnobStyle=   "0"
      ScrollerStyle   =   "1"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseFocusRing    =   True
      VerticalLineScroll=   10.0
      VerticalPageScroll=   100.0
      VerticalRuler   =   False
      VerticalScrollElasticity=   "0"
      VerticalScroller=   True
      Visible         =   True
      Width           =   1056
   End
   Begin AppleTableViewDataSource AppleTableViewDataSource1
      DebugDescription=   ""
      Enabled         =   True
      HasOwnership    =   False
      Index           =   -2147483648
      LockedInPosition=   False
      mHasOwnership   =   False
      RetainCount     =   ""
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "TableView is still under construction, but TextCells and edit events do work. Try moving or resizing a column, close this window and come back! It’s autosaved!"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   467
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   1016
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  Dim db  As New SQLiteDatabase
		  Dim f As FolderItem
		  Dim s As New OpenDialog
		  s.Filter = "appliation/sqlite"
		  s.SuggestedFileName="Eddieselectronics.SQLite"
		  s.PromptText = "Please locate EddiesElectronics.sqlite"
		  f = s.ShowModal
		  If f <> Nil And f.exists Then
		    db.DatabaseFile = f
		    if db.Connect then
		      rs = db.SQLSelect("Select * from customers")
		      OSXLibTableView1.TableViewObject.ReloadData
		    Else
		      MsgBox "Could not connect to database"
		    End If
		  End If
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		DB As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		PhotoCell As AppleCell
	#tag EndProperty

	#tag Property, Flags = &h0
		RS As Recordset
	#tag EndProperty

	#tag Property, Flags = &h0
		RSPointer As UInteger
	#tag EndProperty

	#tag Property, Flags = &h0
		Textcell As AppleCell
	#tag EndProperty


#tag EndWindowCode

#tag Events OSXLibTableView1
	#tag Event
		Sub Shown()
		  Me.TableViewObject.DataSource = AppleTableViewDataSource1 // Important! Set the datasource!
		  
		  // Add some fleavor to the Firstname Column
		  textcell = New AppleCell(" ")
		  Textcell.BackgroundStyle = applecell.NSBackgroundStyle.Dark
		  Textcell.Bezeled = True
		  Textcell.Editable = true
		  Textcell.Highlighted = True
		  Textcell.Font = new AppleFont("Comic Sans MS", 14)
		  // Add columns
		  Dim firstColumn As New AppleTableColumn ("Firstname")
		  firstColumn.DataCell = Textcell
		  
		  Me.TableViewObject.AddTableColumn firstColumn
		  me.TableViewObject.AddTableColumn ("LastName")
		  
		  Me.TableViewObject.TableColumn("LastName").Width = 150
		  firstColumn.Width = 100
		  Me.TableViewObject.AddTableColumn ("State")
		  Me.TableViewObject.AddTableColumn ("Zip")
		  Me.TableViewObject.AddTableColumn ("City")
		  Me.TableViewObject.AddTableColumn ("Address")
		  Me.TableViewObject.AddTableColumn ("Phone")
		  Me.TableViewObject.AddTableColumn ("Email")
		  Me.TableViewObject.AddTableColumn ("Photo")
		  
		  // Create the imagecell
		  dim smallimg as AppleImage = AppleImage.fromPicture(OSXLibLogo)
		  smallimg.size = FoundationFrameWork.NSMakeSize(30, 30)
		  PhotoCell = New AppleCell(smallimg) 
		  
		  Me.TableViewObject.tableColumn("Photo").datacell = PhotoCell
		  Me.TableViewObject.tableColumn("Photo").SizeToFit
		  
		  //Anable autosave
		  Me.TableViewObject.AutosaveName = "DemoTableView"
		  Me.TableViewObject.AutosaveTableColumns = True
		  
		  // Some design properties for the table
		  Me.TableViewObject.UsesAlternatingRowBackgroundColors = True
		  Me.TableViewObject.GridStyleMask = New AppleTableViewGridStyleMask(3)
		  Me.TableViewObject.GridColor = AppleColor.FromColor(&cFDC58200)
		  Me.TableViewObject.AllowsMultipleSelection = True
		  Me.TableViewObject.AllowsTypeSelect = True
		  Me.TableViewObject.IndicatorImage(firstColumn)=AppleImage.ImageNamed("NSAscendingSortIndicator")
		  Me.TableViewObject.RowSizeStyle = appletableview.NSTableViewRowSizeStyle.Large
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E206120436F6C756D6E20686173206D6F7665642C20676976696E6720746865206F6C6420616E64206E657720696E64657820706F736974696F6E2E
		Sub ColumnMoved(OldColumn as Integer, NewColumn As Integer)
		  MsgBox "Column moved from "+OldColumn.ToText+" to "+NewColumn.ToText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppleTableViewDataSource1
	#tag Event , Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C61792E
		Function NumberOfRows(TableView As AppleTableView) As Integer
		  if rs <> nil then return rs.RecordCount
		  #Pragma unused TableView
		End Function
	#tag EndEvent
	#tag Event , Description = 52657475726E207468652076616C756520666F722074686520636F6C756D6E20617420726F772E2056616C7565732063616E20626520616E79207465787420747970652C20436F6C6F722C20506963747572652C20616E79204170706C654F626A656374206F72204E696C2E
		Function ValueForColumn(TableView As AppleTableView, column as appletablecolumn, row as Integer) As Variant
		  // I saved the recordset in the open event and now jump to the right entry:
		  
		  Dim delta As Integer = row - RSPointer
		  If delta > 0 Then
		    For q As Integer = 1 To delta
		      rs.MoveNext
		    Next
		  Elseif delta < 0 Then
		    For q As Integer = 1 To Abs(delta)
		      rs.MovePrevious
		    Next
		  End If
		  RSPointer = row
		  
		  // And now for the cell content:
		  
		  Select Case column.Identifier
		  Case "FirstName"
		    Return rs.Field("FirstName").StringValue
		  Case "LastName"
		    Return rs.Field("LastName").StringValue
		  Case "Zip"
		    Return rs.Field("Zip").StringValue
		  Case "State"
		    Return rs.Field("State").StringValue
		  Case "City"
		    Return rs.Field("City").StringValue
		  Case "Address"
		    Return rs.Field("Address").StringValue
		  Case "Phone"
		    Return rs.Field("Phone").StringValue
		  Case "EMail"
		    Return rs.Field("EMail").StringValue
		  Case "Photo"
		    Dim pic As picture = rs.Field("Photo").PictureValue
		    Dim cell As AppleCell = OSXLibTableView1.TableViewObject.TableColumn("Photo").DataCell(row)
		    Dim img As AppleImage = pic.toAppleImage
		    cell.image= img.Resize(FoundationFrameWork.NSMakeSize(30/ScaleFactor,30/ScaleFactor), true, AppKitFramework.NSImageInterpolation.High, ScaleFactor)
		    
		  End Select
		  #pragma unused TableView
		  
		End Function
	#tag EndEvent
	#tag Event , Description = 52657475726E207468652076616C756520666F722074686520636F6C756D6E20617420726F772E2056616C7565732063616E20626520616E79207465787420747970652C20436F6C6F722C20506963747572652C20616E79204170706C654F626A656374206F72204E696C2E
		Sub SetValueForColumn(TableView As AppleTableView, ObjectValue as Variant, column as appletablecolumn, row as Integer)
		  MsgBox "Change occured at column "+column.Title+"/row "+row.ToText+"!"+eol+eol+"Here you’d have to update your datasource to "+ObjectValue.StringValue.ToText+" if it were a dynamic one."
		  #pragma unused TableView
		  #pragma unused ObjectValue
		  #pragma unused column
		  #pragma unused row
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
		Name="RSPointer"
		Group="Behavior"
		Type="UInteger"
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
