object Form9: TForm9
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 168
  ClientWidth = 315
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 168
    Align = alClient
    ShowCaption = False
    TabOrder = 0
    Visible = False
    object Label3: TLabel
      Left = 20
      Top = 25
      Width = 40
      Height = 16
      Caption = #1051#1086#1075#1080#1085':'
    end
    object Label4: TLabel
      Left = 20
      Top = 55
      Width = 48
      Height = 16
      Caption = #1055#1072#1088#1086#1083#1100':'
    end
    object Label5: TLabel
      Left = 20
      Top = 85
      Width = 113
      Height = 16
      Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
    end
    object Edit3: TEdit
      Left = 145
      Top = 22
      Width = 150
      Height = 24
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 145
      Top = 52
      Width = 150
      Height = 24
      PasswordChar = '*'
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 145
      Top = 82
      Width = 150
      Height = 24
      PasswordChar = '*'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 48
      Top = 120
      Width = 100
      Height = 25
      Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
      TabOrder = 3
    end
    object Button4: TButton
      Left = 170
      Top = 120
      Width = 100
      Height = 25
      Caption = #1053#1072#1079#1072#1076
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 168
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 34
      Width = 62
      Height = 16
      Caption = #1042#1086#1081#1090#1080' '#1082#1072#1082':'
    end
    object Label2: TLabel
      Left = 48
      Top = 74
      Width = 48
      Height = 16
      Caption = #1055#1072#1088#1086#1083#1100':'
    end
    object Button1: TButton
      Left = 107
      Top = 120
      Width = 100
      Height = 25
      Caption = #1042#1086#1081#1090#1080
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 120
      Top = 71
      Width = 150
      Height = 24
      PasswordChar = '*'
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 120
      Top = 31
      Width = 150
      Height = 24
      Style = csDropDownList
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      Items.Strings = (
        #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100)
    end
  end
end
