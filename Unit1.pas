unit Unit1;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  Vcl.Dialogs, DateUtils, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    ADOConnection1: TADOConnection;
    auto: TADOTable;
    postavchik: TADOTable;
    postavka: TADOTable;
    klient: TADOTable;
    zakazi: TADOTable;
    zakaz_auto: TADOTable;
    zakaz_zapchasti: TADOTable;
    zakaz_tuninga: TADOTable;
    tuning: TADOTable;
    zapchasti: TADOTable;
    autokod_auto: TIntegerField;
    autokod_postavki: TIntegerField;
    automarka: TWideStringField;
    automodel: TWideStringField;
    autogod_vipyska: TIntegerField;
    autostrana: TWideStringField;
    autoobym_dvigatela: TIntegerField;
    autocvet: TWideStringField;
    autocena: TIntegerField;
    autokolvo: TIntegerField;
    postavchikkod_postavchika: TIntegerField;
    postavchikima_postavchika: TWideStringField;
    postavchikstrana: TWideStringField;
    postavchikgorod: TWideStringField;
    postavkakod_postavki: TIntegerField;
    postavkakod_postavchika: TIntegerField;
    postavkapostavlenii_prodykt: TWideStringField;
    postavkakolichestvo: TIntegerField;
    postavkadata_postavki: TWideStringField;
    postavkastoimosti: TIntegerField;
    klientkod_klienta: TIntegerField;
    klientfamilya: TWideStringField;
    klientima: TWideStringField;
    klientotchestvo: TWideStringField;
    klientstrana: TWideStringField;
    klientgorod: TWideStringField;
    klientadres: TWideStringField;
    klienttelefon: TIntegerField;
    zakazikod_zakaza: TIntegerField;
    zakazikod_klienta: TIntegerField;
    zakazidata: TWideStringField;
    zakazisposob_oplati: TWideStringField;
    zakaz_autokod_zakaza: TIntegerField;
    zakaz_autokod_auto: TIntegerField;
    zakaz_zapchastikod_zakaza: TIntegerField;
    zakaz_zapchastikod_zapchasti: TIntegerField;
    zakaz_tuningakod_zakaza: TIntegerField;
    zakaz_tuningakod_tuninga: TIntegerField;
    tuningkod_tuninga: TIntegerField;
    tuningyslygi: TWideStringField;
    tuningstoimosti: TIntegerField;
    zapchastikod_zapchasti: TIntegerField;
    zapchastikod_postavki: TIntegerField;
    zapchastinaimenovanie_zapchasti: TWideStringField;
    zapchasticena: TIntegerField;
    zapchastikolichestvo_na_sklade: TIntegerField;
    postavkaima_postavchika: TStringField;
    autopostavchik: TStringField;
    zakaziklientfamilya: TStringField;
    zakaziklientima: TStringField;
    zakaziklientotchestvo: TStringField;
    zakaziklientfio: TStringField;
    zakaz_autoautomarka: TStringField;
    zakaz_autoautomodel: TStringField;
    zakaz_autoautomarkamodel: TStringField;
    zakaz_zapchastinaimenovanie_zapchasti: TStringField;
    zakaz_tuningayslygi: TStringField;
    zakaz_tuningadata: TStringField;
    zakaz_autodata: TStringField;
    zakaz_zapchastidata: TStringField;
    zapchastiima_postavchika: TStringField;
    DataSource11: TDataSource;
    sklad: TADOTable;
    skladkod: TAutoIncField;
    skladtip_produkta: TWideStringField;
    skladkod_produkta: TIntegerField;
    skladnaimenovanie: TWideStringField;
    skladpostavchik: TWideStringField;
    skladdata_postavki: TWideStringField;
    skladcena: TIntegerField;
    skladkolichestvo: TIntegerField;
    zakaz_tuningastoimosti: TIntegerField;
    zakaz_tuningakod_klienta: TIntegerField;
    klientfio: TStringField;
    zakaz_tuningafio: TStringField;
    zakaz_tuningasposob_oplati: TStringField;
    zakaz_zapchasticena: TIntegerField;
    zakaz_zapchastikod_klienta: TIntegerField;
    zakaz_zapchastifio: TStringField;
    zakaz_zapchastisposob_oplati: TStringField;
    zakaz_autocena: TIntegerField;
    zakaz_autokod_klienta: TIntegerField;
    zakaz_autofio: TStringField;
    zakaz_autosposob_oplati: TStringField;
    DataSource12: TDataSource;
    user: TADOTable;
    userkod_usera: TAutoIncField;
    userlogin: TWideStringField;
    userparol: TWideStringField;
    procedure zakaziCalcFields(DataSet: TDataSet);
    procedure zakaz_autoCalcFields(DataSet: TDataSet);
    procedure klientCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    CurrentUser: record
	  Name: string[255];
      Password: string[255];
    end;
  end;

var
  DM: TDM;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

procedure TDM.klientCalcFields(DataSet: TDataSet);
begin
  DM.klientfio.Value := DM.klientfamilya.Value + ' ' + DM.klientima.Value + ' '
    + DM.klientotchestvo.Value;
end;

procedure TDM.zakaziCalcFields(DataSet: TDataSet);
begin
  DM.zakaziklientfio.Value := DM.zakaziklientfamilya.Value + ' ' +
    DM.zakaziklientima.Value + ' ' + DM.zakaziklientotchestvo.Value;
end;

procedure TDM.zakaz_autoCalcFields(DataSet: TDataSet);
begin
  DM.zakaz_autoautomarkamodel.Value := DM.zakaz_autoautomarka.Value + ' ' +
    DM.zakaz_autoautomodel.Value;
end;

end.
