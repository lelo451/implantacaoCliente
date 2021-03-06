program servidor;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uMethods in 'uMethods.pas' {ServerMethods1: TDSServerModule},
  uContainer in 'uContainer.pas' {ServerContainer1: TDataModule},
  uTela_servidor in 'uTela_servidor.pas' {Form1},
  uINI in 'uINI.pas',
  SSHResolve in 'SSHResolve.pas',
  uField in 'uField.pas',
  uDownload in 'uDownload.pas',
  uEscreverArquivo in 'uEscreverArquivo.pas',
  uPasta in 'uPasta.pas',
  SSHCommand in 'SSHCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TServerMethods1, ServerMethods1);
  Application.Run;
end.

