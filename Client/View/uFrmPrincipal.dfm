object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Suporte - Meio de Implanta'#231#245'es'
  ClientHeight = 532
  ClientWidth = 704
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
  object Pnl_Barra: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 3408314
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      704
      33)
    object BtFechar: TSpeedButton
      Left = 666
      Top = 0
      Width = 33
      Height = 33
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'X'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = BtFecharClick
    end
    object LblNomeSistema: TLabel
      Left = 8
      Top = 8
      Width = 233
      Height = 17
      Caption = 'SISTEMA DE IMPLANTA'#199#195'O NA NUVEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2818048
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 627
      Top = 0
      Width = 33
      Height = 33
      BevelOuter = bvNone
      TabOrder = 0
      object BtnMinimizar: TSpeedButton
        Left = 0
        Top = 0
        Width = 33
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = '-'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = BtnMinimizarClick
        ExplicitLeft = 8
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object Pnl_Cliente: TPanel
    Left = 0
    Top = 33
    Width = 704
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    Color = 2818048
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 31
    object LblCliente: TLabel
      Left = 127
      Top = 6
      Width = 48
      Height = 21
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblNomeCliente: TLabel
      Left = 16
      Top = 37
      Width = 91
      Height = 13
      Caption = 'NOME DO CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LblCNPJ: TLabel
      Left = 16
      Top = 88
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Result: TLabel
      Left = 224
      Top = 110
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LblDataBase: TLabel
      Left = 127
      Top = 172
      Width = 64
      Height = 21
      Caption = 'DataBase'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblIP: TLabel
      Left = 14
      Top = 207
      Width = 109
      Height = 13
      Caption = 'IP/URL DO SERVIDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblPortaServidor: TLabel
      Left = 14
      Top = 259
      Width = 110
      Height = 13
      Caption = 'PORTA DO SERVIDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblCaminhoBase: TLabel
      Left = 15
      Top = 308
      Width = 109
      Height = 13
      Caption = 'CAMINHO PARA BASE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblDataSnap: TLabel
      Left = 480
      Top = 5
      Width = 67
      Height = 21
      Caption = 'DataSnap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblPorta: TLabel
      Left = 368
      Top = 33
      Width = 38
      Height = 17
      Caption = 'PORTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblPortaHTTP: TLabel
      Left = 368
      Top = 84
      Width = 72
      Height = 17
      Caption = 'PORTA HTTP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblMormot: TLabel
      Left = 480
      Top = 172
      Width = 57
      Height = 21
      Caption = 'Mormot'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblIP2: TLabel
      Left = 368
      Top = 207
      Width = 109
      Height = 13
      Caption = 'IP/URL DO SERVIDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblPortaServidor2: TLabel
      Left = 368
      Top = 259
      Width = 110
      Height = 13
      Caption = 'PORTA DO SERVIDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblCaminhoBase2: TLabel
      Left = 368
      Top = 308
      Width = 109
      Height = 13
      Caption = 'CAMINHO PARA BASE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblAplicacao: TLabel
      Left = 127
      Top = 393
      Width = 66
      Height = 21
      Caption = 'Aplica'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblPortaAplicacao: TLabel
      Left = 16
      Top = 431
      Width = 113
      Height = 13
      Caption = 'PORTA DA APLICA'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblInfo: TLabel
      Left = 359
      Top = 440
      Width = 337
      Height = 13
      Caption = 'Certifique-se que preencheu todos os campos antes de continuar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblInfo2: TLabel
      Left = 359
      Top = 454
      Width = 189
      Height = 13
      Caption = 'a implanta'#231#227'o de dados para nuvem.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object EdtNomeCliente: TEdit
      Left = 16
      Top = 56
      Width = 200
      Height = 21
      TabOrder = 0
      TextHint = 'Ex: Traguetta Software'
    end
    object EdtCNPJ: TEdit
      Left = 18
      Top = 105
      Width = 200
      Height = 21
      NumbersOnly = True
      TabOrder = 1
      TextHint = 'Ex: 06051295000101'
    end
    object Pnl_VerificarCNPJ: TPanel
      Left = 127
      Top = 132
      Width = 89
      Height = 21
      BevelOuter = bvNone
      Color = 3408314
      ParentBackground = False
      TabOrder = 2
      object BtnVerificarCNPJ: TSpeedButton
        Left = 0
        Top = 0
        Width = 89
        Height = 21
        Cursor = crHandPoint
        Caption = 'Verificar CNPJ'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2818048
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnVerificarCNPJClick
      end
    end
    object EdtIP: TEdit
      Left = 16
      Top = 226
      Width = 200
      Height = 21
      TabOrder = 3
      TextHint = 'Ex: fbserver.vipsistemas.com.br'
    end
    object EdtPortaServidor: TEdit
      Left = 14
      Top = 278
      Width = 200
      Height = 21
      TabOrder = 4
      TextHint = 'Ex: 2000'
    end
    object EdtCaminhoBase: TEdit
      Left = 14
      Top = 326
      Width = 200
      Height = 21
      TabOrder = 5
      TextHint = 'Ex: /mnt/databases'
    end
    object Pnl_Barrinha: TPanel
      Left = 350
      Top = 0
      Width = 1
      Height = 500
      BevelOuter = bvNone
      Color = 3408314
      ParentBackground = False
      TabOrder = 6
    end
    object EdtPorta: TEdit
      Left = 368
      Top = 56
      Width = 200
      Height = 21
      TabOrder = 7
      TextHint = 'Ex: 2030'
    end
    object EdtPortaHTTP: TEdit
      Left = 368
      Top = 107
      Width = 200
      Height = 21
      TabOrder = 8
      TextHint = 'Ex: 3030'
    end
    object Pnl_Barrinha2: TPanel
      Left = 350
      Top = 165
      Width = 354
      Height = 1
      BevelOuter = bvNone
      Color = 3408314
      ParentBackground = False
      TabOrder = 9
    end
    object EdtIP2: TEdit
      Left = 368
      Top = 226
      Width = 200
      Height = 21
      TabOrder = 10
      TextHint = 'Ex: fbserver.vipsistemas.com.br'
    end
    object EdtPortaServidor2: TEdit
      Left = 368
      Top = 278
      Width = 200
      Height = 21
      TabOrder = 11
      TextHint = 'Ex: 2000'
    end
    object EdtCaminhoBase2: TEdit
      Left = 368
      Top = 326
      Width = 200
      Height = 21
      TabOrder = 12
      TextHint = 'Ex: /mnt/databases/'
    end
    object Panel3: TPanel
      Left = -4
      Top = 386
      Width = 354
      Height = 1
      BevelOuter = bvNone
      Color = 3408314
      ParentBackground = False
      TabOrder = 13
    end
    object EdtPortaAplicacao: TEdit
      Left = 16
      Top = 450
      Width = 200
      Height = 21
      TabOrder = 14
      TextHint = 'Ex: 47'
    end
    object Pnl_TestarPorta: TPanel
      Left = 222
      Top = 450
      Width = 89
      Height = 21
      BevelOuter = bvNone
      Color = 3408314
      ParentBackground = False
      TabOrder = 15
      object BtnTestarPorta: TSpeedButton
        Left = 0
        Top = 0
        Width = 89
        Height = 21
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Testar Porta'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2818048
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 64
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object Pnl_IniciarImplantacao: TPanel
      Left = 440
      Top = 385
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 3408314
      ParentBackground = False
      TabOrder = 16
      object BtnImplantar: TSpeedButton
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Iniciar Implanta'#231#227'o'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2818048
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnImplantarClick
        ExplicitLeft = 32
        ExplicitTop = 24
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object Panel2: TPanel
      Left = -3
      Top = 165
      Width = 354
      Height = 1
      BevelOuter = bvNone
      Color = 3408314
      ParentBackground = False
      TabOrder = 17
    end
  end
end
