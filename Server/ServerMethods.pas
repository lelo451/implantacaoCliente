unit ServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth;

type
{$METHODINFO ON}
  TServerMethods1 = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function ValidarCNPJ(cnpj: String; out erro: String): Boolean;
    function ValidarPorta(porta: String; out erro: String): Boolean;
  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.ValidarCNPJ(cnpj: String; out erro:string): Boolean;
begin
  erro:= 'aconteceu um erro';
  Result:= true;
end;

function TServerMethods1.ValidarPorta(porta: String; out erro: String): Boolean;
begin
 erro:= 'Porta j� usada';
 Result:= true;
end;

end.
