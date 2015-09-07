object DM: TDM
  OldCreateOrder = False
  Height = 214
  Width = 875
  object DataSource1: TDataSource
    DataSet = auto
    Left = 48
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = postavchik
    Left = 136
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = postavka
    Left = 216
    Top = 144
  end
  object DataSource4: TDataSource
    DataSet = klient
    Left = 296
    Top = 144
  end
  object DataSource5: TDataSource
    DataSet = zakazi
    Left = 376
    Top = 144
  end
  object DataSource6: TDataSource
    DataSet = zakaz_auto
    Left = 456
    Top = 144
  end
  object DataSource7: TDataSource
    DataSet = zakaz_zapchasti
    Left = 544
    Top = 144
  end
  object DataSource8: TDataSource
    DataSet = zakaz_tuninga
    Left = 648
    Top = 144
  end
  object DataSource9: TDataSource
    DataSet = tuning
    Left = 728
    Top = 144
  end
  object DataSource10: TDataSource
    DataSet = zapchasti
    Left = 808
    Top = 144
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=root;Persist Security Info=True;User' +
      ' ID=root;Data Source=auto'
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object auto: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'auto'
    Left = 48
    Top = 80
    object autokod_auto: TIntegerField
      FieldName = 'kod_auto'
    end
    object autokod_postavki: TIntegerField
      FieldName = 'kod_postavki'
    end
    object autopostavchik: TStringField
      FieldKind = fkLookup
      FieldName = 'postavchik'
      LookupDataSet = postavka
      LookupKeyFields = 'kod_postavki'
      LookupResultField = 'ima_postavchika'
      KeyFields = 'kod_postavki'
      Lookup = True
    end
    object automarka: TWideStringField
      FieldName = 'marka'
      Size = 255
    end
    object automodel: TWideStringField
      FieldName = 'model'
      Size = 255
    end
    object autogod_vipyska: TIntegerField
      FieldName = 'god_vipyska'
    end
    object autostrana: TWideStringField
      FieldName = 'strana'
      Size = 255
    end
    object autoobym_dvigatela: TIntegerField
      FieldName = 'obym_dvigatela'
    end
    object autocvet: TWideStringField
      FieldName = 'cvet'
      Size = 255
    end
    object autocena: TIntegerField
      FieldName = 'cena'
    end
    object autokolvo: TIntegerField
      FieldName = 'kolvo'
    end
  end
  object postavchik: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'postavchik'
    Left = 136
    Top = 80
    object postavchikkod_postavchika: TIntegerField
      FieldName = 'kod_postavchika'
    end
    object postavchikima_postavchika: TWideStringField
      FieldName = 'ima_postavchika'
      Size = 255
    end
    object postavchikstrana: TWideStringField
      FieldName = 'strana'
      Size = 255
    end
    object postavchikgorod: TWideStringField
      FieldName = 'gorod'
      Size = 255
    end
  end
  object postavka: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'postavka'
    Left = 216
    Top = 80
    object postavkakod_postavki: TIntegerField
      FieldName = 'kod_postavki'
    end
    object postavkakod_postavchika: TIntegerField
      FieldName = 'kod_postavchika'
    end
    object postavkaima_postavchika: TStringField
      FieldKind = fkLookup
      FieldName = 'ima_postavchika'
      LookupDataSet = postavchik
      LookupKeyFields = 'kod_postavchika'
      LookupResultField = 'ima_postavchika'
      KeyFields = 'kod_postavchika'
      Size = 255
      Lookup = True
    end
    object postavkapostavlenii_prodykt: TWideStringField
      FieldName = 'postavlenii_prodykt'
      Size = 255
    end
    object postavkakolichestvo: TIntegerField
      FieldName = 'kolichestvo'
    end
    object postavkadata_postavki: TWideStringField
      FieldName = 'data_postavki'
      Size = 255
    end
    object postavkastoimosti: TIntegerField
      FieldName = 'stoimosti'
    end
  end
  object klient: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = klientCalcFields
    TableName = 'klient'
    Left = 296
    Top = 80
    object klientkod_klienta: TIntegerField
      FieldName = 'kod_klienta'
    end
    object klientfamilya: TWideStringField
      FieldName = 'familya'
      Size = 255
    end
    object klientima: TWideStringField
      FieldName = 'ima'
      Size = 255
    end
    object klientotchestvo: TWideStringField
      FieldName = 'otchestvo'
      Size = 255
    end
    object klientstrana: TWideStringField
      FieldName = 'strana'
      Size = 255
    end
    object klientgorod: TWideStringField
      FieldName = 'gorod'
      Size = 255
    end
    object klientadres: TWideStringField
      FieldName = 'adres'
      Size = 255
    end
    object klienttelefon: TIntegerField
      FieldName = 'telefon'
    end
    object klientfio: TStringField
      FieldKind = fkCalculated
      FieldName = 'fio'
      Size = 50
      Calculated = True
    end
  end
  object zakazi: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = zakaziCalcFields
    TableName = 'zakazi'
    Left = 376
    Top = 80
    object zakazikod_zakaza: TIntegerField
      FieldName = 'kod_zakaza'
    end
    object zakazikod_klienta: TIntegerField
      FieldName = 'kod_klienta'
    end
    object zakazidata: TWideStringField
      FieldName = 'data'
      Size = 255
    end
    object zakazisposob_oplati: TWideStringField
      FieldName = 'sposob_oplati'
      Size = 255
    end
    object zakaziklientfamilya: TStringField
      FieldKind = fkLookup
      FieldName = 'klientfamilya'
      LookupDataSet = klient
      LookupKeyFields = 'kod_klienta'
      LookupResultField = 'familya'
      KeyFields = 'kod_klienta'
      Lookup = True
    end
    object zakaziklientima: TStringField
      FieldKind = fkLookup
      FieldName = 'klientima'
      LookupDataSet = klient
      LookupKeyFields = 'kod_klienta'
      LookupResultField = 'ima'
      KeyFields = 'kod_klienta'
      Lookup = True
    end
    object zakaziklientotchestvo: TStringField
      FieldKind = fkLookup
      FieldName = 'klientotchestvo'
      LookupDataSet = klient
      LookupKeyFields = 'kod_klienta'
      LookupResultField = 'otchestvo'
      KeyFields = 'kod_klienta'
      Lookup = True
    end
    object zakaziklientfio: TStringField
      FieldKind = fkCalculated
      FieldName = 'klientfio'
      Size = 50
      Calculated = True
    end
  end
  object zakaz_auto: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = zakaz_autoCalcFields
    TableName = 'zakaz_auto'
    Left = 456
    Top = 80
    object zakaz_autokod_zakaza: TIntegerField
      FieldName = 'kod_zakaza'
    end
    object zakaz_autokod_auto: TIntegerField
      FieldName = 'kod_auto'
    end
    object zakaz_autoautomarkamodel: TStringField
      FieldKind = fkCalculated
      FieldName = 'automarkamodel'
      Size = 50
      Calculated = True
    end
    object zakaz_autoautomarka: TStringField
      FieldKind = fkLookup
      FieldName = 'automarka'
      LookupDataSet = auto
      LookupKeyFields = 'kod_auto'
      LookupResultField = 'marka'
      KeyFields = 'kod_auto'
      Lookup = True
    end
    object zakaz_autoautomodel: TStringField
      FieldKind = fkLookup
      FieldName = 'automodel'
      LookupDataSet = auto
      LookupKeyFields = 'kod_auto'
      LookupResultField = 'model'
      KeyFields = 'kod_auto'
      Lookup = True
    end
    object zakaz_autodata: TStringField
      FieldKind = fkLookup
      FieldName = 'data'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'data'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
    object zakaz_autocena: TIntegerField
      FieldKind = fkLookup
      FieldName = 'cena'
      LookupDataSet = auto
      LookupKeyFields = 'kod_auto'
      LookupResultField = 'cena'
      KeyFields = 'kod_auto'
      Lookup = True
    end
    object zakaz_autokod_klienta: TIntegerField
      FieldKind = fkLookup
      FieldName = 'kod_klienta'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'kod_klienta'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
    object zakaz_autofio: TStringField
      FieldKind = fkLookup
      FieldName = 'fio'
      LookupDataSet = klient
      LookupKeyFields = 'kod_klienta'
      LookupResultField = 'fio'
      KeyFields = 'kod_klienta'
      Size = 50
      Lookup = True
    end
    object zakaz_autosposob_oplati: TStringField
      FieldKind = fkLookup
      FieldName = 'sposob_oplati'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'sposob_oplati'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
  end
  object zakaz_zapchasti: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'zakaz_zapchasti'
    Left = 544
    Top = 80
    object zakaz_zapchastikod_zakaza: TIntegerField
      FieldName = 'kod_zakaza'
    end
    object zakaz_zapchastikod_zapchasti: TIntegerField
      FieldName = 'kod_zapchasti'
    end
    object zakaz_zapchastinaimenovanie_zapchasti: TStringField
      FieldKind = fkLookup
      FieldName = 'naimenovanie_zapchasti'
      LookupDataSet = zapchasti
      LookupKeyFields = 'kod_zapchasti'
      LookupResultField = 'naimenovanie_zapchasti'
      KeyFields = 'kod_zapchasti'
      Lookup = True
    end
    object zakaz_zapchastidata: TStringField
      FieldKind = fkLookup
      FieldName = 'data'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'data'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
    object zakaz_zapchasticena: TIntegerField
      FieldKind = fkLookup
      FieldName = 'cena'
      LookupDataSet = zapchasti
      LookupKeyFields = 'kod_zapchasti'
      LookupResultField = 'cena'
      KeyFields = 'kod_zapchasti'
      Lookup = True
    end
    object zakaz_zapchastikod_klienta: TIntegerField
      FieldKind = fkLookup
      FieldName = 'kod_klienta'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'kod_klienta'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
    object zakaz_zapchastifio: TStringField
      FieldKind = fkLookup
      FieldName = 'fio'
      LookupDataSet = klient
      LookupKeyFields = 'kod_klienta'
      LookupResultField = 'fio'
      KeyFields = 'kod_klienta'
      Size = 50
      Lookup = True
    end
    object zakaz_zapchastisposob_oplati: TStringField
      FieldKind = fkLookup
      FieldName = 'sposob_oplati'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'sposob_oplati'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
  end
  object zakaz_tuninga: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'zakaz_tuninga'
    Left = 648
    Top = 80
    object zakaz_tuningakod_zakaza: TIntegerField
      FieldName = 'kod_zakaza'
    end
    object zakaz_tuningakod_tuninga: TIntegerField
      FieldName = 'kod_tuninga'
    end
    object zakaz_tuningayslygi: TStringField
      FieldKind = fkLookup
      FieldName = 'yslygi'
      LookupDataSet = tuning
      LookupKeyFields = 'kod_tuninga'
      LookupResultField = 'yslygi'
      KeyFields = 'kod_tuninga'
      Lookup = True
    end
    object zakaz_tuningadata: TStringField
      FieldKind = fkLookup
      FieldName = 'data'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'data'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
    object zakaz_tuningastoimosti: TIntegerField
      FieldKind = fkLookup
      FieldName = 'stoimosti'
      LookupDataSet = tuning
      LookupKeyFields = 'kod_tuninga'
      LookupResultField = 'stoimosti'
      KeyFields = 'kod_tuninga'
      Lookup = True
    end
    object zakaz_tuningakod_klienta: TIntegerField
      FieldKind = fkLookup
      FieldName = 'kod_klienta'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'kod_klienta'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
    object zakaz_tuningafio: TStringField
      FieldKind = fkLookup
      FieldName = 'fio'
      LookupDataSet = klient
      LookupKeyFields = 'kod_klienta'
      LookupResultField = 'fio'
      KeyFields = 'kod_klienta'
      Size = 50
      Lookup = True
    end
    object zakaz_tuningasposob_oplati: TStringField
      FieldKind = fkLookup
      FieldName = 'sposob_oplati'
      LookupDataSet = zakazi
      LookupKeyFields = 'kod_zakaza'
      LookupResultField = 'sposob_oplati'
      KeyFields = 'kod_zakaza'
      Lookup = True
    end
  end
  object tuning: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tuning'
    Left = 728
    Top = 80
    object tuningkod_tuninga: TIntegerField
      FieldName = 'kod_tuninga'
    end
    object tuningyslygi: TWideStringField
      FieldName = 'yslygi'
      Size = 255
    end
    object tuningstoimosti: TIntegerField
      FieldName = 'stoimosti'
    end
  end
  object zapchasti: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'zapchasti'
    Left = 808
    Top = 80
    object zapchastikod_zapchasti: TIntegerField
      FieldName = 'kod_zapchasti'
    end
    object zapchastikod_postavki: TIntegerField
      FieldName = 'kod_postavki'
    end
    object zapchastinaimenovanie_zapchasti: TWideStringField
      FieldName = 'naimenovanie_zapchasti'
      Size = 255
    end
    object zapchasticena: TIntegerField
      FieldName = 'cena'
    end
    object zapchastikolichestvo_na_sklade: TIntegerField
      FieldName = 'kolichestvo_na_sklade'
    end
    object zapchastiima_postavchika: TStringField
      FieldKind = fkLookup
      FieldName = 'ima_postavchika'
      LookupDataSet = postavka
      LookupKeyFields = 'kod_postavki'
      LookupResultField = 'ima_postavchika'
      KeyFields = 'kod_postavki'
      Lookup = True
    end
  end
  object DataSource11: TDataSource
    DataSet = sklad
    Left = 216
    Top = 16
  end
  object sklad: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sklad'
    Left = 136
    Top = 16
    object skladkod: TAutoIncField
      FieldName = 'kod'
      ReadOnly = True
    end
    object skladtip_produkta: TWideStringField
      FieldName = 'tip_produkta'
      Size = 255
    end
    object skladkod_produkta: TIntegerField
      FieldName = 'kod_produkta'
    end
    object skladnaimenovanie: TWideStringField
      FieldName = 'naimenovanie'
      Size = 255
    end
    object skladpostavchik: TWideStringField
      FieldName = 'postavchik'
      Size = 255
    end
    object skladdata_postavki: TWideStringField
      FieldName = 'data_postavki'
      Size = 255
    end
    object skladcena: TIntegerField
      FieldName = 'cena'
    end
    object skladkolichestvo: TIntegerField
      FieldName = 'kolichestvo'
    end
  end
end
