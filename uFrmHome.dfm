object FrmHome: TFrmHome
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Implanta'#231#227'o'
  ClientHeight = 410
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Lbl_Cliente: TLabel
    Left = 10
    Top = 30
    Width = 106
    Height = 16
    Caption = 'Nome do cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_CNPJ: TLabel
    Left = 8
    Top = 70
    Width = 32
    Height = 16
    Caption = 'CNPJ'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_Server: TLabel
    Left = 10
    Top = 130
    Width = 116
    Height = 16
    Caption = 'IP/Url do Servidor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_Port: TLabel
    Left = 8
    Top = 170
    Width = 115
    Height = 16
    Caption = 'Porta do Servidor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_DBSection: TLabel
    Left = 120
    Top = 100
    Width = 62
    Height = 16
    Caption = 'Database'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_Path: TLabel
    Left = 10
    Top = 210
    Width = 138
    Height = 16
    Caption = 'Caminho para a base'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_ClienteSection: TLabel
    Left = 122
    Top = 10
    Width = 45
    Height = 16
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_DataSnapSection: TLabel
    Left = 520
    Top = 10
    Width = 64
    Height = 16
    Caption = 'DataSnap'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_DSPort: TLabel
    Left = 450
    Top = 30
    Width = 35
    Height = 16
    Caption = 'Porta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_DSPortHttp: TLabel
    Left = 450
    Top = 70
    Width = 75
    Height = 16
    Caption = 'Porta HTTP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_MormotSection: TLabel
    Left = 520
    Top = 100
    Width = 49
    Height = 16
    Caption = 'Mormot'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_MMPorta: TLabel
    Left = 450
    Top = 170
    Width = 115
    Height = 16
    Caption = 'Porta do Servidor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_MMPath: TLabel
    Left = 450
    Top = 210
    Width = 138
    Height = 16
    Caption = 'Caminho para a base'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_MMServer: TLabel
    Left = 450
    Top = 130
    Width = 116
    Height = 16
    Caption = 'IP/Url do Servidor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_AppSection: TLabel
    Left = 400
    Top = 250
    Width = 63
    Height = 16
    Caption = 'Aplica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_AppPort: TLabel
    Left = 247
    Top = 290
    Width = 124
    Height = 16
    Caption = 'Porta da Aplica'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Ed_Cliente: TEdit
    Left = 160
    Top = 30
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Maringa Fitas'
  end
  object Ed_CNPJ: TEdit
    Left = 160
    Top = 70
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = '06051295000101'
  end
  object Ed_Server: TEdit
    Left = 160
    Top = 130
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'fbserver.vipsistemas.com.br'
  end
  object Ed_Port: TEdit
    Left = 160
    Top = 170
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = '2000'
  end
  object Ed_Path: TEdit
    Left = 160
    Top = 210
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = '/mnt/databases/'
  end
  object Ed_DSPort: TEdit
    Left = 600
    Top = 30
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = '2003'
  end
  object Ed_DSPortHttp: TEdit
    Left = 600
    Top = 70
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TextHint = '3003'
  end
  object Ed_MMServer: TEdit
    Left = 600
    Top = 130
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TextHint = 'fbserver.vipsistemas.com.br'
  end
  object Ed_MMPort: TEdit
    Left = 600
    Top = 170
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    TextHint = '2000'
  end
  object Ed_MMPath: TEdit
    Left = 600
    Top = 210
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    TextHint = '/mnt/databases/log/'
  end
  object Ed_AppPort: TEdit
    Left = 397
    Top = 290
    Width = 220
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TextHint = '50'
    OnKeyPress = Ed_AppPortKeyPress
  end
  object Btn_AppPort: TButton
    Left = 625
    Top = 290
    Width = 105
    Height = 24
    Caption = 'Testar Porta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Btn_AppPortClick
  end
  object Panel1: TPanel
    Left = 10
    Top = 360
    Width = 185
    Height = 41
    Caption = 'Iniciar Implanta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Panel1Click
  end
end