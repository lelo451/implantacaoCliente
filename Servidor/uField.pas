unit uField;

interface

Uses System.Classes,REST.Json;

type

TAmbiente = class(Tpersistent)
public
  FCampoNome        : String;
  FCampoCNPJ        : String;
  FCampoPortaDS     : String;
  FCampoPortaHTTP   : String;
  FCampoPortaMormot : String;

protected
  { protected declarations }
public
  { public declarations }

published
  property CampoNome:string read FCampoNome write FCampoNome;
  property CampoCNPJ:String read FCampoCNPJ write FCampoCNPJ;
  property CampoPortaDS:String read FCampoPortaDS write FCampoPortaDS;
  property CampoPortaHTTP:String read FCampoPortaHTTP write FCampoPortaHTTP;
  property CampoPortaMormot:String read FCampoPortaMormot write FCampoPortaMormot;
  end;

  TFactoryAmbiente<T> = class
  public
    class function JsonToObject(AJson: String): T;virtual;abstract;
    class function ObjectToJSON(AObject: T): String;virtual;abstract;
  end;

  FactoryAmbiente = class(TFactoryAmbiente<TAmbiente>)
  public
    class function JsonToObject(AJson: String): TAmbiente;override;
    class function ObjectToJSON(AObject: TAmbiente): String;override;
  end;

implementation

class function FactoryAmbiente.JsonToObject(AJson: String): TAmbiente;
begin
  if (AJson <> '')
      and (AJson <> '{}') then
    Result := TJson.JsonToObject<TAmbiente>(AJSON)
  else Result := nil;
end;

class function FactoryAmbiente.ObjectToJSON(AObject: TAmbiente): String;
begin
  if Assigned(AObject) then
    Result := TJson.ObjectToJsonString(AObject)
  else Result := '{}';
end;

end.
