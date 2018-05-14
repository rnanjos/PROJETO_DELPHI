object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 311
  Width = 572
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-GOVCGFF\SQLEXPRESS01'
      'OSAuthent=Yes'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=DESKTOP-GOVCGFF'
      'MARS=yes'
      'DATABASE=SISTEMA_CANIL'
      'User_Name=DESKTOP-GOVCGFF\SQLEXPRESS01'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Transaction = Trans
    Left = 488
    Top = 104
  end
  object Trans: TFDTransaction
    Connection = FDConnection1
    Left = 392
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 24
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from funcionario')
    Left = 416
    Top = 144
    object FDQuery1ID_FUN: TIntegerField
      FieldName = 'ID_FUN'
      Origin = 'ID_FUN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQuery1DATA_NASC: TSQLTimeStampField
      FieldName = 'DATA_NASC'
      Origin = 'DATA_NASC'
    end
    object FDQuery1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object FDQuery1NUMERO: TBCDField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Precision = 18
      Size = 0
    end
    object FDQuery1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQuery1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object FDQuery1CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQuery1CEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 11
    end
    object FDQuery1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object FDQuery1CELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object FDQuery1EMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQuery1MATRICULA: TBCDField
      FieldName = 'MATRICULA'
      Origin = 'MATRICULA'
      Precision = 18
      Size = 0
    end
    object FDQuery1TIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 50
    end
    object FDQuery1CARGO: TStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Size = 50
    end
    object FDQuery1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
    object FDQuery1CRO: TStringField
      FieldName = 'CRO'
      Origin = 'CRO'
      Size = 50
    end
    object FDQuery1CPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object FDQuery1RG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 9
    end
    object FDQuery1RESERVISTA: TStringField
      FieldName = 'RESERVISTA'
      Origin = 'RESERVISTA'
      Size = 7
    end
    object FDQuery1DATA_ADM: TSQLTimeStampField
      FieldName = 'DATA_ADM'
      Origin = 'DATA_ADM'
    end
    object FDQuery1DATA_DEM: TSQLTimeStampField
      FieldName = 'DATA_DEM'
      Origin = 'DATA_DEM'
    end
    object FDQuery1SEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 352
    Top = 120
  end
end
