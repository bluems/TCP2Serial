unit uTCP2SerialMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uWinSock;

type
  TForm2 = class(TForm)
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cbServerServiceIP: TComboBox;
    StaticText1: TStaticText;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    RadioGroup2: TRadioGroup;
    Panel1: TPanel;
    StaticText2: TStaticText;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  WS:TWinSockLib;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  WS:=TWinSockLib.Create;
  cbServerServiceIP.Items:=(WS.GetIP);
end;

end.
