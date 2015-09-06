object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1040#1074#1090#1086#1089#1072#1083#1086#1085
  ClientHeight = 569
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 528
    Width = 672
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 536
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
    Width = 672
    Height = 528
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource1
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
            FieldName = 'KOD_AUTO'
            Title.Caption = #1050#1086#1076'_'#1040#1074#1090#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_POSTAVKI'
            Title.Caption = #1050#1086#1076'_'#1055#1086#1089#1090#1072#1074#1082#1080
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DataPostavki'
            Title.Caption = #1044#1072#1090#1072'_'#1087#1086#1089#1090#1072#1074#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARKA'
            Title.Caption = #1052#1072#1088#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODEL'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GOD_VIPYSKA'
            Title.Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRANA'
            Title.Caption = #1057#1090#1088#1072#1085#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBYM_DVIGATELA'
            Title.Caption = #1054#1073#1098#1105#1084' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CVET'
            Title.Caption = #1062#1074#1077#1090
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CENA'
            Title.Caption = #1062#1077#1085#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOLVO'
            Title.Caption = #1050#1086#1083#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUMMA'
            Title.Caption = #1057#1091#1084#1084#1072
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1089#1090#1072#1074#1082#1080
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 497
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
            FieldName = 'KOD_POSTAVKI'
            Title.Caption = #1050#1086#1076'_'#1055#1086#1089#1090#1072#1074#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_POSTAVCHIKA'
            Title.Caption = #1050#1086#1076'_'#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IMA_POSTAVCHIKA'
            Title.Caption = #1048#1084#1103'_'#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSTAVLENII_PRODYKT'
            Title.Caption = #1055#1086#1089#1090#1072#1074#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1076#1091#1082#1090
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOLICHESTVO'
            Title.Caption = #1050#1086#1083#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_POSTAVKI'
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STOIMOSTI'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      ImageIndex = 2
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_POSTAVCHIKA'
            Title.Caption = #1050#1086#1076'_'#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMA_POSTAVCHIKA'
            Title.Caption = #1048#1084#1103'_'#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRANA'
            Title.Caption = #1057#1090#1088#1072#1085#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GOROD'
            Title.Caption = #1043#1086#1088#1086#1076
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
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource4
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_KLIENTA'
            Title.Caption = #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAMILYA'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMA'
            Title.Caption = #1048#1084#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OTCHESTVO'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRANA'
            Title.Caption = #1057#1090#1088#1072#1085#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GOROD'
            Title.Caption = #1043#1086#1088#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADRES'
            Title.Caption = #1040#1076#1088#1077#1089
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFON'
            Title.Caption = #1058#1077#1083#1077#1092#1086#1085
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = #1044#1072#1090#1072
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
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource5
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_ZAKAZA'
            Title.Caption = #1050#1086#1076'_'#1047#1072#1082#1072#1079#1072
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_KLIENTA'
            Title.Caption = #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = #1044#1072#1090#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Interval'
            Title.Caption = #1048#1085#1090#1077#1088#1074#1072#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SPOSOB_OPLATI'
            Title.Caption = #1057#1087#1086#1089#1086#1073' '#1086#1087#1083#1072#1090#1099
            Width = 300
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1047#1072#1082#1072#1079' '#1072#1074#1090#1086
      ImageIndex = 5
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource6
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_ZAKAZA'
            Title.Caption = #1050#1086#1076'_'#1047#1072#1082#1072#1079#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_AUTO'
            Title.Caption = #1050#1086#1076'_'#1040#1074#1090#1086
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Marka'
            Title.Caption = #1052#1072#1088#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Model'
            Title.Caption = #1052#1086#1076#1077#1083#1100
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
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource7
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_ZAKAZA'
            Title.Caption = #1050#1086#1076'_'#1047#1072#1082#1072#1079#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_ZAPCHASTI'
            Title.Caption = #1050#1086#1076'_'#1079#1072#1087#1095#1072#1089#1090#1080
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Nazvanie'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
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
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource8
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_ZAKAZA'
            Title.Caption = #1050#1086#1076'_'#1079#1072#1082#1072#1079#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_TUNINGA'
            Title.Caption = #1050#1086#1076'_'#1058#1102#1085#1080#1085#1075#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Usluga'
            Title.Caption = #1059#1089#1083#1091#1075#1072
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
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource9
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_TUNINGA'
            Title.Caption = #1050#1086#1076'_'#1090#1102#1085#1080#1085#1075#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YSLYGI'
            Title.Caption = #1059#1089#1083#1091#1075#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STOIMOSTI'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
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
        Width = 664
        Height = 497
        Align = alClient
        DataSource = DM.DataSource10
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KOD_ZAPCHASTI'
            Title.Caption = #1050#1086#1076'_'#1047#1072#1087#1095#1072#1089#1090#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_POSTAVKI'
            Title.Caption = #1050#1086#1076'_'#1055#1086#1089#1090#1072#1074#1082#1080
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DataPostavki'
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAIMENOVANIE_ZAPCHASTI'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1095#1072#1089#1090#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CENA'
            Title.Caption = #1062#1077#1085#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOLICHESTVO_NA_SKLADE'
            Title.Caption = #1050#1086#1083#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
            Visible = True
          end>
      end
    end
  end
end
