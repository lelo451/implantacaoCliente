program Server;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit1 in 'FormUnit1.pas' {Form1},
  ServerMethods in 'ServerMethods.pas' {ServerMethods1: TDataModule},
  ServerContainer in 'ServerContainer.pas' {Server: TDataModule},
  WebModule in 'WebModule.pas' {WebModule1: TWebModule},
  uDownload in '..\Modal\CLASSES SERVIDOR\uDownload.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.