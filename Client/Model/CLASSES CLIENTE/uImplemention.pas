unit uImplemention;

interface

uses
  uDM, uINI, System.SysUtils, Vcl.Forms, Vcl.Dialogs;

type

TImplementar = class

private
    fNomeEmpresa           : String;
    fCNPJ                  : String;
    fPortaAplicacao        : String;
    fPortaSnap             : String;
    fPortaHTTP             : String;
    class var fCNPJAceito  : TImplementar ;

protected

public
  function AdcionarInformacao (aIP, aPortaServidor, aCaminho, aPortaAplicao, aPortaSnap, aPortaHTTP, aIP2,
                               aPortaServidor2, aCaminho2 : String): Boolean;
  function AdcionarCliente(aNome, aCNPJ : String) : Boolean;
  function ChamarIni(Sessao, Campo : String) : String;
  class function GetCNPJAceito : TImplementar;

published
  property NomeEmpresa       : String  read fNomeEmpresa       write fNomeEmpresa;
  property CNPJ              : String  read fCNPJ              write fCNPJ;
  property PortaAplicacao    : String  read fPortaAplicacao    write fPortaAplicacao;
  property PortaSnap         : String  read fPortaSnap         write fPortaSnap;
  property PortaHTTP         : String  read fPortaHTTP         write fPortaHTTP;
end;

implementation

//Grava o nome do cliente
function TImplementar.AdcionarCliente(aNome, aCNPJ: String): Boolean;
begin
  fNomeEmpresa    := aNome;
  fCNPJ           := aCNPJ;
end;

//Salva no arquivo INI as informações passada
function TImplementar.AdcionarInformacao(aIP, aPortaServidor, aCaminho, aPortaAplicao, aPortaSnap,
         aPortaHTTP, aIP2, aPortaServidor2, aCaminho2 : String): Boolean;
var
  DataBase : String;
  Mormot   : String;
  Ini      : TINI;
begin
  try
    Ini := TINI.Create;
    DataBase        := aIp + '/' + aPortaServidor + ':' + aCaminho + '/' + CNPJ + '.FDB';
    FPortaAplicacao := aPortaAplicao;
    FPortaSnap      := aPortaSnap;
    FPortaHTTP      := aPortaHTTP;
    Mormot          := aIp2 + '/' + aPortaServidor2 + ':' + aCaminho2 + '/' + CNPJ + '_LOG.FDB';
    try
      INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','FBCONNECTION','Database',DataBase);
      INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','DATASNAP'    ,'Port'    ,PortaSnap);
      INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','DATASNAP'    ,'PortHttp',PortaHTTP);
      INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','MORMOT'      ,'PORTA'   ,PortaAplicacao);
      INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','MORMOT'      ,'Database',Mormot);
      result := true;
    except
      result := false;
    end;
  finally
    Ini.Free;
  end;
end;
//tentando mostrar na tela
function TImplementar.ChamarIni(Sessao, Campo : String): String;
var
  Ini : TINI;
begin
  Ini := TINI.Create;
  try
    result := INI.LerINI(ExtractFilePath(Application.ExeName)+'Teste.ini',Sessao,Campo,'');
  finally
    Ini.Free;
  end;
end;
//Cria a unit
class function TImplementar.GetCNPJAceito: TImplementar;
begin
  if not Assigned(fCNPJAceito) then
    fCNPJAceito := TImplementar.Create;
  Result := fCNPJAceito;
end;

end.

