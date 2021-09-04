program ImplantacaoCliente;

uses
  Vcl.Forms,
  uFrmHome in 'uFrmHome.pas' {FrmHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmHome, FrmHome);
  Application.Run;
end.
