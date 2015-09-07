unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB,
  RpRave, RpDefine, RpCon, RpConDS;

type
  TForm6 = class(TForm)
    RvDataSetConnection1: TRvDataSetConnection;
    RvProject2: TRvProject;
    RvProject3: TRvProject;
    RvProject4: TRvProject;
    RvProject8: TRvProject;
    RvProject9: TRvProject;
    RvProject10: TRvProject;
    RvDataSetConnection2: TRvDataSetConnection;
    RvDataSetConnection3: TRvDataSetConnection;
    RvDataSetConnection4: TRvDataSetConnection;
    RvDataSetConnection8: TRvDataSetConnection;
    RvDataSetConnection9: TRvDataSetConnection;
    RvDataSetConnection10: TRvDataSetConnection;
    RvProject1: TRvProject;
    RvDataSetConnection5: TRvDataSetConnection;
    RvProject5: TRvProject;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1;

end.
