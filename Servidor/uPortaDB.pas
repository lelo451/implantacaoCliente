unit uPortaDB;

interface

uses
  SysUtils, Vcl.Controls, Vcl.Forms,  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  uFrmPrincipal, uDM;

procedure prcVerificarPortaDB ( Form : TForm );

type


  TPortaDB = Class

  private
  { private declarations }

   public

   var Porta_DB : String;
  { public declarations }

end;

{ TPortaDB }

implementation

{ TPortaDB }

procedure prcVerificarPortaDB ( Form : TForm );
var
  Porta_DB : string;
begin
  Porta_DB := Form1.EdtPortaServidor.Text;
  if (Porta_DB) <> '' then  // Valida se a porta já está em uso no banco de dados.
  begin
    with Dm2 do
    begin
      QueryImplantacao.SQL.Clear;
      QueryImplantacao.SQL.Add('SELECT CNPJ FROM CNPJ');
      QueryImplantacao.SQL.Add('WHERE CNPJ = '+QuotedStr(Trim(Porta_DB)) );
      QueryImplantacao.Open;

      if not QueryImplantacao.IsEmpty then
      begin
        MessageDlg('A porta mencionada já está sendo utilizada', mtError, [mbOK], 0);
      end;

    end;
  end;
end;

end.

