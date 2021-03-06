unit uEscreverArquivo;

interface

uses
  uINI,System.SysUtils, Vcl.Forms, Vcl.Dialogs, uPasta, ShellAPI;

type


RInformacaoIni = Record
  Nome            : String;
  CNPJ            : String;
  PortaMormot     : String;
  PortaSnap       : String;
  PortaHTTP       : String;
end;

//Unit para criar e escrever a pasta do cliente
TEscreverArquivo = class

private
  function LastPos(Substr, S: string): Integer;

strict private
  class var Write  : TEscreverArquivo ;

public
  function VerificaCliente(Value : RInformacaoIni): Boolean;
  function EscreverIni(Value : RInformacaoIni): Boolean;
  function EscreverBat(Value : RInformacaoIni) : Boolean;
  class function Fazer : TEscreverArquivo;
end;

implementation

//Cria a unit
class function TEscreverArquivo.Fazer: TEscreverArquivo;
begin
  if not Assigned(Write) then
    Write := TEscreverArquivo.Create;
  Result := Write;
end;

//Verifica se cliente existe se n?o cria.
function TEscreverArquivo.VerificaCliente(Value : RInformacaoIni): Boolean;
var
  CaminhoPasta : String;
  CriarPasta   : TNovaPastaCliente;
  Informacao   : RInformacaoIni;
begin
  CaminhoPasta := 'C:\serverSigeps\'+Value.Nome;
  try
    if not FileExists(CaminhoPasta) then//se n?o existe cria
    begin
      CriarPasta := TNovaPastaCliente.Create;
      try
        CriarPasta.CriarPasta(Value.Nome);
        CriarPasta.CriarINI(CaminhoPasta+'\Database.ini');
        if not FileExists('C:\Program Files\SIN - Sistema de Implanta??o na Nuvem\projeto\prServerSIGEPS.zip') then
          CriarPasta.DownloadFile('http://www.vipsistemas.com.br/Version/2.5.26.99/prServerSIGEPS2.zip','C:\Program Files\SIN - Sistema de Implanta??o na Nuvem\projeto\prServerSIGEPS.zip');
        CriarPasta.Descompactar('C:\Program Files\SIN - Sistema de Implanta??o na Nuvem\projeto\prServerSIGEPS.zip',CaminhoPasta);
        ShellExecute(INVALID_HANDLE_VALUE,'Open',pchar(CaminhoPasta+'\prServerSIGEPS2.exe'),nil,nil,0);

      finally
        CriarPasta.Free;
      end;
    end
    else
    begin
      EscreverIni(Informacao);
    end;
    result := true;
  except
    result := false;
  end;

end;

//Edita o arquivo Ini
function TEscreverArquivo.EscreverIni(Value : RInformacaoIni): Boolean;
var
  DataBase     : String;
  Mormot       : String;
  CaminhoPasta : String;
begin
  CaminhoPasta := 'C:\serverSigeps\'+Value.Nome;
  DataBase       := '192.168.5.103/3050:opt/firebird/databases/' + Value.CNPJ + '.FDB';
  Mormot         := '192.168.5.103/3050:opt/firebird/databases/log/' + Value.CNPJ + '_LOG.FDB';
  try
    TINI.EscreverINI(CaminhoPasta+'\Database.ini','FBCONNECTION','Database',DataBase);
    TINI.EscreverINI(CaminhoPasta+'\Database.ini','DATASNAP'    ,'Port'    ,Value.PortaSnap);
    TINI.EscreverINI(CaminhoPasta+'\Database.ini','DATASNAP'    ,'PortHttp',Value.PortaHTTP);
    TINI.EscreverINI(CaminhoPasta+'\Database.ini','MORMOT'      ,'PORTA'   ,Value.PortaMormot);
    TINI.EscreverINI(CaminhoPasta+'\Database.ini','MORMOT'      ,'Database',Mormot);
    result := true;
  except
    result := false;
  end;

end;

//Salva no arquivo Bat para executar no iniciar
function TEscreverArquivo.EscreverBat(Value : RInformacaoIni): Boolean;
var
  Arq: TextFile;
  Bat, Caminho, Texto : String;
  Contem : Boolean;
begin
  Bat    := ExtractFileName('iniciar.bat');//nome do arquivo
  Result := False;
  Contem := False;
  //Local do arquivo
  Caminho := 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\iniciar.bat';
  AssignFile(Arq, Caminho);

  //Verifica se exite o arquivo
  try
    if FileExists(Caminho) then//verifica se exite
    begin
      Reset(Arq);//Coloca para leitura
      while not Eof(Arq) do//varre o arquivo
      begin
        Readln(Arq,Texto);//Verifica se contem
        if LastPos('::'+Value.CNPJ,Texto) <> 0 then//veifica se existe cliente
        begin
          Contem := True;
        end;
      end;
      Append(Arq); //abre para edi??o
      if Contem then //Se verdadeiro existe o comando para esse CNPJ
        ShowMessage('J? existe!')
      else
      begin
        Writeln(Arq, '::' + Value.CNPJ + ' ' + Value.Nome);
        Writeln(Arq, 'cd "C:\serverSigeps\' + Value.Nome + '"');
        Writeln(Arq, 'start prServerSIGEPS2_' + Value.Nome);
      end;


    end
    else
    begin
      ReWrite(Arq); //Cria novo arquivo bat
      WriteLn(Arq, '@echo off');
      Writeln(Arq, '');
      WriteLn(Arq, 'taskkill /F /IM prServerSIGEPS2*');
      WriteLn(Arq, 'taskkill /F /IM Resident.exe');
      Writeln(Arq, 'taskkill /F /IM Resident.exe');
      Writeln(Arq, '');
      Writeln(Arq, 'E:');
      Writeln(Arq, '');
      ShowMessage('Novo arquivo criado!!!!!');
    end;
    result := true
  finally
    CloseFile(Arq); //fecha
  end;
end;

//Pegar a posi??o inicial de uma palavra numa String
function TEscreverArquivo.LastPos(Substr, S: string): Integer;
var
  I: Integer;
begin
  Result := 0;
  if Length(Substr) = Length(S) then
  begin
    if Substr = S then
    begin
      Result := 1;
    end
    else
    begin
      Result := 0;
    end;
  end
  else if Length(Substr) < Length(S) then
  begin
    I := Length(S) - Length(Substr);
    repeat
      if copy(S, I, Length(Substr)) = Substr then
      begin
        Result := I;
      end;
      Dec(I);
    until (I = 0) or (Result <> 0);
  end;
end;
end.

