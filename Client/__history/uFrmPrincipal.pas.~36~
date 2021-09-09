unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uImplemention, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, uValidacaoCNPJ, Vcl.Imaging.jpeg;

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
    Panel3: TPanel;
    LblAplicacao: TLabel;
    EdtPortaAplicacao: TEdit;
    LblPortaAplicacao: TLabel;
    Pnl_TestarPorta: TPanel;
    BtnTestarPorta: TSpeedButton;
    Pnl_IniciarImplantacao: TPanel;
    BtnImplantar: TSpeedButton;
    LblInfo: TLabel;
    LblInfo2: TLabel;
    Panel1: TPanel;
    BtnMinimizar: TSpeedButton;
    LblNomeSistema: TLabel;
    Panel2: TPanel;
    procedure BtFecharClick(Sender: TObject);
    procedure BtnVerificarCNPJClick(Sender: TObject);
    procedure BtnMinimizarClick(Sender: TObject);
    procedure BtnImplantarClick(Sender: TObject);
  private
    function EscreverIni : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtFecharClick(Sender: TObject);
// Botão (X) para fechar a aplicação
begin
  Close;
end;


procedure TForm1.BtnImplantarClick(Sender: TObject);
begin
  TImplementar.GetCNPJAceito.AdcionarInformacao(EdtIP.Text, EdtPortaServidor.Text, EdtCaminhoBase.Text,
  EdtPortaAplicacao.Text, EdtPorta.Text, EdtPortaHTTP.Text, EdtIP2.Text, EdtPortaServidor2.Text, EdtCaminhoBase2.Text);
end;

procedure TForm1.BtnMinimizarClick(Sender: TObject);
// Botão (-) para minimizar a tela do formulário
begin
  Application.Minimize;
end;

procedure TForm1.BtnVerificarCNPJClick(Sender: TObject);
begin
  // usando as funções isCNPJ e imprimeCNPJ da unit "ValidaCNPJ"
  if isCNPJ(EdtCNPJ.Text)then
  begin
    TImplementar.GetCNPJAceito.AdcionarCliente(EdtNomeCliente.Text, EdtCNPJ.Text);
    EscreverIni;
    Result.Caption := imprimeCNPJ(EdtCNPJ.Text);
  end
  else Result.Caption := 'Erro: CNPJ inválido!!!';
end;

function TForm1.EscreverIni: Boolean;
begin

end;

end.
