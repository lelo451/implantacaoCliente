program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  IdContext,
  IdSocketHandle,
  IdTcpServer;

type
  //our port-checking tool
  TPortChk = class(TIdTCPServer)
    procedure OnExec(AContext: TIdContext);
  end;

procedure TPortChk.OnExec(AContext: TIdContext);
begin
  //does nothing, but must exist and be hooked
end;

//check a TCP port to see if it's already in use.
//normally used before opening a listener.
function PortAvailable(APort: Word): Boolean;
var
  svr: TPortChk;
  bnd: TIdSocketHandle;
begin
  //assume our port is available
  Result := True;
  //create our checking object
  svr := TPortChk.Create;
  try
    //set the execute event
    svr.OnExecute := svr.OnExec;
    //loop looking for an available port
    try
      //set up the binding for our local system and the
      //port in question
      bnd := svr.Bindings.Add;
      bnd.IP := '127.0.0.1';
      bnd.Port := APort;
      //try to bind.  This will throw an EIdCouldNotBindSocket
      //exception if the port is already in use.
      svr.Active := True;
      //if we get here, the port is *currently* available.
      //close the server and bail
      svr.Active := False;
      Exit;
    except
      //whoops, port's in use (or some related failure)
      Result := False;
    end;
  finally
    svr.Free;
  end;
end;

//search a range of ports for the first available
function FindAvailablePort(First, Count: Word): Word;
var
  svr: TPortChk;
  bnd: TIdSocketHandle;
begin
  //assume our initial port is available
  Result := First;
  //create our checking object
  svr := TPortChk.Create;
  try
    //set the execute event
    svr.OnExecute := svr.OnExec;
    //loop looking for an available port
    while (Result - First) < Count do begin
      try
        //set up the binding for our local system and the
        //port in question
        bnd := svr.Bindings.Add;
        bnd.IP := '127.0.0.1';
        bnd.Port := Result;
        //try to bind.  This will throw an EIdCouldNotBindSocket
        //exception if the port is already in use.
        svr.Active := True;
        //if we get here, we found our available port, so kill the
        //server and bail
        svr.Active := False;
        Exit;
      except
        Inc(Result);
        svr.Bindings.Clear;
      end;
    end;
    //if we get here, all of our possible ports are in use,
    //so return $FFFF to indicate that no port is available
    Result := $FFFF;
  finally
    svr.Free;
  end;
end;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    writeln(PortAvailable(8080));
    Sleep(10000);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
