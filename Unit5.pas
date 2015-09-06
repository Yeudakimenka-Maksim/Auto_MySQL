unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm5.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL := Memo1.Lines;
  ADOQuery1.Open;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Show;
end;

end.
