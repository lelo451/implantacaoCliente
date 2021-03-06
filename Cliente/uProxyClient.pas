//
// Created by the DataSnap proxy generator.
// 13/09/2021 11:12:25
//

unit uProxyClient;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FVerificarCNPJnaBaseCommand: TDBXCommand;
    FVerificarPortasCommand: TDBXCommand;
    FImplantarAmbienteCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function VerificarCNPJnaBase(cnpj: string): Boolean;
    function VerificarPortas(PortaDB: string; PortaDataSnap: string; PortaHTTP: string; PortaMormot: string): Boolean;
    function ImplantarAmbiente(dadosImplantacao: string): Boolean;
  end;

implementation

function TServerMethods1Client.VerificarCNPJnaBase(cnpj: string): Boolean;
begin
  if FVerificarCNPJnaBaseCommand = nil then
  begin
    FVerificarCNPJnaBaseCommand := FDBXConnection.CreateCommand;
    FVerificarCNPJnaBaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificarCNPJnaBaseCommand.Text := 'TServerMethods1.VerificarCNPJnaBase';
    FVerificarCNPJnaBaseCommand.Prepare;
  end;
  FVerificarCNPJnaBaseCommand.Parameters[0].Value.SetWideString(cnpj);
  FVerificarCNPJnaBaseCommand.ExecuteUpdate;
  Result := FVerificarCNPJnaBaseCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.VerificarPortas(PortaDB: string; PortaDataSnap: string; PortaHTTP: string; PortaMormot: string): Boolean;
begin
  if FVerificarPortasCommand = nil then
  begin
    FVerificarPortasCommand := FDBXConnection.CreateCommand;
    FVerificarPortasCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificarPortasCommand.Text := 'TServerMethods1.VerificarPortas';
    FVerificarPortasCommand.Prepare;
  end;
  FVerificarPortasCommand.Parameters[0].Value.SetWideString(PortaDB);
  FVerificarPortasCommand.Parameters[1].Value.SetWideString(PortaDataSnap);
  FVerificarPortasCommand.Parameters[2].Value.SetWideString(PortaHTTP);
  FVerificarPortasCommand.Parameters[3].Value.SetWideString(PortaMormot);
  FVerificarPortasCommand.ExecuteUpdate;
  Result := FVerificarPortasCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.ImplantarAmbiente(dadosImplantacao: string): Boolean;
begin
  if FImplantarAmbienteCommand = nil then
  begin
    FImplantarAmbienteCommand := FDBXConnection.CreateCommand;
    FImplantarAmbienteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FImplantarAmbienteCommand.Text := 'TServerMethods1.ImplantarAmbiente';
    FImplantarAmbienteCommand.Prepare;
  end;
  FImplantarAmbienteCommand.Parameters[0].Value.SetWideString(dadosImplantacao);
  FImplantarAmbienteCommand.ExecuteUpdate;
  Result := FImplantarAmbienteCommand.Parameters[1].Value.GetBoolean;
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethods1Client.Destroy;
begin
  FVerificarCNPJnaBaseCommand.DisposeOf;
  FVerificarPortasCommand.DisposeOf;
  FImplantarAmbienteCommand.DisposeOf;
  inherited;
end;

end.

