object ClientModule1: TClientModule1
  OldCreateOrder = False
  Height = 265
  Width = 219
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxDatasnap'
      'Port=211'
      'HostName=node77424-env-0784291.jelastic.saveincloud.net:'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      'Filters={}')
    Left = 56
    Top = 24
    UniqueId = '{49ED5EAD-747B-461F-8A79-CC4CD9E75DFC}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 56
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    RemoteServer = DSProviderConnection1
    Left = 56
    Top = 168
  end
end
