program HackAtum;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {Form1},
  uImplemention in 'Model\CLASSES CLIENTE\uImplemention.pas',
  uDM in 'Controller\BANCO\uDM.pas' {DataModule1: TDataModule},
  uValidacaoCNPJ in 'Model\uValidacaoCNPJ.pas',
  uINI in 'Model\CLASSES CLIENTE\uINI.pas',
  uDownload in 'Model\uDownload.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
