unit uPasta;

interface

uses
  System.SysUtils, Winapi.Windows, System.Net.HttpClientComponent, System.Classes,
  Vcl.Dialogs, uINI, System.Zip;

type
  TNovaPastaCliente = class
  public
    function CriarPasta(Nome:String):Boolean;
    function DownloadFile(SourceFile, DestFile: string): Boolean;
    function Descompactar(aCaminhoOriginal, aCaminhoDescompactado : String) : Boolean;
    procedure CriarINI(CaminhoPasta: string);
  end;

implementation

{ TPasta }

//Cria pasta para cliente
function TNovaPastaCliente.CriarPasta(Nome: String):Boolean;
var
  Caminho : String;
begin
  Caminho := 'C:\serverSigeps\' + Nome;
  if not DirectoryExists(caminho) then
    CreateDir(caminho)
  else
    Result := true;
end;

//Cria arquivo INI do DataBase Padr?o
procedure TNovaPastaCliente.CriarINI(CaminhoPasta: string);
begin
  try
    if not FileExists(CaminhoPasta) then//se n?o existe cria
    begin
      TINI.EscreverINI(CaminhoPasta,'FBCONNECTION','Database'      ,'192.168.5.103/3050:opt/firebird/databases/06051295000101.FDB');
      TINI.EscreverINI(CaminhoPasta,'FBCONNECTION','Password'      ,'tew93uj8');
      TINI.EscreverINI(CaminhoPasta,'FBCONNECTION','ServerCharSet' ,'WIN1252');
      TINI.EscreverINI(CaminhoPasta,'FBCONNECTION','sqldialect'    ,'3');
      TINI.EscreverINI(CaminhoPasta,'FBCONNECTION','HostName'      ,'localhost');
      TINI.EscreverINI(CaminhoPasta,'FBCONNECTION','WaitOnLocks'   ,'False');
      TINI.EscreverINI(CaminhoPasta,'FBCONNECTION','User_Name'     ,'ftoliveira');
      TINI.EscreverINI(CaminhoPasta,'DATASNAP'    ,'Port'          ,'2030');
      TINI.EscreverINI(CaminhoPasta,'DATASNAP'    ,'PortHttp'      ,'3030');
      TINI.EscreverINI(CaminhoPasta,'DBX'         ,'TipoBancoDados','FBCONNECTION');
      TINI.EscreverINI(CaminhoPasta,'MORMOT'      ,'PORTA'         ,'4030');
      TINI.EscreverINI(CaminhoPasta,'MORMOT'      ,'Database'      ,'192.168.5.103/3050:opt/firebird/databases/log/06051295000101_LOG.FDB');
    end;
  except
    ShowMessage('Erro');
  end;
end;

//Descompactar arquivos compactado
function TNovaPastaCliente.Descompactar(aCaminhoOriginal, aCaminhoDescompactado : String): Boolean;
var
  ZipFile: TZipFile;
begin
  ZipFile := TZipFile.Create();
  try
    ZipFile.Open(aCaminhoOriginal, zmRead);
    ZipFile.ExtractAll(aCaminhoDescompactado);
    ZipFile.Close;
  finally
    FreeAndNil(ZipFile);
  end;
  Result := True;
end;

//Dowload de um site
function TNovaPastaCliente.DownloadFile(SourceFile, DestFile: string): Boolean;
var
  http : TNetHTTPClient;
  url : string;
  stream: TMemoryStream;
begin
  http := TNetHTTPClient.Create(nil);
  stream := TMemoryStream.Create;
  try
    url := SourceFile;
    http.Get(url, stream);
    stream.SaveToFile(DestFile);
  finally
    stream.Free;
    http.Free;
  end;
end;


end.
