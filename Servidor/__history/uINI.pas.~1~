unit uINI;

interface

uses
  System.SysUtils, IniFiles;

type
  TINI = class
  private


  protected
  public
    class procedure EscreverINI(path, sessao, campo, value: string);
    class function  LerINI(path, sessao, campo: string; aDefault: string = ''): string;

  published

  end;

implementation

{ ClienteServidorINI }
class procedure TINI.EscreverINI(path, sessao, campo, value: string);
var
  arqINI: TIniFile;
begin
  arqINI := TIniFile.Create(path);
  try
    arqINI.WriteString(sessao, campo, value);
  finally
    arqINI.Free;
  end;
end;

class function TINI.LerINI(path, sessao, campo: string; aDefault: string = ''): string;
var
  arqINI: TIniFile;
begin
  // Verificando o arquivo de conexão do banco
  if FileExists(path) then
  begin
    arqINI := TIniFile.Create(path);
    try
      Result := arqINI.ReadString(sessao, campo, aDefault);
    finally
      FreeAndNil(arqINI);
    end;
  end;
end;

end.
