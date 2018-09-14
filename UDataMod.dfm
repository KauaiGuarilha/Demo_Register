object DataMod: TDataMod
  OldCreateOrder = False
  Height = 292
  Width = 330
  object Trans: TIBTransaction
    Active = True
    DefaultDatabase = Banco
    Left = 96
    Top = 24
  end
  object Banco: TIBDatabase
    Connected = True
    DatabaseName = 
      '\\127.0.0.1\C:\Users\Porteiro\Documents\Delphi\Projetos\Sistema2' +
      '\DataBase\DB_CADASTRO_2.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 24
  end
  object DSetPais: TIBDataSet
    Database = Banco
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PAIS'
      'where'
      '  IDPAIS = :IDPAIS')
    InsertSQL.Strings = (
      'insert into PAIS'
      '  (PAIS)'
      'values'
      '  (:PAIS)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPAIS,'
      '  PAIS'
      'from PAIS '
      'where'
      '  IDPAIS = :IDPAIS')
    SelectSQL.Strings = (
      'select * from PAIS')
    ModifySQL.Strings = (
      'update PAIS'
      'set'
      '  PAIS = :PAIS'
      'where'
      '  IDPAIS = :IDPAIS')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 40
    Top = 88
    object DSetPaisIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
      Origin = '"PAIS"."IDPAIS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetPaisPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = '"PAIS"."PAIS"'
      Size = 80
    end
  end
  object DSPais: TDataSource
    DataSet = DSetPais
    Left = 40
    Top = 144
  end
  object DSetEstado: TIBDataSet
    Database = Banco
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ESTADO'
      'where'
      '  IDESTADO = :IDESTADO')
    InsertSQL.Strings = (
      'insert into ESTADO'
      '  (ESTADO, UF)'
      'values'
      '  (:ESTADO, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  IDESTADO,'
      '  ESTADO,'
      '  UF'
      'from ESTADO '
      'where'
      '  IDESTADO = :IDESTADO')
    SelectSQL.Strings = (
      'select * from ESTADO')
    ModifySQL.Strings = (
      'update ESTADO'
      'set'
      '  ESTADO = :ESTADO,'
      '  UF = :UF'
      'where'
      '  IDESTADO = :IDESTADO')
    ParamCheck = True
    UniDirectional = False
    Left = 104
    Top = 88
    object DSetEstadoIDESTADO: TIntegerField
      FieldName = 'IDESTADO'
      Origin = '"ESTADO"."IDESTADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetEstadoESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"ESTADO"."ESTADO"'
      Size = 80
    end
    object DSetEstadoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ESTADO"."UF"'
      Size = 2
    end
  end
  object DSEstado: TDataSource
    DataSet = DSetEstado
    Left = 104
    Top = 144
  end
  object DSetCidade: TIBDataSet
    Database = Banco
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CIDADE'
      'where'
      '  IDCIDADE = :IDCIDADE')
    InsertSQL.Strings = (
      'insert into CIDADE'
      '  (CIDADE)'
      'values'
      '  (:CIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  IDCIDADE,'
      '  CIDADE'
      'from CIDADE '
      'where'
      '  IDCIDADE = :IDCIDADE')
    SelectSQL.Strings = (
      'select * from CIDADE')
    ModifySQL.Strings = (
      'update CIDADE'
      'set'
      '  CIDADE = :CIDADE'
      'where'
      '  IDCIDADE = :IDCIDADE')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 168
    Top = 88
    object DSetCidadeIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"CIDADE"."IDCIDADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetCidadeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CIDADE"."CIDADE"'
      Size = 80
    end
  end
  object DSCidade: TDataSource
    DataSet = DSetCidade
    Left = 168
    Top = 144
  end
end
