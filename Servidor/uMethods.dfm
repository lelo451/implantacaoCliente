object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 238
  Width = 333
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=/opt/firebird/data/IMPLANTACAO.FDB'
      'Protocol=TCPIP'
      'Server=10.100.36.69'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 48
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = QueryImplantacao
    Left = 240
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 128
    Top = 8
  end
  object QueryImplantacao: TFDQuery
    Connection = FDConnection1
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'SELECT * FROM IMPLANTACAO'
      ' ')
    Left = 48
    Top = 80
    object QueryImplantacaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QueryImplantacaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      FixedChar = True
      Size = 100
    end
    object QueryImplantacaoPORTA_DB: TStringField
      FieldName = 'PORTA_DB'
      Origin = 'PORTA_DB'
      Size = 5
    end
    object QueryImplantacaoIP_DB: TStringField
      FieldName = 'IP_DB'
      Origin = 'IP_DB'
      Size = 100
    end
    object QueryImplantacaoCAMINHO_DB: TStringField
      FieldName = 'CAMINHO_DB'
      Origin = 'CAMINHO_DB'
      Size = 100
    end
    object QueryImplantacaoPORTA_DS: TStringField
      FieldName = 'PORTA_DS'
      Origin = 'PORTA_DS'
      FixedChar = True
      Size = 5
    end
    object QueryImplantacaoHTTP_DS: TStringField
      FieldName = 'HTTP_DS'
      Origin = 'HTTP_DS'
      Size = 5
    end
    object QueryImplantacaoIP_MORMOUT: TStringField
      FieldName = 'IP_MORMOUT'
      Origin = 'IP_MORMOUT'
      Size = 100
    end
    object QueryImplantacaoPORTA_MORMOUT: TStringField
      FieldName = 'PORTA_MORMOUT'
      Origin = 'PORTA_MORMOUT'
      Size = 5
    end
    object QueryImplantacaoCAMINHO_MORMOUT: TStringField
      FieldName = 'CAMINHO_MORMOUT'
      Origin = 'CAMINHO_MORMOUT'
      Size = 100
    end
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO IMPLANTACAO'
      '(CNPJ, NOME, PORTA_DB, IP_DB, CAMINHO_DB, '
      '  PORTA_DS, HTTP_DS, IP_MORMOUT, PORTA_MORMOUT, '
      '  CAMINHO_MORMOUT)'
      
        'VALUES (:NEW_CNPJ, :NEW_NOME, :NEW_PORTA_DB, :NEW_IP_DB, :NEW_CA' +
        'MINHO_DB, '
      
        '  :NEW_PORTA_DS, :NEW_HTTP_DS, :NEW_IP_MORMOUT, :NEW_PORTA_MORMO' +
        'UT, '
      '  :NEW_CAMINHO_MORMOUT)')
    ModifySQL.Strings = (
      'UPDATE IMPLANTACAO'
      
        'SET CNPJ = :NEW_CNPJ, NOME = :NEW_NOME, PORTA_DB = :NEW_PORTA_DB' +
        ', '
      
        '  IP_DB = :NEW_IP_DB, CAMINHO_DB = :NEW_CAMINHO_DB, PORTA_DS = :' +
        'NEW_PORTA_DS, '
      
        '  HTTP_DS = :NEW_HTTP_DS, IP_MORMOUT = :NEW_IP_MORMOUT, PORTA_MO' +
        'RMOUT = :NEW_PORTA_MORMOUT, '
      '  CAMINHO_MORMOUT = :NEW_CAMINHO_MORMOUT'
      'WHERE CNPJ = :OLD_CNPJ')
    DeleteSQL.Strings = (
      'DELETE FROM IMPLANTACAO'
      'WHERE CNPJ = :OLD_CNPJ')
    FetchRowSQL.Strings = (
      
        'SELECT CNPJ, NOME, PORTA_DB, IP_DB, CAMINHO_DB, PORTA_DS, HTTP_D' +
        'S, '
      '  IP_MORMOUT, PORTA_MORMOUT, CAMINHO_MORMOUT'
      'FROM IMPLANTACAO'
      'WHERE CNPJ = :CNPJ')
    Left = 144
    Top = 104
  end
end
