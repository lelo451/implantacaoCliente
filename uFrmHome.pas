unit uFrmHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmHome = class(TForm)
    Lbl_Cliente: TLabel;
    Lbl_CNPJ: TLabel;
    Lbl_Server: TLabel;
    Lbl_Port: TLabel;
    Lbl_DBSection: TLabel;
    Lbl_Path: TLabel;
    Ed_Cliente: TEdit;
    Ed_CNPJ: TEdit;
    Ed_Server: TEdit;
    Ed_Port: TEdit;
    Ed_Path: TEdit;
    Lbl_ClienteSection: TLabel;
    Lbl_DataSnapSection: TLabel;
    Lbl_DSPort: TLabel;
    Lbl_DSPortHttp: TLabel;
    Lbl_MormotSection: TLabel;
    Lbl_MMPorta: TLabel;
    Lbl_MMPath: TLabel;
    Lbl_MMServer: TLabel;
    Ed_DSPort: TEdit;
    Ed_DSPortHttp: TEdit;
    Ed_MMServer: TEdit;
    Ed_MMPort: TEdit;
    Ed_MMPath: TEdit;
    Lbl_AppSection: TLabel;
    Lbl_AppPort: TLabel;
    Ed_AppPort: TEdit;
    Btn_AppPort: TButton;
    Panel1: TPanel;
    procedure Ed_AppPortKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_AppPortClick(Sender: TObject);
    function CheckEmptyEdit(): Boolean;
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHome: TFrmHome;

implementation

{$R *.dfm}

procedure TFrmHome.Btn_AppPortClick(Sender: TObject);
begin
  if Trim(Ed_AppPort.Text) <> '' then
    ShowMessage(Ed_AppPort.Text);
end;

function TFrmHome.CheckEmptyEdit: Boolean; //FUNÇÃO PARA VERIFICAR CAMPOS VAZIOS  
begin
  if (Trim(Ed_AppPort.Text) = '') or (Trim(Ed_Cliente.Text) = '') or (Trim(Ed_CNPJ.Text) = '') or
    (Trim(Ed_DSPort.Text) = '') or (Trim(Ed_DSPortHttp.Text) = '') or (Trim(Ed_MMPath.Text) = '') or
    (Trim(Ed_MMPort.Text) = '') or (Trim(Ed_MMServer.Text) = '') or (Trim(Ed_Path.Text) = '') or
    (Trim(Ed_Port.Text) = '') or (Trim(Ed_Server.Text) = '')
  then
  begin
    result := True;
  end
  else
    result := False;
end;

procedure TFrmHome.Ed_AppPortKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Btn_AppPort.Click;
end;

procedure TFrmHome.Panel1Click(Sender: TObject);
begin
  if CheckEmptyEdit then
  begin
    ShowMessage('Há campos vazios!' + #13 + 'Preencha todos os campos para prosseguir!');
  end
  else
  begin
    ShowMessage(
    'Aplicação:' + #13 + 'Porta: ' + Trim(Ed_AppPort.Text) + #13 +           //MOSTRA DADOS PREENCHIDOS PELO USUARIO
    'Cliente:' + #13 + 'Nome: ' + Trim(Ed_Cliente.Text) + #13 +
    'CNPJ: ' + Trim(Ed_CNPJ.Text) + #13 +
    'DataSnap:' + #13 + 'Porta: ' + Trim(Ed_DSPort.Text) + #13 +
    'Porta HTTP: ' + Trim(Ed_DSPortHttp.Text) + #13 +
    'Mormot:' + #13 + 'Caminho: ' + Trim(Ed_MMPath.Text) + #13 +
    'Porta: ' + Trim(Ed_MMPort.Text) + #13 +
    'IP/URL do Servidor: ' + Trim(Ed_MMServer.Text) + #13 +
    'Database:' + #13 + 'Caminho: ' + Trim(Ed_Path.Text) + #13 +
    'Porta: ' + Trim(Ed_Port.Text) + #13 +
    'IP/URL do Servidor: ' + Trim(Ed_Server.Text)
    );
  end;
end;

end.
