unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DB, DBGrids, StdCtrls, Buttons, Vcl.Menus;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    TabSheet10: TTabSheet;
    DBGrid10: TDBGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    TabSheet11: TTabSheet;
    DBGrid11: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure UpdateComboBoxes;
    procedure FormShow(Sender: TObject);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure DBGrid6TitleClick(Column: TColumn);
    procedure DBGrid7TitleClick(Column: TColumn);
    procedure DBGrid8TitleClick(Column: TColumn);
    procedure DBGrid9TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid10TitleClick(Column: TColumn);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4;

procedure TForm2.Button1Click(Sender: TObject);
begin
  DM.auto.Last;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  DM.auto.Prior;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  LookupResult: variant;
begin
  LookupResult := DM.postavka.Lookup('kod_postavki', Edit2.Text,
    'postavlenii_prodykt;data_postavki');
  if VarType(LookupResult) = varNull then
    ShowMessage('Поставщика ' + Edit2.Text + ' не существует')
  else if VarType(LookupResult) = varEmpty then
    ShowMessage('Поиск не произведен')
  else if VarIsArray(LookupResult) then
    Label5.Caption := 'Продукт: ' + LookupResult[0] + ', дата: ' +
      LookupResult[1];
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  DM.auto.Filtered := true;
  if (ComboBox1.ItemIndex > 0) and (ComboBox2.ItemIndex > 0) then
    DM.auto.Filter := 'model = ' + QuotedStr(ComboBox1.Text) + '' +
      ' and strana = ' + QuotedStr(ComboBox2.Text) + ''
  else if (ComboBox1.ItemIndex > 0) then
    DM.auto.Filter := 'model = ' + QuotedStr(ComboBox1.Text) + ''
  else if (ComboBox2.ItemIndex > 0) then
    DM.auto.Filter := 'strana = ' + QuotedStr(ComboBox2.Text) + ''
  else
    DM.auto.Filtered := false;
end;

procedure TForm2.DBGrid10TitleClick(Column: TColumn);
begin
  if DM.zapchasti.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.zapchasti.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid1TitleClick(Column: TColumn);
begin
  if DM.auto.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.auto.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid2TitleClick(Column: TColumn);
begin
  if DM.postavka.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.postavka.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid3TitleClick(Column: TColumn);
begin
  if DM.tuning.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.tuning.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid4TitleClick(Column: TColumn);
begin
  if DM.postavchik.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.postavchik.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid5TitleClick(Column: TColumn);
begin
  if DM.klient.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.klient.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid6TitleClick(Column: TColumn);
begin
  if DM.zakazi.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.zakazi.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid7TitleClick(Column: TColumn);
begin
  if DM.zakaz_auto.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.zakaz_auto.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid8TitleClick(Column: TColumn);
begin
  if DM.zakaz_zapchasti.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.zakaz_zapchasti.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.DBGrid9TitleClick(Column: TColumn);
begin
  if DM.zakaz_tuninga.FieldDefs.IndexOf(Column.FieldName) <> -1 then
    DM.zakaz_tuninga.IndexFieldNames := Column.FieldName;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  DM.postavka.Locate('postavlenii_prodykt', Edit1.Text,
    [loCaseInsensitive, loPartialKey]);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
  Form2.Hide;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  PageControl1Change(Self);
end;

procedure TForm2.N1Click(Sender: TObject);
begin
  Form4.mode := (Sender as TMenuItem).Tag;
  Form4.Show;
end;

procedure TForm2.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
    UpdateComboBoxes;

  DM.auto.Close;
  DM.auto.Open;
  DM.postavchik.Close;
  DM.postavchik.Open;
  DM.postavka.Close;
  DM.postavka.Open;
  DM.klient.Close;
  DM.klient.Open;
  DM.zakazi.Close;
  DM.zakazi.Open;
  DM.zakaz_auto.Close;
  DM.zakaz_auto.Open;
  DM.zakaz_zapchasti.Close;
  DM.zakaz_zapchasti.Open;
  DM.zakaz_tuninga.Close;
  DM.zakaz_tuninga.Open;
  DM.tuning.Close;
  DM.tuning.Open;
  DM.zapchasti.Close;
  DM.zapchasti.Open;
  DM.sklad.Close;
  DM.sklad.Open;
end;

procedure TForm2.UpdateComboBoxes;
begin
  ComboBox1.Clear;
  ComboBox2.Clear;
  ComboBox1.Items.Add('');
  ComboBox2.Items.Add('');
  DM.auto.First;
  while not DM.auto.Eof do
  begin
    if ComboBox1.Items.IndexOf(DM.autoMODEL.Value) = -1 then
      ComboBox1.Items.Add(DM.autoMODEL.Value);
    if ComboBox2.Items.IndexOf(DM.autoSTRANA.Value) = -1 then
      ComboBox2.Items.Add(DM.autoSTRANA.Value);
    DM.auto.Next;
  end;
  ComboBox1.Sorted := true;
  ComboBox2.Sorted := true;
end;

end.
