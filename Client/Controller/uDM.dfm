object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 463
  Width = 714
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\dev01.VIPSISTEMAS\Desktop\HACK\IMPLANTACAO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 200
    Top = 56
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CNPJ')
    Left = 320
    Top = 56
  end
end
