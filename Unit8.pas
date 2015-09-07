unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    StaticText1: TStaticText;
    ADOTable1: TADOTable;
    Label2: TLabel;
    ComboBox2: TComboBox;
    DBGrid3: TDBGrid;
    DBGrid10: TDBGrid;
    DBGrid11: TDBGrid;
    DBGrid9: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit1, Unit4, Unit2;

procedure TForm8.Button1Click(Sender: TObject);
begin
  if (ComboBox1.Text = '') then
  begin
    ShowMessage('Выберите поле для поиска');
    ComboBox1.SetFocus;
    exit;
  end;
  if (RadioGroup1.Buttons[0].Checked) and (Edit1.Text = '') then
  begin
    ShowMessage('Введите значение для поиска');
    Edit1.SetFocus;
    exit;
  end;
  if (RadioGroup1.Buttons[1].Checked) and
    ((Edit2.Text = '') and (Edit3.Text = '')) then
  begin
    ShowMessage('Введите хотя бы одно ограничение для поиска');
    Edit2.SetFocus;
    exit;
  end;

  if RadioGroup1.Buttons[0].Checked then
  begin
    (DM.FindComponent(ADOTable1.TableName) as TADOTable).Filter :=
      ComboBox1.Text + ' = ' + QuotedStr(Edit1.Text);
  end
  else if RadioGroup1.Buttons[1].Checked then
  begin
    if (Edit2.Text <> '') and (Edit3.Text = '') then
      (DM.FindComponent(ADOTable1.TableName) as TADOTable).Filter :=
        ComboBox1.Text + ' >= ' + QuotedStr(Edit2.Text)
    else if (Edit2.Text = '') and (Edit3.Text <> '') then
      (DM.FindComponent(ADOTable1.TableName) as TADOTable).Filter :=
        ComboBox1.Text + ' <= ' + QuotedStr(Edit3.Text)
    else if (Edit2.Text <> '') and (Edit3.Text <> '') then
      (DM.FindComponent(ADOTable1.TableName) as TADOTable).Filter :=
        ComboBox1.Text + ' >= ' + QuotedStr(Edit2.Text) + ' and ' +
        ComboBox1.Text + ' <= ' + QuotedStr(Edit3.Text);
  end;
  (DM.FindComponent(ADOTable1.TableName) as TADOTable).Filtered := true;
end;

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
  if (ADOTable1.FieldDefList.FieldByName(ComboBox1.Text).DataType = ftInteger)
    or (ADOTable1.FieldDefList.FieldByName(ComboBox1.Text).DataType = ftSmallint)
  then
  begin
    RadioGroup1.Buttons[1].Enabled := true;
    Edit1.NumbersOnly := true;
    Edit2.Enabled := true;
    Edit3.Enabled := true;
  end
  else
  begin
    RadioGroup1.Buttons[1].Enabled := false;
    Edit1.NumbersOnly := false;
    Edit2.Enabled := false;
    Edit3.Enabled := false;
  end;
end;

procedure TForm8.ComboBox2Change(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to Form8.ComponentCount do
    if Form8.Components[i - 1].ClassType = TDBGrid then
      (Form8.Components[i - 1] as TDBGrid).Visible := false;

  ADOTable1.Close;
  if ComboBox2.Text = 'Автомобили' then
  begin
    DBGrid1.Visible := true;
    ADOTable1.TableName := 'auto';
  end
  else if ComboBox2.Text = 'Поставки' then
  begin
    DBGrid2.Visible := true;
    ADOTable1.TableName := 'postavka';
  end
  else if ComboBox2.Text = 'Поставщик' then
  begin
    DBGrid4.Visible := true;
    ADOTable1.TableName := 'postavchik';
  end
  else if ComboBox2.Text = 'Клиент' then
  begin
    DBGrid5.Visible := true;
    ADOTable1.TableName := 'klient';
  end
  else if ComboBox2.Text = 'Заказы' then
  begin
    DBGrid6.Visible := true;
    ADOTable1.TableName := 'zakazi';
  end
  else if ComboBox2.Text = 'Заказ авто' then
  begin
    DBGrid7.Visible := true;
    ADOTable1.TableName := 'zakaz_auto';
  end
  else if ComboBox2.Text = 'Заказ запчасти' then
  begin
    DBGrid8.Visible := true;
    ADOTable1.TableName := 'zakaz_zapchasti';
  end
  else if ComboBox2.Text = 'Заказ тюнинга' then
  begin
    DBGrid9.Visible := true;
    ADOTable1.TableName := 'zakaz_tuninga';
  end
  else if ComboBox2.Text = 'Тюнинг' then
  begin
    DBGrid3.Visible := true;
    ADOTable1.TableName := 'tuning';
  end
  else if ComboBox2.Text = 'Запчасти' then
  begin
    DBGrid10.Visible := true;
    ADOTable1.TableName := 'zapchasti';
  end
  else if ComboBox2.Text = 'Склад' then
  begin
    DBGrid11.Visible := true;
    ADOTable1.TableName := 'sklad';
  end;
  ADOTable1.Open;
  ComboBox1.Items := ADOTable1.FieldDefList;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Show;
  Form8.Hide;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  ComboBox2Change(Self);
end;

procedure TForm8.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.Buttons[0].Checked then
    Edit1.SetFocus
  else if RadioGroup1.Buttons[1].Checked then
    Edit2.SetFocus;
end;

end.
