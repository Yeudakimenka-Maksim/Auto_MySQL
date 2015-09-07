object Form8: TForm8
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1086#1080#1089#1082
  ClientHeight = 645
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 19
    Top = 48
    Width = 34
    Height = 16
    Caption = #1055#1086#1083#1077':'
  end
  object Label2: TLabel
    Left = 19
    Top = 11
    Width = 55
    Height = 16
    Caption = #1058#1072#1073#1083#1080#1094#1072':'
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 45
    Width = 228
    Height = 24
    Style = csDropDownList
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object RadioGroup1: TRadioGroup
    Left = 18
    Top = 85
    Width = 297
    Height = 105
    Caption = #1047#1085#1072#1095#1077#1085#1080#1077
    DoubleBuffered = True
    ItemIndex = 0
    Items.Strings = (
      #1090#1086#1095#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      #1086#1090)
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object Edit1: TEdit
    Left = 155
    Top = 112
    Width = 147
    Height = 24
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 70
    Top = 152
    Width = 100
    Height = 24
    Enabled = False
    NumbersOnly = True
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 202
    Top = 152
    Width = 100
    Height = 24
    Enabled = False
    NumbersOnly = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 125
    Top = 205
    Width = 83
    Height = 25
    Caption = #1055#1086#1080#1089#1082
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object StaticText1: TStaticText
    Left = 177
    Top = 156
    Width = 18
    Height = 20
    Caption = #1076#1086
    TabOrder = 6
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 8
    Width = 228
    Height = 24
    Style = csDropDownList
    DoubleBuffered = True
    ItemIndex = 0
    ParentDoubleBuffered = False
    TabOrder = 7
    Text = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
    OnChange = ComboBox2Change
    Items.Strings = (
      #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
      #1055#1086#1089#1090#1072#1074#1082#1080
      #1055#1086#1089#1090#1072#1074#1097#1080#1082
      #1050#1083#1080#1077#1085#1090
      #1047#1072#1082#1072#1079#1099
      #1047#1072#1082#1072#1079' '#1072#1074#1090#1086
      #1047#1072#1082#1072#1079' '#1079#1072#1087#1095#1072#1089#1090#1080
      #1047#1072#1082#1072#1079' '#1090#1102#1085#1080#1085#1075#1072
      #1058#1102#1085#1080#1085#1075
      #1047#1072#1087#1095#1072#1089#1090#1080
      #1057#1082#1083#1072#1076)
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource9
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_tuninga'
        Title.Caption = #1050#1086#1076' '#1090#1102#1085#1080#1085#1075#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yslygi'
        Title.Caption = #1059#1089#1083#1091#1075#1080
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stoimosti'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 90
        Visible = True
      end>
  end
  object DBGrid10: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource10
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_zapchasti'
        Title.Caption = #1050#1086#1076' '#1047#1072#1087#1095#1072#1089#1090#1080
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_postavki'
        Title.Caption = #1050#1086#1076' '#1055#1086#1089#1090#1072#1074#1082#1080
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ima_postavchika'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'naimenovanie_zapchasti'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1095#1072#1089#1090#1080
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cena'
        Title.Caption = #1062#1077#1085#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kolichestvo_na_sklade'
        Title.Caption = #1053#1072' '#1089#1082#1083#1072#1076#1077
        Width = 102
        Visible = True
      end>
  end
  object DBGrid11: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource11
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod'
        Title.Caption = #1050#1086#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tip_produkta'
        Title.Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1090#1072
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_produkta'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'naimenovanie'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'postavchik'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_postavki'
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cena'
        Title.Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1091#1082#1090#1072
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kolichestvo'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
        Width = 153
        Visible = True
      end>
  end
  object DBGrid9: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource8
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_zakaza'
        Title.Caption = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_tuninga'
        Title.Caption = #1050#1086#1076' '#1058#1102#1085#1080#1085#1075#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'yslygi'
        Title.Caption = #1058#1102#1085#1080#1085#1075
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stoimosti'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1090#1102#1085#1080#1085#1075#1072
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_klienta'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Width = 315
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sposob_oplati'
        Title.Caption = #1057#1087#1086#1089#1086#1073' '#1086#1087#1083#1072#1090#1099
        Width = 111
        Visible = True
      end>
  end
  object DBGrid8: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource7
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_zakaza'
        Title.Caption = #1050#1086#1076' '#1047#1072#1082#1072#1079#1072
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_zapchasti'
        Title.Caption = #1050#1086#1076' '#1079#1072#1087#1095#1072#1089#1090#1080
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'naimenovanie_zapchasti'
        Title.Caption = #1047#1072#1087#1095#1072#1089#1090#1100
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cena'
        Title.Caption = #1062#1077#1085#1072' '#1079#1072#1087#1095#1072#1089#1090#1080
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_klienta'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Width = 310
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sposob_oplati'
        Title.Caption = #1057#1087#1086#1089#1086#1073' '#1086#1087#1083#1072#1090#1099
        Width = 115
        Visible = True
      end>
  end
  object DBGrid7: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource6
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_zakaza'
        Title.Caption = #1050#1086#1076' '#1047#1072#1082#1072#1079#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_auto'
        Title.Caption = #1050#1086#1076'_'#1040#1074#1090#1086
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'automarkamodel'
        Title.Caption = #1040#1074#1090#1086
        Width = 272
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'automarka'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'automodel'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cena'
        Title.Caption = #1062#1077#1085#1072' '#1072#1074#1090#1086
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_klienta'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sposob_oplati'
        Title.Caption = #1057#1087#1086#1089#1086#1073' '#1086#1087#1083#1072#1090#1099
        Width = 105
        Visible = True
      end>
  end
  object DBGrid6: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource5
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_zakaza'
        Title.Caption = #1050#1086#1076' '#1047#1072#1082#1072#1079#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_klienta'
        Title.Caption = #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'klientfio'
        ReadOnly = True
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = #1044#1072#1090#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sposob_oplati'
        Title.Caption = #1057#1087#1086#1089#1086#1073' '#1086#1087#1083#1072#1090#1099
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'klientfamilya'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'klientima'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'klientotchestvo'
        Visible = False
      end>
  end
  object DBGrid5: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource4
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_klienta'
        Title.Caption = #1050#1086#1076' '#1050#1083#1080#1077#1085#1090#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'familya'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ima'
        Title.Caption = #1048#1084#1103
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'otchestvo'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strana'
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gorod'
        Title.Caption = #1043#1086#1088#1086#1076
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefon'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 90
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource2
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_postavchika'
        Title.Caption = #1050#1086#1076' '#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ima_postavchika'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strana'
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gorod'
        Title.Caption = #1043#1086#1088#1086#1076
        Width = 120
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource3
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_postavki'
        Title.Caption = #1050#1086#1076' '#1055#1086#1089#1090#1072#1074#1082#1080
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_postavchika'
        Title.Caption = #1050#1086#1076'_'#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ima_postavchika'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'postavlenii_prodykt'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1076#1091#1082#1090
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kolichestvo'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_postavki'
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stoimosti'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 90
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 248
    Width = 938
    Height = 397
    Align = alCustom
    DataSource = DM.DataSource1
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod_auto'
        Title.Caption = #1050#1086#1076' '#1040#1074#1090#1086
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'postavchik'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_postavki'
        Title.Caption = #1050#1086#1076'_'#1055#1086#1089#1090#1072#1074#1082#1080
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'marka'
        Title.Caption = #1052#1072#1088#1082#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Title.Caption = #1052#1086#1076#1077#1083#1100
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'god_vipyska'
        Title.Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strana'
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obym_dvigatela'
        Title.Caption = #1054#1073#1098#1105#1084' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cvet'
        Title.Caption = #1062#1074#1077#1090
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cena'
        Title.Caption = #1062#1077#1085#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kolvo'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 90
        Visible = True
      end>
  end
  object ADOTable1: TADOTable
    Connection = DM.ADOConnection1
    Left = 264
    Top = 77
  end
end
