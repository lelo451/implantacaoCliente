program Cliente;

uses
  Vcl.Forms,
  uClientClasses in 'uClientClasses.pas',
  uModule in 'uModule.pas' {ClientModule1: TDataModule},
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  uObrigatorio in 'uObrigatorio.pas',
  uValidacaoCNPJ in 'uValidacaoCNPJ.pas',
  uProxyClient in 'uProxyClient.pas',
  uField in 'uField.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
