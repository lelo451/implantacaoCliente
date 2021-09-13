unit SSHResolve;

interface

uses
  SSHCommand;

Type
 TSSHResolve= class
   private
   protected
   public
    function InstanciarNovaDatabase(ACNPJ: string): boolean;
    function UploadDatabase(localDoArquivo, ACNPJ: string): boolean;
 end;

implementation

{ TSSHResolve }

function TSSHResolve.InstanciarNovaDatabase(ACNPJ: string): boolean;
var
  MySSHCommander : TSSHCommand;
  MyResult : integer;
begin
  MySSHCommander.HostName := 'gate.jelastic.saveincloud.net';
  MySSHCommander.PortNum := 3022;
  MySSHCommander.UserName := '77408-9963';
  MySSHCommander.KeyFile := 'C:\Users\Administrador.WIN-T60U5QQU8BC\Desktop\devAmbienteteste';

  MyResult := MySSHCommander.SendCommand('[ -f "/opt/firebird/data/' + ACNPJ + '.FDB"]',
    ' &&  echo "" || cp ~/newdatabase/VIPSISTEMAS.FDB /opt/firebird/data/' + ACNPJ + '.FDB');
  if MyResult > 32 then
  begin
    result := True;
  end
  else
    result := False;
end;

function TSSHResolve.UploadDatabase(localDoArquivo, ACNPJ: string): boolean;
var
  MySSHCommander : TSSHCommand;
  MyResult : integer;
begin
  MySSHCommander.HostName := 'gate.jelastic.saveincloud.net';
  MySSHCommander.PortNum := 3022;
  MySSHCommander.UserName := '77408-9963';
  MySSHCommander.KeyFile := 'C:\Users\Administrador.WIN-T60U5QQU8BC\Desktop\devAmbienteteste';

  MyResult := MySSHCommander.SCPToRemote(localDoArquivo, '/opt/firebird/data/' + ACNPJ + '.FDB');
  if MyResult > 32 then
  begin
    result := True;
  end
  else
    result := False;
end;

end.
