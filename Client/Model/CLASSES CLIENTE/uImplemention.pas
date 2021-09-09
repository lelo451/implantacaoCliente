unit uImplemention;

interface

uses
  uDM,uINI,System.SysUtils, Vcl.Forms;

type

TImplementar = class

private
    fNomeEmpresa           : String;
    fCNPJ                  : String;
    fDataImplementacao     : String;
    fSuporte               : String;
    fDataBase              : String;
    fPortaAplicacao        : String;
    fPortaSnap             : String;
    fPortaHTTP             : String;
    fMormot                : String;
    class var fCNPJAceito  : TImplementar ;

protected

public
  constructor Create;
  procedure EnviarBanco;
  function AdcionarInformacao (aIP, aPortaServidor, aCaminho, aPortaAplicao, aPortaSnap, aPortaHTTP, aIP2,
                               aPortaServidor2, aCaminho2 : String): Boolean;
  function AdcionarCliente(aNome, aCNPJ : String) : Boolean;
  function ChamarIni : String;
  class function GetCNPJAceito : TImplementar;

published
  property NomeEmpresa       : String  read fNomeEmpresa       write fNomeEmpresa;
  property CNPJ              : String  read fCNPJ              write fCNPJ;
  property DataImplementacao : String  read fDataImplementacao write fDataImplementacao;
  property Suporte           : String  read fSuporte           write fSuporte;
  property DataBase          : String  read fDataBase          write fDataBase;
  property PortaAplicacao    : String  read fPortaAplicacao    write fPortaAplicacao;
  property PortaSnap         : String  read fPortaSnap         write fPortaSnap;
  property PortaHTTP         : String  read fPortaHTTP         write fPortaHTTP;
  property Mormot            : String  read fMormot            write fMormot;
end;

implementation


function TImplementar.AdcionarCliente(aNome, aCNPJ: String): Boolean;
begin
  NomeEmpresa    := aNome;
  CNPJ           := aCNPJ;
end;

function TImplementar.AdcionarInformacao(aIP, aPortaServidor, aCaminho, aPortaAplicao, aPortaSnap,
         aPortaHTTP, aIP2, aPortaServidor2, aCaminho2 : String): Boolean;
var
  DataBase : String;
  Mormot   : String;
  Ini      : TINI;
begin
//ESTA FALTANDO
// TRY
//  TRY
//  .
//  .
//  EXCEPT
//  END;
//  .
//  .
// FINALLY
// END;
  DataBase       := aIp + '/' + aPortaServidor + ':' + aCaminho + '/' + CNPJ + '.FDB';
  PortaAplicacao := aPortaAplicao;
  PortaSnap      := aPortaSnap;
  PortaHTTP      := aPortaHTTP;
  Mormot         := aIp2 + '/' + aPortaServidor2 + ':' + aCaminho2 + '/' + CNPJ + '_LOG.FDB';

  {FALTA INSTANCIA DA CLASSE (CREATE E DESTOROY)
   FALTOU COMENTARIO PARA MELHOR ENTENDIMENTO DO CODIGO
   OQ A CLASSE 'ADICIONARINFORMAÇÃO' FAZ?
   O INI ESTÁ EXECUTANDO NILL (VAZIO)
   ESTÁ FALTANDO INPLEMENTAR TRATAMENTO DE ERROS CONFORME MOSTRADO ACIMA
  }

  INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','FBCONNECTION',DataBase      ,'');
  INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','DATASNAP'    ,PortaSnap     ,'');
  INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','DATASNAP'    ,PortaHTTP     ,'');
  INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','MORMOT'      ,PortaAplicacao,'');
  INI.EscreverINI(ExtractFilePath(Application.ExeName)+'Teste.ini','MORMOT'      ,Mormot        ,'');
  result := true;

end;

function TImplementar.ChamarIni: String;
var
  Ini : TINI;
begin
  INI.LerINI(ExtractFilePath(Application.ExeName)+'Teste.ini','FBCONNECTION','Database','');
  INI.LerINI(ExtractFilePath(Application.ExeName)+'Teste.ini','DATASNAP'    ,'Port'    ,'');
  INI.LerINI(ExtractFilePath(Application.ExeName)+'Teste.ini','DATASNAP'    ,'PortHttp','');
  INI.LerINI(ExtractFilePath(Application.ExeName)+'Teste.ini','MORMOT'      ,'PORTA'   ,'');
  INI.LerINI(ExtractFilePath(Application.ExeName)+'Teste.ini','MORMOT'      ,'Database','');
end;

constructor TImplementar.Create;
begin
  inherited Create;
end;

procedure TImplementar.EnviarBanco;
begin

end;

class function TImplementar.GetCNPJAceito: TImplementar;
begin
  if not Assigned(fCNPJAceito) then
    fCNPJAceito := TImplementar.Create;
  Result := fCNPJAceito;
end;

end.

