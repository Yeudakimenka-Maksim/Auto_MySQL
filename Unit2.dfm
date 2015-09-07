object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1040#1074#1090#1086#1089#1072#1083#1086#1085
  ClientHeight = 581
  ClientWidth = 946
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 540
    Width = 946
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 654
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 946
    Height = 540
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 469
        Align = alClient
        DataSource = DM.DataSource1
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'kod_auto'
            Title.Caption = #1050#1086#1076' '#1040#1074#1090#1086
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'postavchik'
            Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            Width = 100
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obym_dvigatela'
            Title.Caption = #1054#1073#1098#1105#1084' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
            Width = 90
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
            Width = 80
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
      object Panel2: TPanel
        Left = 0
        Top = 469
        Width = 938
        Height = 40
        Align = alBottom
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 1
        object Label1: TLabel
          Left = 350
          Top = 10
          Width = 50
          Height = 16
          Caption = #1052#1086#1076#1077#1083#1100':'
        end
        object Label2: TLabel
          Left = 545
          Top = 10
          Width = 47
          Height = 16
          Caption = #1057#1090#1088#1072#1085#1072':'
        end
        object Button1: TButton
          Left = 4
          Top = 7
          Width = 64
          Height = 25
          Caption = #1042' '#1082#1086#1085#1077#1094
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 74
          Top = 7
          Width = 136
          Height = 25
          Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
          TabOrder = 1
          OnClick = Button2Click
        end
        object ComboBox1: TComboBox
          Left = 407
          Top = 6
          Width = 125
          Height = 24
          Style = csDropDownList
          TabOrder = 2
          OnChange = ComboBox1Change
        end
        object ComboBox2: TComboBox
          Left = 600
          Top = 6
          Width = 125
          Height = 24
          Style = csDropDownList
          TabOrder = 3
          OnChange = ComboBox1Change
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1089#1090#1072#1074#1082#1080
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 469
        Align = alClient
        DataSource = DM.DataSource3
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid2TitleClick
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kolichestvo'
            Title.Caption = #1050#1086#1083#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_postavki'
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
            Width = 90
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
      object Panel3: TPanel
        Left = 0
        Top = 469
        Width = 938
        Height = 40
        Align = alBottom
        Caption = 'Panel3'
        ShowCaption = False
        TabOrder = 1
        object Label3: TLabel
          Left = 10
          Top = 10
          Width = 52
          Height = 16
          Caption = #1055#1088#1086#1076#1091#1082#1090':'
        end
        object Label4: TLabel
          Left = 190
          Top = 10
          Width = 83
          Height = 16
          Caption = #1050#1086#1076' '#1087#1086#1089#1090#1072#1074#1082#1080':'
        end
        object Label5: TLabel
          Left = 460
          Top = 10
          Width = 4
          Height = 16
        end
        object Edit1: TEdit
          Left = 70
          Top = 6
          Width = 100
          Height = 24
          TabOrder = 0
          OnChange = Edit1Change
        end
        object Edit2: TEdit
          Left = 279
          Top = 6
          Width = 100
          Height = 24
          TabOrder = 1
        end
        object Button3: TButton
          Left = 385
          Top = 6
          Width = 60
          Height = 25
          Caption = #1053#1072#1081#1090#1080
          TabOrder = 2
          OnClick = Button3Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      ImageIndex = 2
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid4TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'kod_postavchika'
            Title.Caption = #1050#1086#1076' '#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ima_postavchika'
            Title.Caption = #1048#1084#1103' '#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Width = 90
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
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1050#1083#1080#1077#1085#1090
      ImageIndex = 3
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource4
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid5TitleClick
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
            Width = 90
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
            Width = 99
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
    end
    object TabSheet5: TTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      ImageIndex = 4
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource5
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid6TitleClick
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
    end
    object TabSheet6: TTabSheet
      Caption = #1047#1072#1082#1072#1079' '#1072#1074#1090#1086
      ImageIndex = 5
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource6
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid7TitleClick
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
            Width = 297
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
            Width = 207
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sposob_oplati'
            Width = 89
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1047#1072#1082#1072#1079' '#1079#1072#1087#1095#1072#1089#1090#1080
      ImageIndex = 6
      object DBGrid8: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource7
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid8TitleClick
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
            FieldName = 'kod_zapchasti'
            Title.Caption = #1050#1086#1076' '#1079#1072#1087#1095#1072#1089#1090#1080
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'naimenovanie_zapchasti'
            Title.Caption = #1047#1072#1087#1095#1072#1089#1090#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cena'
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
            Width = 310
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sposob_oplati'
            Width = 115
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1047#1072#1082#1072#1079' '#1090#1102#1085#1080#1085#1075#1072
      ImageIndex = 7
      object DBGrid9: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource8
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid9TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'kod_zakaza'
            Title.Caption = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
            Width = 90
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stoimosti'
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
            Width = 341
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sposob_oplati'
            Width = 111
            Visible = True
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = #1058#1102#1085#1080#1085#1075
      ImageIndex = 8
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource9
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid3TitleClick
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
            Width = 125
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
    end
    object TabSheet10: TTabSheet
      Caption = #1047#1072#1087#1095#1072#1089#1090#1080
      ImageIndex = 9
      object DBGrid10: TDBGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 509
        Align = alClient
        DataSource = DM.DataSource10
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid10TitleClick
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
            Width = 90
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
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 672
    Top = 408
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Tag = 1
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OnClick = N1Click
    end
    object N3: TMenuItem
      Tag = 2
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OnClick = N1Click
    end
  end
end
