unit uValidarCNPJ;

interface

uses
SysUtils, Vcl.Controls, Vcl.Forms,  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
   uImplemention, uINI;





type

TValidacaoCNPJ = class


private
{ private declarations }

 public
  function ValidarCNPJNoBancodDados ( aCNPJ:string):string;

 var CNPJ : string;

{ public declarations }

end;

{ TValidacao }


implementation

uses
uMethods;

{ TValidacao }


function TValidacaoCNPJ.ValidarCNPJNoBancodDados(aCNPJ: string):string;
begin
 with ServerMethods1 do
    begin
      QueryImplantacao.Open();
      QueryImplantacao.SQL.Clear;
      QueryImplantacao.SQL.Add ('Select from CNPJ where Implantacao =' + aCNPJ);
      QueryImplantacao.close;
    end;
     if not ServerMethods1.QueryImplantacao.IsEmpty then
    begin
      result:= 'Já tem parsa';
    end;
end;


end.
