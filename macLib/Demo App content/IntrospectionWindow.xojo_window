#tag Window
Begin Window IntrospectionWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   738
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   390259381
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   True
   Title           =   "AppleIntrospection"
   Visible         =   True
   Width           =   1020
   Begin TextArea TextArea1
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   247
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select a Class from the list above!\n\nOn the right, you can see its available ivars, property and methods together with their input/output types in C notation (refer to Apple's docs how to read them).\n\nThe Textareas below list the protocols known to the system and the loaded Frameworks – so they are independent from the inspected class and therefore will not change with a selection above, but after a new framework was loaded.\n\nYou can click on one of the protocols below to examine it closer."
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   84
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   389
   End
   Begin PopupMenu PopupMenu1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Select a Class"
      Italic          =   False
      Left            =   20
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   225
   End
   Begin Label ClassesLoadedLabel
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
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   152
   End
   Begin Listbox IvarBox
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "30%,*,100"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   99
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Ivar Names	Type Encoding	Offset"
      Italic          =   False
      Left            =   439
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   84
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   561
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Listbox PropertyBox
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "30%,35%,35%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   136
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Property Names	Attribute Names	Attribute Values"
      Italic          =   False
      Left            =   439
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   195
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   561
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Listbox MethodBox
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   4
      ColumnsResizable=   True
      ColumnWidths    =   "40%,80,*,100"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   177
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Method Names	IMP (Ptr)	Attributes	Return Types"
      Italic          =   False
      Left            =   439
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   343
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   561
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin listbox LibArea
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   164
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   439
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   554
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   561
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Listbox ProtArea
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   164
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   554
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   389
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton SuperCButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Show Superclass"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Underline       =   False
      Visible         =   True
      Width           =   131
   End
   Begin TextField FWLoadField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFF00FFFF
      Bold            =   False
      Border          =   True
      CueText         =   "Framework name (without extension or path)"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   583
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   417
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Load Framework:"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   439
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin Listbox PersProtArea
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   164
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   356
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   389
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub SetIntrospection(aclass as ptr)
		  // IntrospectionObject = ObjectiveCRuntime.class_createInstance(myclassptr, 0)
		  if aclass <> nil then
		    try
		      Introspection = new AppleLibIntrospection(aclass)
		      // IntrospectionObject = appleObject.Alloc(aclass)
		      
		    catch err
		      msgbox "alloc failed"+endofline+err.Message
		      Introspection = nil
		    end try
		    
		    // if InitBox.value then
		    // try
		    // IntrospectionObject.Retain
		    // catch err
		    // msgbox "init unsuccesful"+endofline+err.Message
		    // InitBox.value =false
		    // end try
		    // end if
		  else
		    Introspection = nil
		  end if
		  UpdateTextArea
		  UpdateIvars
		  UpdateProperties
		  updatemethods
		  UpdatePersProt
		  SuperCButton.Enabled = if (Introspection = nil or Introspection.SuperclassPtr = NIL, false, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowFrameworks()
		  LibArea.DeleteAllRows
		  dim myframeworks() as text = AppleLibIntrospection.RegisteredFrameworks
		  dim count as uinteger = myframeworks.Ubound
		  for q as UInteger = 0 to count
		    LibArea.addrow myframeworks(q)
		  next
		  count = count +1
		  LibArea.Heading(0)= count.toText+ " loaded Frameworks"
		  LibArea.HeadingIndex = 0
		  LibArea.ColumnSortDirection(0) = Listbox.SortAscending
		  LibArea.Sort
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateClassPopup()
		  dim mb() as text = AppleLibIntrospection.RegisteredClasses
		  mb.Sort
		  PopupMenu1.DeleteAllRows
		  PopupMenu1.AddRow ("- Select a class -")
		  for q as UInteger = 0 to mb.Ubound
		    PopupMenu1.AddRow mb(q)
		  next
		  if PopupMenu1.ListIndex = -1 then PopupMenu1.ListIndex = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateIvars()
		  IvarBox.DeleteAllRows
		  if Introspection <> NIL then
		    dim ivars() as AppleLibIvar = Introspection.Ivars
		    if ivars <> NIL then
		      for q as UInteger = 0 to ivars.Ubound
		        IvarBox.AddRow ivars(q).Name, ivars(q).TypeEncodingTranslated, ivars(q).Offset.toText
		      next
		    end if
		  end if
		  IvarBox.Sort
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updatemethods()
		  MethodBox.DeleteAllRows
		  if Introspection <> NIL then
		    dim methods() as AppleLibMethod = Introspection.Methods
		    if methods <> NIL then
		      for q as UInteger = 0 to methods.Ubound
		        methodbox.AddRow methods(q).Name,  text.Join(methods(q).Argumenttypes, ""),methods(q).ArgumenttypesTranslated.toCommaList, methods(q).ReturnTypeTranslated
		      next
		    end if
		  end if
		  MethodBox.Sort
		  
		  // methodbox.AddRow methods(q).Name, methods(q).Implementation.totext, methods(q).TypeEncoding, methods(q).ArgumenttypesTranslated.toCommalist, methods(q).ReturnTypeTranslated
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdatePersProt()
		  PersProtArea.DeleteAllRows
		  if Introspection <> nil then
		    dim protocols() as AppleLibProtocol = Introspection.Protocols
		    dim count as integer = protocols.Ubound
		    for q as integer = 0 to count
		      PersProtArea.AddRow  protocols(q).name
		      PersProtArea.RowTag (q) = protocols(q)
		    next
		    count = count + 1
		    PersProtArea.Heading (0) = "Class conforms to "+count.totext+" protocols. Click on one to inspect it."
		    PersProtArea.HeadingIndex = 0
		    PersProtArea.ColumnSortDirection(0) = Listbox.SortAscending
		    PersProtArea.Sort
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateProperties()
		  PropertyBox.DeleteAllRows
		  if Introspection <> NIL then
		    dim properties() as AppleLibProperty = Introspection.Properties
		    if properties <> NIL then
		      for q as UInteger = 0 to properties.Ubound
		        dim myAttnames() as Text = properties(q).AttributeValues
		        dim myattvalues() as text = properties(q).AttributeValuesTranslated
		        dim attvalueinaline, attnamesinaline as text
		        if myattvalues.Ubound > -1 then
		          attnamesinaline = myattnames.toCommaList
		          attvalueinaline  = myAttValues.toCommaList
		        end if
		        
		        PropertyBox.AddRow properties(q).Name, attnamesinaline, attvalueinaline
		        // , properties(q).AttributeValue (properties(q).name.tocstring (xojo.core.TextEncoding.UTF8))
		      next
		    end if
		  end if
		  PropertyBox.Sort
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateRegisteredClasses()
		  dim count as uinteger
		  dim p as ptr = ObjectiveCRuntime.objc_copyClassList (count)
		  ClassesLoadedLabel.text = "Reg. classes: "+count.toText+endofline
		  AppleLibSystem.free p
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTextArea()
		  if Introspection <> NIL then
		    textarea1.text = "Classptr: "+uinteger(Introspection.Id).toText + endofline+ _
		    "Classname: "+Introspection.ClassName + EndOfLine+ _
		    "SuperclassName: "+ introspection.SuperclassName+ EndOfLine + _
		    "MetaclassName: "+Introspection.MetaclassName +endofline+ _
		    "Originated from Framework: "+Introspection.OriginatedFromFramework + EndOfLine + _
		    "Instance size: "+Introspection.InstanceSize.totext + " Bytes" + endofline + _
		    "Class version: "+Introspection.ClassVersion.totext + EndOfLine
		    // "CFType: "+ MacOSFoundation.CFCopyTypeIDDescription (cftypeid)
		    // break
		  else
		    
		  end if
		  
		  
		  // "Hash: "+macintro.hash.totext + endofline + _
		  // "ClassPtr: "+Introspection.classptr.totext + EndOfLine + _
		  // "Superclass: "+Introspection.SuperclassPtr.totext + endofline+ _
		  // "isMetaclass: "+introspection.isMetaClass.toText + EndOfLine+ _
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Introspection As AppleLibIntrospection
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mIntrospectionObject
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIntrospectionObject = value
			  if value <> NIl then
			    Introspection = new AppleLibIntrospection (IntrospectionObject)
			  end if
			  UpdateTextArea
			  UpdateIvars
			  UpdateProperties
			  updatemethods
			  
			End Set
		#tag EndSetter
		IntrospectionObject As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mIntrospectionObject As Ptr
	#tag EndProperty


#tag EndWindowCode

#tag Events PopupMenu1
	#tag Event
		Sub Open()
		  UpdateClassPopup
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  dim myclass as text = me.Text.ToText
		  dim myclassptr as ptr = FoundationFrameWork.NSClassFromString (myclass)
		  
		  SetIntrospection (myclassptr)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClassesLoadedLabel
	#tag Event
		Sub Open()
		  UpdateRegisteredClasses
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IvarBox
	#tag Event
		Sub Open()
		  me.HeadingIndex = 0
		  me.ColumnSortDirection(0) =Listbox.SortAscending
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  me.EditCell (row, column)
		  #Pragma unused x
		  #pragma unused y
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PropertyBox
	#tag Event
		Sub Open()
		  me.HeadingIndex = 0
		  me.ColumnSortDirection(0) =Listbox.SortAscending
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  me.EditCell (row, column)
		  #Pragma unused x
		  #pragma unused y
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events MethodBox
	#tag Event
		Sub Open()
		  me.HeadingIndex = 0
		  me.ColumnSortDirection(0) =Listbox.SortAscending
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  me.EditCell (row, column)
		  #Pragma unused x
		  #pragma unused y
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LibArea
	#tag Event
		Sub Open()
		  ShowFrameworks
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  me.EditCell (row, column)
		  #Pragma unused x
		  #pragma unused y
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ProtArea
	#tag Event
		Sub Open()
		  dim protocols() as AppleLibProtocol = Introspection.allProtocols
		  dim count as uinteger = protocols.Ubound
		  for q as uinteger = 0 to count
		    me.AddRow  protocols(q).name
		    me.RowTag (q) = protocols(q)
		  next
		  count = count + 1
		  me.Heading (0) = count.toText +" known Protocols. Click on one to inspect it."
		  me.HeadingIndex = 0
		  me.ColumnSortDirection(0) = Listbox.SortAscending
		  me.Sort
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim pW as new ProtocolIntrospectionWindow (me.RowTag(row))
		  pw.Show
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SuperCButton
	#tag Event
		Sub Action()
		  dim superclassname as text = text.fromCString(ObjectiveCRuntime.class_getName(Introspection.SuperclassPtr), xojo.core.TextEncoding.UTF8)
		  for q as integer = 1 to PopupMenu1.ListCount -1
		    if PopupMenu1.List(q).ToText = superclassname then 
		      PopupMenu1.ListIndex = q
		      exit for
		    end if
		  next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  dim result as boolean = AppleLibSystem.LoadFramework (FWLoadField.text.ToText, true)
		  MsgBox "Framework "+FWLoadField.Text+ if (result, " loaded succesfully", " did not load.")
		  ShowFrameworks
		  UpdateRegisteredClasses
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PersProtArea
	#tag Event
		Sub Open()
		  updatepersprot
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim pW as new ProtocolIntrospectionWindow (me.RowTag(row))
		  pw.Show
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
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
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
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
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
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
		Group="Position"
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
		Group="Appearance"
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
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
