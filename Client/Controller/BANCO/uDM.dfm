object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 463
  Width = 714
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Archer\Documents\Embarcadero\Studio\Projects\I' +
        'mplantacao\Client\IMPLANTACAO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'DriverID=FB')
    LoginPrompt = False
    Left = 80
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 176
    Top = 56
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CNPJ')
    Left = 80
    Top = 120
  end
end
