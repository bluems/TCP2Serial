program pTCP2Serial;

uses
  Vcl.Forms,
  uTCP2SerialMain in 'uTCP2SerialMain.pas' {Form2},
  uTCP2SerialClient in 'uTCP2SerialClient.pas',
  uTCP2SerialServer in 'uTCP2SerialServer.pas',
  uWinSock in 'uWinSock.pas',
  uClientView in 'uClientView.pas' {Form1},
  uServerTest in 'uServerTest.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
