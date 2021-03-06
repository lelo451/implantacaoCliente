unit uMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider, uField,
  uEscreverArquivo, SSHResolve, Vcl.Dialogs;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    DataSetProvider1: TDataSetProvider;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QueryImplantacao: TFDQuery;
    FDUpdateSQL1: TFDUpdateSQL;
    QueryImplantacaoCNPJ: TStringField;
    QueryImplantacaoNOME: TStringField;
    QueryImplantacaoPORTA_DB: TStringField;
    QueryImplantacaoIP_DB: TStringField;
    QueryImplantacaoCAMINHO_DB: TStringField;
    QueryImplantacaoPORTA_DS: TStringField;
    QueryImplantacaoHTTP_DS: TStringField;
    QueryImplantacaoIP_MORMOUT: TStringField;
    QueryImplantacaoPORTA_MORMOUT: TStringField;
    QueryImplantacaoCAMINHO_MORMOUT: TStringField;

  private
  function GravarImplantacaoBD(afield:TField):Boolean;

    { Private declarations }
  public
    { Public declarations }
  function VerificarCNPJnaBase(cnpj:string):boolean;
  function VerificarPortas(PortaDB, PortaDataSnap, PortaHTTP, PortaMormot:string):boolean;
  function ImplantarAmbiente(dadosImplantacao: string): boolean;
  function CriarPasta : Boolean;
  //function Implantar:Boolean;

  var
  CNPJ : String;
  end;


  const
    portaBd         = '3050';
    IPDB            = '192.168.3.105';
    CaminhoDB       = 'fbserver.vipsistemas.com.br/2000:/mnt/databases/';
    IPMormot        = 'fbserver.vipsistemas.com.br';
    CaminhoMormot   = '/mnt/databases/log/';

var ServerMethods1:TServerMethods1;

implementation


{$R *.dfm}


uses System.StrUtils, uTela_servidor;

{ TServerMethods1 }

function TServerMethods1.CriarPasta: Boolean;
begin

end;

function TServerMethods1.GravarImplantacaoBD(afield: TField): Boolean;
begin

end;

function TServerMethods1.ImplantarAmbiente(dadosImplantacao: string): boolean;
var
  adados : TAmbiente;
  Informacao : RInformacaoIni;
  MySSH : TSSHResolve;
begin
 Result:=true;
 adados := TAmbiente.Create;
 MySSH := TSSHResolve.Create;

 adados:=  FactoryAmbiente.JsonToObject(dadosImplantacao);

 if MySSH.InstanciarNovaDatabase(adados.CampoCNPJ) then
 begin
  MessageDlg('Foi', mtError, [mbOK], 0);
 end;
 //verificar portas

 //criar pastas

 //realizar download

      QueryImplantacao.Insert;
      QueryImplantacaoCNPJ.Value:= adados.CampoCNPJ;
      QueryImplantacaoNOME.Value:= adados.CampoNome;
      QueryImplantacaoPORTA_DB.Value := portaBd;
      QueryImplantacaoIP_DB.Value := IPDB;
      QueryImplantacaoCAMINHO_DB.Value := CaminhoDB;
      QueryImplantacaoIP_MORMOUT.Value := IPMormot;
      QueryImplantacaoCAMINHO_MORMOUT.Value := CaminhoMormot;
      QueryImplantacaoPORTA_DS.Value := adados.CampoPortaDS;
      QueryImplantacaoPORTA_MORMOUT.Value := adados.CampoPortaMormot;
      QueryImplantacaoHTTP_DS.Value := adados.CampoPortaHTTP;
      QueryImplantacao.Post;


     if not ServerMethods1.QueryImplantacao.RecordCount > 0
      then
    begin
      result:= false;
    end;
      QueryImplantacao.close;



  with Informacao do
  begin
    Nome            := aDados.CampoNome;
    CNPJ            := aDados.CampoCNPJ;
    PortaMormot     := aDados.CampoPortaMormot;
    PortaSnap       := aDados.CampoPortaDS;
    PortaHTTP       := aDados.CampoPortaHTTP;
  end;
  TEscreverArquivo.Fazer.VerificaCliente(Informacao);
end;

function TServerMethods1.VerificarCNPJnaBase(cnpj: string): boolean;
  begin
  // Verifica o CNPJ
      Result:=true;

      QueryImplantacao.SQL.Clear;
      QueryImplantacao.SQL.Add ('Select from CNPJ where Implantacao =' + cnpj);
      QueryImplantacao.Open();
     if not ServerMethods1.QueryImplantacao.RecordCount>0
      then
    begin
      result:= false;
    end;
      QueryImplantacao.close;
  end;


  function TServerMethods1.VerificarPortas(PortaDB, PortaDataSnap, PortaHTTP, PortaMormot: string): boolean;
  begin
  // Verifica??o as portas
      Result:=true;

      QueryImplantacao.SQL.Clear;
      QueryImplantacao.SQL.Add ('Select from Porta_DB, Porta_DS, Porta_HTTP,' +
      ' Porta_Mormot where Implantacao =' + PortaDB + PortaDataSnap + PortaHTTP + PortaMormot);
      QueryImplantacao.Open();
     if not ServerMethods1.QueryImplantacao.RecordCount>0
      then
    begin
      result:= false;
    end;
      QueryImplantacao.close;
  end;




end.

