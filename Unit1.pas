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
    procedure АвтомобильGOD_VIPYSKASetText(Sender: TField; const Text: string);
    procedure АвтомобильOBYM_DVIGATELASetText(Sender: TField;
      const Text: string);
    procedure ПоставкаKOLICHESTVOSetText(Sender: TField; const Text: string);
    procedure ПоставкаSTOIMOSTISetText(Sender: TField; const Text: string);
    procedure ЗаказыIntervalGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure zakaziCalcFields(DataSet: TDataSet);
    procedure zakaz_autoCalcFields(DataSet: TDataSet);
    procedure klientCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
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

procedure TDM.АвтомобильGOD_VIPYSKASetText(Sender: TField; const Text: string);
begin
  if StrToInt(Text) < 0 then
    ShowMessage('Год выпуска не может быть отрицательным')
  else if StrToInt(Text) > 2012 then
    ShowMessage('Год выпуска не позже текущего года')
  else
    DM.autogod_vipyska.Value := StrToInt(Text);
end;

procedure TDM.АвтомобильOBYM_DVIGATELASetText(Sender: TField;
  const Text: string);
begin
  if StrToInt(Text) < 0 then
    ShowMessage('Объем двигателя не может быть отрицательным')
  else if StrToInt(Text) > 12 then
    ShowMessage('Слишком большой объем двигателя')
  else
    DM.autoobym_dvigatela.Value := StrToInt(Text);
end;

procedure TDM.ЗаказыIntervalGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := IntToStr(YearsBetween(Now(), StrToDate(DM.zakazidata.Value)));
end;

procedure TDM.ПоставкаKOLICHESTVOSetText(Sender: TField; const Text: string);
begin
  if StrToInt(Text) < 0 then
    ShowMessage('Количество не может быть меньше нуля')
  else
    DM.postavkakolichestvo.Value := StrToInt(Text);
end;

procedure TDM.ПоставкаSTOIMOSTISetText(Sender: TField; const Text: string);
begin
  if StrToInt(Text) < 0 then
    ShowMessage('Стоимость не может быть меньше нуля')
  else
    DM.postavkastoimosti.Value := StrToInt(Text);
end;

end.
