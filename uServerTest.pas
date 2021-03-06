unit uServerTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, CPort;

type
  TForm3 = class(TForm)
    ComPort1: TComPort;
    IdTCPClient1: TIdTCPClient;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
  private
    SerialBuf:string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  comport1.ShowSetupDialog;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  comport1.Connected:= true;
  SerialBuf := '';
end;


procedure TForm3.Button3Click(Sender: TObject);
begin
  comport1.Connected:=false;
end;

procedure TForm3.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  s:string;
  buf:string;
  c:char;
begin
  comport1.readstr(buf,count);
  for c in buf do
  begin
      memo1.SelText:=c;
  end;
  //memo1.Lines.Add(buf);
end;

end.
