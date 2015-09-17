unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit1, Unit3, unit4, Unit7;

procedure TForm9.Button1Click(Sender: TObject);
begin
  if (ComboBox1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Заполните все поля');
    ComboBox1.SetFocus;
    exit;
  end;
  if VarToStr(DM.user.Lookup('login', ComboBox1.Text, 'parol')) <> Edit2.Text
  then
  begin
    ShowMessage('Пароль неверен');
    Edit2.SetFocus;
    exit;
  end;
  DM.CurrentUser.Name := ComboBox1.Text;
  DM.CurrentUser.Password := Edit2.Text;
  Form3.Show;
  Form9.Hide;
end;

end.
