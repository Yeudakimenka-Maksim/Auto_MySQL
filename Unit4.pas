unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UITypes;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    ComboBox4: TComboBox;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    mode: integer;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
begin
  case mode of
    0:
      begin
        if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or
          (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') or
          (Edit7.Text = '') or (Edit8.Text = '') or (Edit9.Text = '') or
          (ComboBox1.Text = '') then
        begin
          ShowMessage('Заполните все поля!');
          exit;
        end;
        DM.auto.Insert;
        DM.auto.Fields[1].AsInteger := StrToInt(ComboBox1.Text);
        DM.auto.Fields[3].AsString := Edit8.Text;
        DM.auto.Fields[4].AsString := Edit9.Text;
        DM.auto.Fields[5].AsInteger := StrToInt(Edit2.Text);
        DM.auto.Fields[6].AsString := Edit3.Text;
        DM.auto.Fields[7].AsInteger := StrToInt(Edit4.Text);
        DM.auto.Fields[8].AsString := Edit5.Text;
        DM.auto.Fields[9].AsInteger := StrToInt(Edit6.Text);
        DM.auto.Fields[10].AsInteger := StrToInt(Edit7.Text);
        DM.auto.Post;
        Close;
      end;
    1:
      begin
        if (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') or
          (Edit5.Text = '') or (Edit6.Text = '') or (Edit7.Text = '') or
          (Edit8.Text = '') or (Edit9.Text = '') or (ComboBox1.Text = '') or
          (ComboBox4.Text = '') then
        begin
          ShowMessage('Заполните все поля!');
          exit;
        end;
        DM.auto.Locate('KOD_AUTO', ComboBox4.Text, []);
        DM.auto.Edit;
        DM.auto.Fields[1].AsInteger := StrToInt(ComboBox1.Text);
        DM.auto.Fields[3].AsString := Edit8.Text;
        DM.auto.Fields[4].AsString := Edit9.Text;
        DM.auto.Fields[5].AsInteger := StrToInt(Edit2.Text);
        DM.auto.Fields[6].AsString := Edit3.Text;
        DM.auto.Fields[7].AsInteger := StrToInt(Edit4.Text);
        DM.auto.Fields[8].AsString := Edit5.Text;
        DM.auto.Fields[9].AsInteger := StrToInt(Edit6.Text);
        DM.auto.Fields[10].AsInteger := StrToInt(Edit7.Text);
        DM.auto.Post;
        Close;
      end;
    2:
      begin
        DM.auto.Locate('KOD_AUTO', ComboBox4.Text, []);
        if MessageDlg('Вы действительно хотите удалить запись №' +
          ComboBox4.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          DM.auto.Delete;
          Close;
        end;
      end;
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.ComboBox4Change(Sender: TObject);
var
  LookupResult: variant;
begin
  LookupResult := DM.auto.Lookup('KOD_AUTO', ComboBox4.Text,
    'KOD_POSTAVKI;MARKA;MODEL;GOD_VIPYSKA;STRANA;OBYM_DVIGATELA;CVET;CENA;KOLVO');
  if mode = 1 then
    ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(LookupResult[0])
  else
    Edit10.Text := LookupResult[0];
  Edit8.Text := LookupResult[1];
  Edit9.Text := LookupResult[2];
  Edit2.Text := LookupResult[3];
  Edit3.Text := LookupResult[4];
  Edit4.Text := LookupResult[5];
  Edit5.Text := LookupResult[6];
  Edit6.Text := LookupResult[7];
  Edit7.Text := LookupResult[8];
end;

procedure TForm4.FormShow(Sender: TObject);
var
  i: integer;
begin
  case mode of
    0:
      begin
        Caption := 'Добавление записей';
        Button1.Caption := 'Добавить';
        ComboBox4.Visible := false;
        Edit1.Visible := true;
        ComboBox1.Visible := true;
        Edit10.Visible := false;
        for i := 1 to Panel1.ControlCount do
          if Panel1.Controls[i - 1].ClassType = TEdit then
          begin
            (Panel1.Controls[i - 1] as TEdit).ReadOnly := false;
            (Panel1.Controls[i - 1] as TEdit).Clear;
          end;
        DM.auto.Last;
        Edit1.Text := IntToStr(DM.autoKOD_AUTO.Value + 1);
        Edit1.ReadOnly := true;
        ComboBox1.Clear;
        DM.postavka.First;
        while not DM.postavka.Eof do
        begin
          ComboBox1.Items.Add(IntToStr(DM.postavkaKOD_POSTAVKI.Value));
          DM.postavka.Next;
        end;
      end;
    1:
      begin
        Caption := 'Изменение записей';
        Button1.Caption := 'Изменить';
        ComboBox4.Visible := true;
        Edit1.Visible := false;
        ComboBox1.Visible := true;
        Edit10.Visible := false;
        for i := 1 to Panel1.ControlCount do
          if Panel1.Controls[i - 1].ClassType = TEdit then
            (Panel1.Controls[i - 1] as TEdit).ReadOnly := false;
        i := DM.autoKOD_AUTO.Value;
        ComboBox4.Clear;
        DM.auto.First;
        while not DM.auto.Eof do
        begin
          ComboBox4.Items.Add(IntToStr(DM.autoKOD_AUTO.Value));
          DM.auto.Next;
        end;
        ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(IntToStr(i));
        ComboBox1.Clear;
        DM.postavka.First;
        while not DM.postavka.Eof do
        begin
          ComboBox1.Items.Add(IntToStr(DM.postavkaKOD_POSTAVKI.Value));
          DM.postavka.Next;
        end;
        ComboBox4Change(Self);
      end;
    2:
      begin
        Caption := 'Удаление записей';
        Button1.Caption := 'Удалить';
        ComboBox4.Visible := true;
        Edit1.Visible := false;
        ComboBox1.Visible := false;
        Edit10.Visible := true;
        for i := 1 to Panel1.ControlCount do
          if Panel1.Controls[i - 1].ClassType = TEdit then
            (Panel1.Controls[i - 1] as TEdit).ReadOnly := true;
        i := DM.autoKOD_AUTO.Value;
        ComboBox4.Clear;
        DM.auto.First;
        while not DM.auto.Eof do
        begin
          ComboBox4.Items.Add(IntToStr(DM.autoKOD_AUTO.Value));
          DM.auto.Next;
        end;
        ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(IntToStr(i));
        ComboBox4Change(Self);
      end;
  end;
end;

end.
