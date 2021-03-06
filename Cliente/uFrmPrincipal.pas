unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.jpeg,uModule, uObrigatorio,uValidacaoCNPJ, REST.Json;

type
  TForm1 = class(TForm)
    Pnl_Barra: TPanel;
    BtFechar: TSpeedButton;
    Pnl_Cliente: TPanel;
    EdtNomeCliente: TEdit;
    EdtCNPJ: TEdit;
    LblCliente: TLabel;
    LblNomeCliente: TLabel;
    LblCNPJ: TLabel;
    BtnVerificarCNPJ: TSpeedButton;
    Pnl_VerificarCNPJ: TPanel;
    Result: TLabel;
    LblDataBase: TLabel;
    EdtIP: TEdit;
    EdtPortaServidor: TEdit;
    EdtCaminhoBase: TEdit;
    LblIP: TLabel;
    LblPortaServidor: TLabel;
    LblCaminhoBase: TLabel;
    Pnl_Barrinha: TPanel;
    LblDataSnap: TLabel;
    EdtPorta: TEdit;
    EdtPortaHTTP: TEdit;
    LblPorta: TLabel;
    LblPortaHTTP: TLabel;
    Pnl_Barrinha2: TPanel;
    EdtIP2: TEdit;
    EdtPortaServidor2: TEdit;
    EdtCaminhoBase2: TEdit;
    LblMormot: TLabel;
    LblIP2: TLabel;
    LblPortaServidor2: TLabel;
    LblCaminhoBase2: TLabel;
    Pnl_IniciarImplantacao: TPanel;
    BtnImplantar: TSpeedButton;
    Panel1: TPanel;
    BtnMinimizar: TSpeedButton;
    LblNomeSistema: TLabel;
    Pnl_Barrinha3: TPanel;
    procedure BtFecharClick(Sender: TObject);
    procedure BtnMinimizarClick(Sender: TObject);
    procedure BtnImplantarClick(Sender: TObject);
    procedure BtnVerificarCNPJClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    //function Implantar(const aImplantacao:string;out aErro:string):Boolean;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uProxyClient, uField;

procedure TForm1.BtFecharClick(Sender: TObject);
// Bot?o (X) para fechar a aplica??o
begin
  Close;
end;
 procedure TForm1.BtnMinimizarClick(Sender: TObject);
// Bot?o (-) para minimizar a tela do formul?rio
begin
  Application.Minimize;
end;

procedure TForm1.BtnVerificarCNPJClick(Sender: TObject);
  var aMetod:TServerMethods1Client;
begin
try
// usando as fun??es isCNPJ e imprimeCNPJ da unit "ValidaCNPJ"
if isCNPJ(EdtCNPJ.Text)then
  begin
    Result.Caption := imprimeCNPJ(EdtCNPJ.Text);
  end
  else
  begin
    Result.Caption := 'Erro: CNPJ inv?lido!'
  end;

try
   aMetod:= TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
except
  MessageDlg ('CNPJ j? existente!!!', mtError, [mbOK], 0);
end;

finally
  aMetod.Free;
end;

end;


procedure TForm1.BtnImplantarClick(Sender: TObject);

var
  AField, AField2: TAmbiente;
  Json:string;
 aServer:TServerMethods1Client;
begin
  prcValidarCamposObrigatorios ( Form1 );

  AField:= TAmbiente.Create;

  aServer:= TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
 try
 //do lado do cliente
  AField.CampoNome            := EdtNomeCliente.Text;
  AField.CampoCNPJ            := EdtCNPJ.Text;
  AField.CampoPortaDS         := EdtPorta.Text;
  AField.CampoPortaHTTP       := EdtPortaHTTP.Text;
  AField.CampoPortaMormot     := EdtPortaServidor2.Text;
  Json:= FactoryAmbiente.ObjectToJSON(AField);
  aServer.implantarambiente(json);
 finally
   AField.Free;
   aServer.Free;
 end;


  end;

end.
