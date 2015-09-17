unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DB, DBGrids, StdCtrls, Buttons, Vcl.Menus,
  Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
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
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBNavigator5: TDBNavigator;
    DBNavigator6: TDBNavigator;
    DBNavigator7: TDBNavigator;
    DBNavigator8: TDBNavigator;
    DBNavigator9: TDBNavigator;
    DBNavigator10: TDBNavigator;
    DBNavigator11: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure DBGrid6TitleClick(Column: TColumn);
    procedure DBGrid7TitleClick(Column: TColumn);
    procedure DBGrid8TitleClick(Column: TColumn);
    procedure DBGrid9TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid10TitleClick(Column: TColumn);
    procedure N1Click(Sender: TObject);
    procedure DBNavigator11BeforeAction(Sender: TObject; Button: TNavigateBtn);
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

procedure TForm2.DBNavigator11BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (DM.CurrentUser.Name <> 'Руководитель') then
  begin
    ShowMessage('Удалять записи может только руководитель');
    Abort;
  end;
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
  if ((Sender as TMenuItem).Tag = 2) and (DM.CurrentUser.Name <> 'Руководитель')
  then
  begin
    ShowMessage('Удалять записи может только руководитель');
    Abort;
  end;

  Form4.mode := (Sender as TMenuItem).Tag;
  Form4.Show;
end;

procedure TForm2.PageControl1Change(Sender: TObject);
begin
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

end.
