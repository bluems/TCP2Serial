unit uTCP2SerialMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uWinSock, uServerTest;

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
    GroupBox4: TGroupBox;
    btnRun: TButton;
    btnStop: TButton;
    StaticText3: TStaticText;
    edtServerPort: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TForm2.Button1Click(Sender: TObject);
var
  testfrm:TForm3;
  i:integer;
begin
      for i := 0 to application.ComponentCount -1 do
    begin
      if application.Components[i] is TForm3 then
        begin
          (application.Components[i] as TForm).show;
          exit;
        end;
    end;
    testfrm:=TForm3.Create(application);
    testfrm.show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  //WS:=TWinSockLib.Create;
  //cbServerServiceIP.Items:=(WS.GetIP);
end;

end.
