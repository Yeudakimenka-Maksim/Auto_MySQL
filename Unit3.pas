unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, ShellApi;

type
  TForm3 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    N6: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    Pfgxfcnb1: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure Pfgxfcnb1Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit5, Unit6, Unit7, Unit8;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm3.N10Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PWideChar(ExtractFilePath(ParamStr(0)) +
    '..\..\help\Help.chm'), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm3.N11Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 0;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N12Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 3;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N13Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 1;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N14Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 4;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N15Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 5;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N16Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 6;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N17Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 7;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N18Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 8;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N19Click(Sender: TObject);
begin
  Form8.Show;
  Form3.Hide
end;

procedure TForm3.N20Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject1.Execute;
  Form6.Free;
end;

procedure TForm3.N6Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 2;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N8Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.N9Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm3.Pfgxfcnb1Click(Sender: TObject);
begin
  Form2.PageControl1.ActivePageIndex := 9;
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.N21Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject2.Execute;
  Form6.Free;
end;

procedure TForm3.N22Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject3.Execute;
  Form6.Free;
end;

procedure TForm3.N23Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject4.Execute;
  Form6.Free;
end;

procedure TForm3.N24Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject10.Execute;
  Form6.Free;
end;

procedure TForm3.N25Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject10.Execute;
  Form6.Free;
end;

procedure TForm3.N26Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject10.Execute;
  Form6.Free;
end;

procedure TForm3.N27Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject8.Execute;
  Form6.Free;
end;

procedure TForm3.N28Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject9.Execute;
  Form6.Free;
end;

procedure TForm3.N29Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Self);
  Form6.RvProject10.Execute;
  Form6.Free;
end;

end.
