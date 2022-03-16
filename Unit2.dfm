object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Delphi : Work with TDictionary'
  ClientHeight = 724
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 23
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
  object ListBox1: TListBox
    Left = 8
    Top = 48
    Width = 257
    Height = 668
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 271
    Top = 48
    Width = 314
    Height = 668
    Caption = 'TIOBE March 2022 programming'
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object ComboBox1: TComboBox
    Left = 591
    Top = 56
    Width = 218
    Height = 21
    Style = csDropDownList
    DropDownCount = 20
    TabOrder = 2
    OnChange = ComboBox1Change
  end
  object Button1: TButton
    Left = 793
    Top = 691
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = Button1Click
  end
end
