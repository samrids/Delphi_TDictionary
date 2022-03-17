object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Delphi : Work with TDictionary'
  ClientHeight = 641
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 15
    Height = 19
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 103
    Width = 59
    Height = 19
    Caption = 'Listbox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 375
    Top = 103
    Width = 86
    Height = 19
    Caption = 'Combobox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 168
    Top = 95
    Width = 96
    Height = 19
    Caption = 'RadioGroup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn_Close: TButton
    Left = 760
    Top = 608
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = btn_CloseClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 128
    Width = 137
    Height = 505
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 168
    Top = 120
    Width = 185
    Height = 513
    Caption = 'TIOBE March 2022 Programming'
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object ComboBox1: TComboBox
    Left = 375
    Top = 128
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    OnChange = ComboBox1Change
  end
end
