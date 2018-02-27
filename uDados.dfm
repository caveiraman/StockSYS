object telaDados: TtelaDados
  Left = 561
  Top = 123
  Width = 754
  Height = 560
  Caption = 'Data m'#243'dulo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 61
    Top = 15
    Width = 99
    Height = 20
    Caption = 'PRODUTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 244
    Top = 16
    Width = 87
    Height = 20
    Caption = 'CLIENTES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 414
    Top = 16
    Width = 81
    Height = 20
    Caption = 'PEDIDOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 160
    Width = 145
    Height = 20
    Caption = 'PEDIDOS(ITENS)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Unidades: TLabel
    Left = 248
    Top = 160
    Width = 94
    Height = 20
    Caption = 'UNIDADES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 416
    Top = 160
    Width = 90
    Height = 20
    Caption = 'TRIBUTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 72
    Top = 336
    Width = 89
    Height = 20
    Caption = 'EMITENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 264
    Top = 336
    Width = 81
    Height = 20
    Caption = 'C'#243'd. NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 416
    Top = 336
    Width = 60
    Height = 20
    Caption = 'CONTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object label9: TLabel
    Left = 584
    Top = 16
    Width = 88
    Height = 20
    Caption = 'COMPRAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 560
    Top = 344
    Width = 149
    Height = 20
    Caption = 'FORNECEDORES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 560
    Top = 160
    Width = 140
    Height = 20
    Caption = 'COMPRA(ITENS)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFeRL1
    Left = 8
    Top = 480
  end
  object dsProdutos: TDataSource
    DataSet = tblProdutos
    Left = 96
    Top = 40
  end
  object tblProdutos: TIBTable
    Database = dbProdutos
    Transaction = trnscProdutos
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EAN13'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'DUN14'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'GRUPO'
        DataType = ftInteger
      end
      item
        Name = 'SUBGRUPO1'
        DataType = ftInteger
      end
      item
        Name = 'SUBGRUPO2'
        DataType = ftInteger
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'QUANT_CAIXA'
        DataType = ftBCD
        Precision = 18
        Size = 3
      end
      item
        Name = 'ALIQUOTA_ICMS'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'ALIQUOTA_IPI'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'CLASSIFICACAO_FISCAL'
        DataType = ftInteger
      end
      item
        Name = 'ESTOQUE'
        DataType = ftBCD
        Precision = 18
        Size = 3
      end
      item
        Name = 'PRECO_COMPRA'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PRECO_VENDA'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TIPOPROD'
        DataType = ftInteger
      end
      item
        Name = 'PERC_DESC'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'PERC_COM'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'MARGEM_LUCRO'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'CONTROLADOR_ESTOQUE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TRIBUTACAO'
        DataType = ftInteger
      end
      item
        Name = 'FRACIONADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO_NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'REDUCAO_BASE'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'BASE_ST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'MVA'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VAL_ICMS'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VAL_IPI'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'PK_PRODUTOS'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRODUTOS'
    Left = 96
    Top = 80
    object tblProdutosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object tblProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object tblProdutosREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
    end
    object tblProdutosEAN13: TIBStringField
      FieldName = 'EAN13'
      Size = 13
    end
    object tblProdutosDUN14: TIBStringField
      FieldName = 'DUN14'
      Size = 14
    end
    object tblProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object tblProdutosSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object tblProdutosSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object tblProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object tblProdutosQUANT_CAIXA: TIBBCDField
      FieldName = 'QUANT_CAIXA'
      Precision = 18
      Size = 3
    end
    object tblProdutosALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Precision = 9
      Size = 2
    end
    object tblProdutosALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object tblProdutosCLASSIFICACAO_FISCAL: TIntegerField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object tblProdutosESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object tblProdutosPRECO_COMPRA: TIBBCDField
      FieldName = 'PRECO_COMPRA'
      Precision = 18
      Size = 2
    end
    object tblProdutosPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object tblProdutosTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object tblProdutosPERC_DESC: TIBBCDField
      FieldName = 'PERC_DESC'
      Precision = 9
      Size = 3
    end
    object tblProdutosPERC_COM: TIBBCDField
      FieldName = 'PERC_COM'
      Precision = 9
      Size = 3
    end
    object tblProdutosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object tblProdutosTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
    end
    object tblProdutosMARGEM_LUCRO: TIBBCDField
      FieldName = 'MARGEM_LUCRO'
      Precision = 9
      Size = 3
    end
    object tblProdutosCONTROLADOR_ESTOQUE: TIBStringField
      FieldName = 'CONTROLADOR_ESTOQUE'
      Size = 1
    end
    object tblProdutosTRIBUTACAO: TIntegerField
      FieldName = 'TRIBUTACAO'
    end
    object tblProdutosFRACIONADO: TIBStringField
      FieldName = 'FRACIONADO'
      Size = 1
    end
    object tblProdutosCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Size = 8
    end
    object tblProdutosREDUCAO_BASE: TIBBCDField
      FieldName = 'REDUCAO_BASE'
      Precision = 9
      Size = 2
    end
    object tblProdutosBASE_ST: TIBBCDField
      FieldName = 'BASE_ST'
      Precision = 18
      Size = 2
    end
    object tblProdutosMVA: TIBBCDField
      FieldName = 'MVA'
      Precision = 9
      Size = 2
    end
    object tblProdutosVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Precision = 9
      Size = 2
    end
    object tblProdutosVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Precision = 9
      Size = 2
    end
  end
  object trnscProdutos: TIBTransaction
    Active = True
    DefaultDatabase = dbProdutos
    AutoStopAction = saNone
    Left = 48
    Top = 80
  end
  object dbProdutos: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = trnscProdutos
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 144
    Top = 80
  end
  object dsClientes: TDataSource
    DataSet = tblClientes
    Left = 272
    Top = 40
  end
  object dsPedidos: TDataSource
    DataSet = tblPedidos
    Left = 440
    Top = 40
  end
  object tblClientes: TIBTable
    Database = dbClientes
    Transaction = trnscClientes
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM_END'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BAIRRO_END'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIDADE_END'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CEP_END'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CELULAR'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INSC_RG'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'END_ENTREGA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM_END_ENTREGA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BAIRRO_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CID_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CEP_END_ENTREGA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOCAL_TRAB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'END_LOCAL_TRAB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TELEFONE_TRAB'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'FILIACAO_PAI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FILIACAO_MAE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATA_CAD'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_NASC'
        DataType = ftDateTime
      end
      item
        Name = 'LIMITE_CRED'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'CONTATO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TIPO_CONTATO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ATIVO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OBSERVACOES'
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMPL_ENT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UF_END'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'UF_END_ENT'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SITE'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <
      item
        Name = 'PK_CLIENTE'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CLIENTE'
    Left = 272
    Top = 80
    object tblClientesID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object tblClientesNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object tblClientesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object tblClientesNUM_END: TIBStringField
      FieldName = 'NUM_END'
      Size = 10
    end
    object tblClientesBAIRRO_END: TIBStringField
      FieldName = 'BAIRRO_END'
    end
    object tblClientesCIDADE_END: TIBStringField
      FieldName = 'CIDADE_END'
    end
    object tblClientesCEP_END: TIBStringField
      FieldName = 'CEP_END'
      Size = 10
    end
    object tblClientesTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object tblClientesCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Size = 12
    end
    object tblClientesCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object tblClientesINSC_RG: TIBStringField
      FieldName = 'INSC_RG'
    end
    object tblClientesEND_ENTREGA: TIBStringField
      FieldName = 'END_ENTREGA'
      Size = 30
    end
    object tblClientesNUM_END_ENTREGA: TIBStringField
      FieldName = 'NUM_END_ENTREGA'
      Size = 10
    end
    object tblClientesBAIRRO_END_ENTREGA: TIBStringField
      FieldName = 'BAIRRO_END_ENTREGA'
    end
    object tblClientesCID_END_ENTREGA: TIBStringField
      FieldName = 'CID_END_ENTREGA'
    end
    object tblClientesCEP_END_ENTREGA: TIBStringField
      FieldName = 'CEP_END_ENTREGA'
      Size = 10
    end
    object tblClientesLOCAL_TRAB: TIBStringField
      FieldName = 'LOCAL_TRAB'
      Size = 50
    end
    object tblClientesEND_LOCAL_TRAB: TIBStringField
      FieldName = 'END_LOCAL_TRAB'
      Size = 50
    end
    object tblClientesTELEFONE_TRAB: TIBStringField
      FieldName = 'TELEFONE_TRAB'
      Size = 12
    end
    object tblClientesFILIACAO_PAI: TIBStringField
      FieldName = 'FILIACAO_PAI'
      Size = 50
    end
    object tblClientesFILIACAO_MAE: TIBStringField
      FieldName = 'FILIACAO_MAE'
      Size = 10
    end
    object tblClientesDATA_CAD: TDateTimeField
      FieldName = 'DATA_CAD'
    end
    object tblClientesDATA_NASC: TDateTimeField
      FieldName = 'DATA_NASC'
    end
    object tblClientesLIMITE_CRED: TIBBCDField
      FieldName = 'LIMITE_CRED'
      Precision = 18
      Size = 2
    end
    object tblClientesCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object tblClientesTIPO_CONTATO: TIBStringField
      FieldName = 'TIPO_CONTATO'
      Size = 1
    end
    object tblClientesATIVO: TIBStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblClientesOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
      Size = 8
    end
    object tblClientesCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
    end
    object tblClientesCOMPL_ENT: TIBStringField
      FieldName = 'COMPL_ENT'
    end
    object tblClientesUF_END: TIBStringField
      FieldName = 'UF_END'
      FixedChar = True
      Size = 2
    end
    object tblClientesUF_END_ENT: TIBStringField
      FieldName = 'UF_END_ENT'
      FixedChar = True
      Size = 2
    end
    object tblClientesSITE: TIBStringField
      FieldName = 'SITE'
      Size = 150
    end
    object tblClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 150
    end
  end
  object tblPedidos: TIBTable
    Database = dbPedidos
    Transaction = trnscPedidos
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'ID_VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'DATA_PEDIDO'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_ENTREGA'
        DataType = ftDateTime
      end
      item
        Name = 'ID_CLASSIFICACAO'
        DataType = ftInteger
      end
      item
        Name = 'CONFIRMADA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ENTREGUE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCONTO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ACRESCIMO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'OUTRAS_DESPESAS'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'CANCELADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_FORMAPAG'
        DataType = ftInteger
      end
      item
        Name = 'END_ENTREGA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM_END_ENTREGA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COMPL_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BAIRRO_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CID_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UF_END_ENTREGA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP_END_ENTREGA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TIPODOC'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PEDIDO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_REAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'MARGEM_VENDA'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VALOR_COMISSAO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TOTAL_GERAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'COO'
        DataType = ftInteger
      end
      item
        Name = 'CCF'
        DataType = ftInteger
      end
      item
        Name = 'GNF'
        DataType = ftInteger
      end
      item
        Name = 'DAV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'INSC_EST'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'VALOR_TROCO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'CHAVENFE'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'PK_PEDIDO'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ID'
    StoreDefs = True
    TableName = 'PEDIDO'
    Left = 440
    Top = 80
    object tblPedidosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object tblPedidosID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object tblPedidosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object tblPedidosID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
    end
    object tblPedidosCONFIRMADA: TIBStringField
      FieldName = 'CONFIRMADA'
      FixedChar = True
      Size = 1
    end
    object tblPedidosENTREGUE: TIBStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object tblPedidosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object tblPedidosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object tblPedidosACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object tblPedidosOUTRAS_DESPESAS: TIBBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object tblPedidosVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object tblPedidosCANCELADO: TIBStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tblPedidosID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
    end
    object tblPedidosEND_ENTREGA: TIBStringField
      FieldName = 'END_ENTREGA'
      Size = 30
    end
    object tblPedidosCOMPL_END_ENTREGA: TIBStringField
      FieldName = 'COMPL_END_ENTREGA'
    end
    object tblPedidosNUM_END_ENTREGA: TIBStringField
      FieldName = 'NUM_END_ENTREGA'
      Size = 10
    end
    object tblPedidosBAIRRO_END_ENTREGA: TIBStringField
      FieldName = 'BAIRRO_END_ENTREGA'
    end
    object tblPedidosCID_END_ENTREGA: TIBStringField
      FieldName = 'CID_END_ENTREGA'
    end
    object tblPedidosUF_END_ENTREGA: TIBStringField
      FieldName = 'UF_END_ENTREGA'
      FixedChar = True
      Size = 2
    end
    object tblPedidosCEP_END_ENTREGA: TIBStringField
      FieldName = 'CEP_END_ENTREGA'
      Size = 10
    end
    object tblPedidosCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object tblPedidosTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
    end
    object tblPedidosTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
    end
    object tblPedidosVALOR_REAL: TIBBCDField
      FieldName = 'VALOR_REAL'
      Precision = 18
      Size = 2
    end
    object tblPedidosMARGEM_VENDA: TIBBCDField
      FieldName = 'MARGEM_VENDA'
      Precision = 9
      Size = 2
    end
    object tblPedidosVALOR_COMISSAO: TIBBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object tblPedidosTOTAL_GERAL: TIBBCDField
      FieldName = 'TOTAL_GERAL'
      Precision = 18
      Size = 2
    end
    object tblPedidosCOO: TIntegerField
      FieldName = 'COO'
    end
    object tblPedidosCCF: TIntegerField
      FieldName = 'CCF'
    end
    object tblPedidosGNF: TIntegerField
      FieldName = 'GNF'
    end
    object tblPedidosDAV: TIBStringField
      FieldName = 'DAV'
      Size = 1
    end
    object tblPedidosCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object tblPedidosINSC_EST: TIBStringField
      FieldName = 'INSC_EST'
      Size = 18
    end
    object tblPedidosVALOR_TROCO: TIBBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 18
      Size = 2
    end
    object tblPedidosnCli: TStringField
      FieldKind = fkLookup
      FieldName = 'nCli'
      LookupDataSet = tblClientes
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
      Size = 40
      Lookup = True
    end
    object tblPedidosDATA_PEDIDO: TDateTimeField
      FieldName = 'DATA_PEDIDO'
    end
    object tblPedidosDATA_ENTREGA: TDateTimeField
      FieldName = 'DATA_ENTREGA'
    end
    object tblPedidosCHAVENFE: TIBStringField
      FieldName = 'CHAVENFE'
      Size = 50
    end
  end
  object dbClientes: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscClientes
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 320
    Top = 80
  end
  object dbPedidos: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscPedidos
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 488
    Top = 80
  end
  object trnscClientes: TIBTransaction
    Active = True
    DefaultDatabase = dbClientes
    AutoStopAction = saNone
    Left = 224
    Top = 80
  end
  object trnscPedidos: TIBTransaction
    Active = True
    DefaultDatabase = dbPedidos
    AutoStopAction = saNone
    Left = 392
    Top = 80
  end
  object dsPedidosItens: TDataSource
    DataSet = tblPedidosItens
    Left = 96
    Top = 184
  end
  object tblPedidosItens: TIBTable
    Database = dbPedidosItens
    Transaction = trnscPedidosItens
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_PEDIDO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCONTO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ACRESCIMO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'MARGEM'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VALOR_REAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TIPOPROD'
        DataType = ftInteger
      end
      item
        Name = 'CANCELADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUM_ITEM'
        DataType = ftInteger
      end
      item
        Name = 'EAN13'
        DataType = ftString
        Size = 14
      end>
    IndexDefs = <
      item
        Name = 'PK_PEDIDO_ITENS'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ID_PEDIDO'
    MasterFields = 'ID'
    MasterSource = dsPedidos
    StoreDefs = True
    TableName = 'PEDIDO_ITENS'
    Left = 96
    Top = 224
    object tblPedidosItensID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object tblPedidosItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object tblPedidosItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object tblPedidosItensVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object tblPedidosItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object tblPedidosItensACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object tblPedidosItensVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object tblPedidosItensMARGEM: TIBBCDField
      FieldName = 'MARGEM'
      Precision = 9
      Size = 2
    end
    object tblPedidosItensVALOR_REAL: TIBBCDField
      FieldName = 'VALOR_REAL'
      Precision = 18
      Size = 2
    end
    object tblPedidosItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object tblPedidosItensCANCELADO: TIBStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tblPedidosItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
    end
    object tblPedidosItensEAN13: TIBStringField
      FieldName = 'EAN13'
      Size = 14
    end
    object tblPedidosItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object tblPedidosItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
  end
  object dbPedidosItens: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscPedidosItens
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 144
    Top = 224
  end
  object trnscPedidosItens: TIBTransaction
    Active = True
    DefaultDatabase = dbPedidosItens
    AutoStopAction = saNone
    Left = 48
    Top = 224
  end
  object qryProdutos: TIBQuery
    Database = dbProdutos
    Transaction = trnscProdutos
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsProdutos
    SQL.Strings = (
      'select * from PRODUTOS')
    Left = 96
    Top = 120
  end
  object dsUnidade: TDataSource
    DataSet = tblUnidade
    Left = 272
    Top = 184
  end
  object tblUnidade: TIBTable
    Database = dbUnidade
    Transaction = trnscUnidade
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SIGLA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'PK_UNIDADE'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'UNIDADE'
    Left = 272
    Top = 224
    object tblUnidadeID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object tblUnidadeSIGLA: TIBStringField
      DisplayWidth = 2
      FieldName = 'SIGLA'
      Required = True
      Size = 2
    end
    object tblUnidadeNOME: TIBStringField
      FieldName = 'NOME'
      Size = 15
    end
  end
  object dbUnidade: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = trnscUnidade
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 312
    Top = 224
  end
  object trnscUnidade: TIBTransaction
    Active = True
    DefaultDatabase = dbUnidade
    AutoStopAction = saNone
    Left = 232
    Top = 224
  end
  object qryUnidade: TIBQuery
    Database = dbUnidade
    Transaction = trnscUnidade
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsUnidade
    SQL.Strings = (
      'select SIGLA from UNIDADE')
    Left = 272
    Top = 264
  end
  object qryPedidosItens: TIBQuery
    Database = dbPedidosItens
    Transaction = trnscPedidosItens
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsPedidosItens
    SQL.Strings = (
      'select * from PEDIDO_ITENS')
    Left = 96
    Top = 264
  end
  object qryPedidos: TIBQuery
    Database = dbPedidos
    Transaction = trnscPedidos
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsPedidos
    SQL.Strings = (
      'select * from PEDIDO')
    Left = 440
    Top = 120
  end
  object ibdsUnidade: TIBDataSet
    Database = dbUnidade
    Transaction = trnscUnidade
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from UNIDADE')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_UNIDADE_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    DataSource = dsUnidade
    Left = 312
    Top = 264
  end
  object ibdsClientes: TIBDataSet
    Database = dbClientes
    Transaction = trnscClientes
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from CLIENTE')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_CLIENTE_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    DataSource = dsClientes
    Left = 320
    Top = 120
  end
  object ibdsProdutos: TIBDataSet
    Database = dbProdutos
    Transaction = trnscProdutos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from PRODUTOS')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PRODUTOS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    DataSource = dsProdutos
    Left = 144
    Top = 120
  end
  object ibdsPedidosItens: TIBDataSet
    Database = dbPedidosItens
    Transaction = trnscPedidosItens
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from PEDIDO_ITENS')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PEDIDO_ITENS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    DataSource = dsPedidosItens
    Left = 144
    Top = 264
  end
  object dsTributos: TDataSource
    Left = 440
    Top = 184
  end
  object dbTributos: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscTributos
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 488
    Top = 224
  end
  object tblTributos: TIBTable
    Database = dbTributos
    Transaction = trnscTributos
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPOPROD'
        DataType = ftInteger
      end
      item
        Name = 'ALIQUOTA_ICMS'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'ALIQUOTA_IPI'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'BASE_ST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'REDUCAO_BASE'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'MVA'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'QUANT'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VAL_ICMS'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'PK_TRIBUTO'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    MasterSource = dsTributos
    StoreDefs = True
    TableName = 'TRIBUTO'
    Left = 440
    Top = 224
    object tblTributosTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object tblTributosALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Precision = 9
      Size = 2
    end
    object tblTributosALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object tblTributosBASE_ST: TIBBCDField
      FieldName = 'BASE_ST'
      Precision = 18
      Size = 2
    end
    object tblTributosREDUCAO_BASE: TIBBCDField
      FieldName = 'REDUCAO_BASE'
      Precision = 9
      Size = 2
    end
    object tblTributosMVA: TIBBCDField
      FieldName = 'MVA'
      Precision = 9
      Size = 2
    end
    object tblTributosQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object tblTributosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object tblTributosVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Precision = 9
      Size = 2
    end
  end
  object trnscTributos: TIBTransaction
    Active = True
    DefaultDatabase = dbTributos
    AutoStopAction = saNone
    Left = 392
    Top = 224
  end
  object qryTributos: TIBQuery
    Database = dbTributos
    Transaction = trnscTributos
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsTributos
    SQL.Strings = (
      'select * from TRIBUTO')
    Left = 440
    Top = 264
  end
  object tblEmitente: TIBTable
    Database = dbEmitente
    Transaction = trnscEmitente
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RAZ_SOC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INSCEST'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CODMUN'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'PK_EMITENTE'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'EMITENTE'
    Left = 96
    Top = 400
    object tblEmitenteID: TIntegerField
      FieldName = 'ID'
    end
    object tblEmitenteRAZ_SOC: TIBStringField
      FieldName = 'RAZ_SOC'
      Size = 50
    end
    object tblEmitenteFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object tblEmitenteCNPJ: TIBStringField
      FieldName = 'CNPJ'
    end
    object tblEmitenteINSCEST: TIBStringField
      FieldName = 'INSCEST'
    end
    object tblEmitenteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object tblEmitenteNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object tblEmitenteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object tblEmitenteCEP: TIBStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tblEmitenteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object tblEmitenteUF: TIBStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object tblEmitenteTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object tblEmitenteCODMUN: TIBStringField
      FieldName = 'CODMUN'
      Size = 8
    end
    object tblEmitenteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object tblEmitenteCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
  end
  object dbEmitente: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscEmitente
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 144
    Top = 400
  end
  object trnscEmitente: TIBTransaction
    Active = True
    DefaultDatabase = dbEmitente
    AutoStopAction = saNone
    Left = 48
    Top = 400
  end
  object qryEmitente: TIBQuery
    Database = dbEmitente
    Transaction = trnscEmitente
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsEmitente
    SQL.Strings = (
      'select * from EMITENTE')
    Left = 96
    Top = 448
  end
  object dsEmitente: TDataSource
    DataSet = tblEmitente
    Left = 96
    Top = 360
  end
  object ibdsEmitente: TIBDataSet
    Database = dbEmitente
    Transaction = trnscEmitente
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from EMITENTE')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_EMITENTE_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    DataSource = dsEmitente
    Left = 144
    Top = 448
  end
  object ibdsPedido: TIBDataSet
    Database = dbPedidos
    Transaction = trnscPedidos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from PEDIDO')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PEDIDO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    DataSource = dsPedidos
    Left = 488
    Top = 120
  end
  object cdsTempItens: TClientDataSet
    Active = True
    Aggregates = <>
    MasterSource = dsPedidos
    PacketRecords = 0
    Params = <>
    Left = 48
    Top = 264
    Data = {
      0F0100009619E0BD01000000180000000F0000000000030000000F0102494404
      0001000000000006494450524F44040001000000000005494450454404000100
      0000000004444553430100490000000100055749445448020002003200055155
      414E5404000100000000000556414C4F52080004000000000008444553434F4E
      544F080004000000000009414352455343494D4F080004000000000003565254
      0800040000000000064D415247454D0800040000000000035652520800040000
      000000085449504F50524F4404000100000000000943414E43454C41444F0200
      030000000000084E554D5F4954454D04000100000000000545414E3133010049
      0000000100055749445448020002000E000000}
    object cdsTempItensID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTempItensIDPROD: TIntegerField
      FieldName = 'IDPROD'
    end
    object cdsTempItensIDPED: TIntegerField
      FieldName = 'IDPED'
    end
    object cdsTempItensDESC: TStringField
      FieldName = 'DESC'
      Size = 50
    end
    object cdsTempItensQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object cdsTempItensVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsTempItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsTempItensACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object cdsTempItensVRT: TFloatField
      FieldName = 'VRT'
    end
    object cdsTempItensMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object cdsTempItensVRR: TFloatField
      FieldName = 'VRR'
    end
    object cdsTempItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object cdsTempItensCANCELADO: TBooleanField
      FieldName = 'CANCELADO'
    end
    object cdsTempItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
    end
    object cdsTempItensEAN13: TStringField
      FieldName = 'EAN13'
      Size = 14
    end
  end
  object dspTempItens: TDataSetProvider
    DataSet = cdsTempItens
    Left = 48
    Top = 296
  end
  object dsTempItens: TDataSource
    DataSet = cdsTempItens
    Left = 16
    Top = 264
  end
  object qryClientes: TIBQuery
    Database = dbClientes
    Transaction = trnscClientes
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsClientes
    SQL.Strings = (
      'select * from CLIENTE')
    Left = 272
    Top = 120
  end
  object dsNCMs: TDataSource
    DataSet = cdsNCM
    Left = 264
    Top = 376
  end
  object dspNCM: TDataSetProvider
    DataSet = cdsNCM
    Left = 296
    Top = 408
  end
  object cdsNCM: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 376
    Data = {
      8E0000009619E0BD0100000018000000040000000000030000008E0006436F64
      4E434D010049000000010005574944544802000200140009436F644361744E43
      4D01004900000001000557494454480200020014000A446573634361744E434D
      010049000000010005574944544802000200960007446573634E434D01004900
      000001000557494454480200020096000000}
    object cdsNCMCodNCM: TStringField
      FieldName = 'CodNCM'
    end
    object cdsNCMCodCatNCM: TStringField
      FieldName = 'CodCatNCM'
    end
    object cdsNCMDescCatNCM: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescCatNCM'
      Size = 50
      Calculated = True
    end
    object cdsNCMDescNCM: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescNCM'
      Size = 50
      Calculated = True
    end
  end
  object dsNCM: TDataSource
    DataSet = tblNCM
    Left = 328
    Top = 376
  end
  object dbNCM: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscNCM
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 264
    Top = 440
  end
  object tblNCM: TIBTable
    Database = dbNCM
    Transaction = trnscNCM
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODNCM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CODCATNCM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESCCATNCM'
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'DESCNCM'
        DataType = ftMemo
        Size = 8
      end>
    StoreDefs = True
    TableName = 'NCM'
    Left = 328
    Top = 440
    object tblNCMCODNCM: TIBStringField
      FieldName = 'CODNCM'
      Size = 60
    end
    object tblNCMCODCATNCM: TIBStringField
      FieldName = 'CODCATNCM'
      Size = 60
    end
    object tblNCMDESCCATNCM: TMemoField
      FieldName = 'DESCCATNCM'
      BlobType = ftMemo
      Size = 8
    end
    object tblNCMDESCNCM: TMemoField
      FieldName = 'DESCNCM'
      BlobType = ftMemo
      Size = 8
    end
  end
  object trnscNCM: TIBTransaction
    Active = True
    DefaultDatabase = dbNCM
    AutoStopAction = saNone
    Left = 296
    Top = 472
  end
  object dsPesClientes: TDataSource
    DataSet = qryClientes
    Left = 232
    Top = 40
  end
  object dsPesProdutos: TDataSource
    DataSet = qryProdutos
    Left = 56
    Top = 40
  end
  object dsConta: TDataSource
    Left = 440
    Top = 376
  end
  object tblConta: TIBTable
    Database = dbConta
    Transaction = trnscConta
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LOGIN'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'PK_CONTA'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CONTA'
    Left = 440
    Top = 416
    object tblContaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tblContaLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object tblContaSENHA: TIBStringField
      FieldName = 'SENHA'
      Size = 15
    end
  end
  object trnscConta: TIBTransaction
    Active = True
    DefaultDatabase = dbClientes
    AutoStopAction = saNone
    Left = 400
    Top = 416
  end
  object dbConta: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscConta
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 480
    Top = 416
  end
  object qryConta: TIBQuery
    Database = dbConta
    Transaction = trnscConta
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsConta
    SQL.Strings = (
      'select * from CLIENTE')
    Left = 440
    Top = 456
  end
  object dsPesPedidos: TDataSource
    DataSet = qryPedidos
    Left = 392
    Top = 40
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    ACBrNFe = ACBrNFe1
    PathPDF = 'C:\Users\Bruno\Documents\StockSYS\DANFE\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 4
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = ',0.00'
    CasasDecimais._Mask_vUnCom = ',0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 8
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    LarguraCodProd = 54
    ExibirEAN = False
    QuebraLinhaEmDetalhamentoEspecifico = True
    ExibeCampoFatura = False
    ImprimirUnQtVlComercial = iuComercial
    ImprimirDadosDocReferenciados = True
    Left = 8
    Top = 448
  end
  object dsCompras: TDataSource
    DataSet = tblCompras
    Left = 624
    Top = 40
  end
  object dsPesCompras: TDataSource
    DataSet = qryCompras
    Left = 576
    Top = 40
  end
  object dsCompraItens: TDataSource
    DataSet = tblCompraItens
    Left = 624
    Top = 184
  end
  object dsFornecedores: TDataSource
    DataSet = tblFornecedores
    Left = 624
    Top = 376
  end
  object tblCompras: TIBTable
    Database = dbCompras
    Transaction = trnscCompras
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_FORNECEDOR'
        DataType = ftInteger
      end
      item
        Name = 'DATA_COMPRA'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_ENTREGA'
        DataType = ftDateTime
      end
      item
        Name = 'ID_CLASSIFICACAO'
        DataType = ftInteger
      end
      item
        Name = 'CONFIRMADA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ENTREGUE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCONTO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ACRESCIO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'OUTRAS_DESPESAS'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'CANCELADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_FORMAPAG'
        DataType = ftInteger
      end
      item
        Name = 'NUM_END_ENTREGA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COMPL_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BAIRRO_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'END_ENTREGA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CID_END_ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UF_END_ENTREGA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP_END_ENTREGA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TIPODOC'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PEDIDO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_REAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'MARGEM_VENDA'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VALOR_COMISSAO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TOTAL_GERAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'COO'
        DataType = ftInteger
      end
      item
        Name = 'CCF'
        DataType = ftInteger
      end
      item
        Name = 'GNF'
        DataType = ftInteger
      end
      item
        Name = 'DAV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'INSC_EST'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'VALOR_TROCO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'CHAVENFE'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'PK_COMPRA'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'COMPRA'
    Left = 624
    Top = 80
    object tblComprasID: TIntegerField
      FieldName = 'ID'
    end
    object tblComprasID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object tblComprasDATA_COMPRA: TDateTimeField
      FieldName = 'DATA_COMPRA'
    end
    object tblComprasDATA_ENTREGA: TDateTimeField
      FieldName = 'DATA_ENTREGA'
    end
    object tblComprasID_CLASSIFICACAO: TIntegerField
      FieldName = 'ID_CLASSIFICACAO'
    end
    object tblComprasCONFIRMADA: TIBStringField
      FieldName = 'CONFIRMADA'
      Size = 1
    end
    object tblComprasENTREGUE: TIBStringField
      FieldName = 'ENTREGUE'
      Size = 1
    end
    object tblComprasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object tblComprasDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object tblComprasACRESCIO: TIBBCDField
      FieldName = 'ACRESCIO'
      Precision = 18
      Size = 2
    end
    object tblComprasOUTRAS_DESPESAS: TIBBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object tblComprasVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object tblComprasCANCELADO: TIBStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
    object tblComprasID_FORMAPAG: TIntegerField
      FieldName = 'ID_FORMAPAG'
    end
    object tblComprasNUM_END_ENTREGA: TIBStringField
      FieldName = 'NUM_END_ENTREGA'
      Size = 10
    end
    object tblComprasCOMPL_END_ENTREGA: TIBStringField
      FieldName = 'COMPL_END_ENTREGA'
    end
    object tblComprasBAIRRO_END_ENTREGA: TIBStringField
      FieldName = 'BAIRRO_END_ENTREGA'
    end
    object tblComprasEND_ENTREGA: TIBStringField
      FieldName = 'END_ENTREGA'
      Size = 30
    end
    object tblComprasCID_END_ENTREGA: TIBStringField
      FieldName = 'CID_END_ENTREGA'
    end
    object tblComprasUF_END_ENTREGA: TIBStringField
      FieldName = 'UF_END_ENTREGA'
      Size = 2
    end
    object tblComprasCEP_END_ENTREGA: TIBStringField
      FieldName = 'CEP_END_ENTREGA'
      Size = 10
    end
    object tblComprasFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 60
    end
    object tblComprasTIPODOC: TIntegerField
      FieldName = 'TIPODOC'
    end
    object tblComprasTIPO_PEDIDO: TIntegerField
      FieldName = 'TIPO_PEDIDO'
    end
    object tblComprasVALOR_REAL: TIBBCDField
      FieldName = 'VALOR_REAL'
      Precision = 18
      Size = 2
    end
    object tblComprasMARGEM_VENDA: TIBBCDField
      FieldName = 'MARGEM_VENDA'
      Precision = 9
      Size = 2
    end
    object tblComprasVALOR_COMISSAO: TIBBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object tblComprasTOTAL_GERAL: TIBBCDField
      FieldName = 'TOTAL_GERAL'
      Precision = 18
      Size = 2
    end
    object tblComprasCOO: TIntegerField
      FieldName = 'COO'
    end
    object tblComprasCCF: TIntegerField
      FieldName = 'CCF'
    end
    object tblComprasGNF: TIntegerField
      FieldName = 'GNF'
    end
    object tblComprasDAV: TIBStringField
      FieldName = 'DAV'
      Size = 1
    end
    object tblComprasCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object tblComprasINSC_EST: TIBStringField
      FieldName = 'INSC_EST'
      Size = 18
    end
    object tblComprasVALOR_TROCO: TIBBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 18
      Size = 2
    end
    object tblComprasCHAVENFE: TIBStringField
      FieldName = 'CHAVENFE'
      Size = 50
    end
    object tblComprasnFor: TStringField
      FieldKind = fkLookup
      FieldName = 'nFor'
      LookupDataSet = tblFornecedores
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 60
      Lookup = True
    end
  end
  object qryCompras: TIBQuery
    Database = dbCompras
    Transaction = trnscCompras
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCompras
    SQL.Strings = (
      'select * from COMPRA')
    Left = 624
    Top = 120
  end
  object trnscCompras: TIBTransaction
    Active = True
    DefaultDatabase = dbCompras
    AutoStopAction = saNone
    Left = 576
    Top = 80
  end
  object dbCompras: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscCompras
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 672
    Top = 80
  end
  object ibdsCompras: TIBDataSet
    Database = dbCompras
    Transaction = trnscCompras
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from COMPRA')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_COMPRA_ID'
    Active = True
    DataSource = dsCompras
    Left = 672
    Top = 120
  end
  object tblCompraItens: TIBTable
    Database = dbCompraItens
    Transaction = trnscCompraItens
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_COMPRA'
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCONTO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ACRESCIMO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'MARGEM'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VALOR_REAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TIPOPROD'
        DataType = ftInteger
      end
      item
        Name = 'CANCELADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUM_ITEM'
        DataType = ftInteger
      end
      item
        Name = 'EAN13'
        DataType = ftString
        Size = 14
      end>
    IndexDefs = <
      item
        Name = 'PK_COMPRA_ITENS'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'COMPRA_ITENS'
    Left = 624
    Top = 224
    object tblCompraItensID: TIntegerField
      FieldName = 'ID'
    end
    object tblCompraItensID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
    end
    object tblCompraItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object tblCompraItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object tblCompraItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object tblCompraItensVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object tblCompraItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object tblCompraItensACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object tblCompraItensVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object tblCompraItensMARGEM: TIBBCDField
      FieldName = 'MARGEM'
      Precision = 9
      Size = 2
    end
    object tblCompraItensVALOR_REAL: TIBBCDField
      FieldName = 'VALOR_REAL'
      Precision = 18
      Size = 2
    end
    object tblCompraItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object tblCompraItensCANCELADO: TIBStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
    object tblCompraItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
    end
    object tblCompraItensEAN13: TIBStringField
      FieldName = 'EAN13'
      Size = 14
    end
  end
  object qryCompraItens: TIBQuery
    Database = dbCompraItens
    Transaction = trnscCompraItens
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCompraItens
    SQL.Strings = (
      'select * from COMPRA_ITENS')
    Left = 624
    Top = 264
  end
  object dbCompraItens: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscCompraItens
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 672
    Top = 224
  end
  object trnscCompraItens: TIBTransaction
    Active = True
    DefaultDatabase = dbCompraItens
    AutoStopAction = saNone
    Left = 576
    Top = 224
  end
  object ibdsCompraItens: TIBDataSet
    Database = dbCompraItens
    Transaction = trnscCompraItens
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from COMPRA_ITENS')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_COMPRA_ITENS_ID'
    Active = True
    DataSource = dsCompraItens
    Left = 672
    Top = 264
  end
  object tblFornecedores: TIBTable
    Database = dbFornecedores
    Transaction = trnscFornecedores
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM_END'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BAIRRO_END'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIDADE_END'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CEP_END'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'TELEFONE2'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INSC_RG'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UF_END'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'PK_FORNECEDOR'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'FORNECEDOR'
    Left = 624
    Top = 416
    object tblFornecedoresID: TIntegerField
      FieldName = 'ID'
    end
    object tblFornecedoresNOME: TIBStringField
      FieldName = 'NOME'
      Size = 60
    end
    object tblFornecedoresENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object tblFornecedoresNUM_END: TIBStringField
      FieldName = 'NUM_END'
      Size = 10
    end
    object tblFornecedoresBAIRRO_END: TIBStringField
      FieldName = 'BAIRRO_END'
    end
    object tblFornecedoresCIDADE_END: TIBStringField
      FieldName = 'CIDADE_END'
    end
    object tblFornecedoresCEP_END: TIBStringField
      FieldName = 'CEP_END'
      Size = 10
    end
    object tblFornecedoresTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object tblFornecedoresTELEFONE2: TIBStringField
      FieldName = 'TELEFONE2'
      Size = 11
    end
    object tblFornecedoresCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object tblFornecedoresINSC_RG: TIBStringField
      FieldName = 'INSC_RG'
    end
    object tblFornecedoresUF_END: TIBStringField
      FieldName = 'UF_END'
      Size = 2
    end
    object tblFornecedoresEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object tblFornecedoresATIVO: TIBStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object tblFornecedoresCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
    end
  end
  object qryFornecedores: TIBQuery
    Database = dbFornecedores
    Transaction = trnscFornecedores
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsFornecedores
    SQL.Strings = (
      'select * from FORNECEDOR')
    Left = 624
    Top = 456
  end
  object dbFornecedores: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:\Users\Bruno\Documents\DBFirebird\StockSYS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trnscFornecedores
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 672
    Top = 416
  end
  object trnscFornecedores: TIBTransaction
    Active = True
    DefaultDatabase = dbFornecedores
    AutoStopAction = saNone
    Left = 576
    Top = 416
  end
  object ibdsFornecedores: TIBDataSet
    Database = dbFornecedores
    Transaction = trnscFornecedores
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from FORNECEDOR')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_FORNECEDOR_ID'
    Active = True
    DataSource = dsFornecedores
    Left = 672
    Top = 456
  end
  object dsCTempItens: TDataSource
    DataSet = cdsCTempItens
    Left = 544
    Top = 264
  end
  object cdsCTempItens: TClientDataSet
    Active = True
    Aggregates = <>
    MasterSource = dsCompras
    PacketRecords = 0
    Params = <>
    Left = 576
    Top = 264
    Data = {
      640A00009619E0BD02000000180000002F000000000003000000640A02494404
      000100000000000949445F434F4D50524104000100000000000A49445F50524F
      4455544F04000100000000000944455343524943414F01004900000001000557
      494454480200020032000A5155414E5449444144450B00050000000200084445
      43494D414C530200020002000557494454480200020012000556414C4F520B00
      05000000020008444543494D414C530200020002000557494454480200020012
      0008444553434F4E544F0B0005000000020008444543494D414C530200020002
      0005574944544802000200120009414352455343494D4F0B0005000000020008
      444543494D414C530200020002000557494454480200020012000B56414C4F52
      5F544F54414C0B0005000000020008444543494D414C53020002000200055749
      445448020002001200064D415247454D070005000000020008444543494D414C
      530200020002000557494454480200020009000A56414C4F525F5245414C0B00
      05000000020008444543494D414C530200020002000557494454480200020012
      00085449504F50524F4404000100000000000943414E43454C41444F01004900
      00000100055749445448020002000100084E554D5F4954454D04000100000000
      000545414E31330100490000000100055749445448020002000E000F69626473
      436F6D7072614974656E730F000E05000000000249440400010004000100064F
      524947494E020049801000434F4D5052415F4954454E532E4944000949445F43
      4F4D5052410400010000000100064F524947494E020049801700434F4D505241
      5F4954454E532E49445F434F4D505241000A49445F50524F4455544F04000100
      00000100064F524947494E020049801800434F4D5052415F4954454E532E4944
      5F50524F4455544F000944455343524943414F01004900000002000557494454
      48020002003200064F524947494E020049801700434F4D5052415F4954454E53
      2E44455343524943414F000A5155414E5449444144450B000500000003000844
      4543494D414C53020002000200055749445448020002001200064F524947494E
      020049801800434F4D5052415F4954454E532E5155414E544944414445000556
      414C4F520B0005000000030008444543494D414C530200020002000557494454
      48020002001200064F524947494E020049801300434F4D5052415F4954454E53
      2E56414C4F520008444553434F4E544F0B0005000000030008444543494D414C
      53020002000200055749445448020002001200064F524947494E020049801600
      434F4D5052415F4954454E532E444553434F4E544F0009414352455343494D4F
      0B0005000000030008444543494D414C53020002000200055749445448020002
      001200064F524947494E020049801700434F4D5052415F4954454E532E414352
      455343494D4F000B56414C4F525F544F54414C0B000500000003000844454349
      4D414C53020002000200055749445448020002001200064F524947494E020049
      801900434F4D5052415F4954454E532E56414C4F525F544F54414C00064D4152
      47454D070005000000030008444543494D414C53020002000200055749445448
      020002000900064F524947494E020049801400434F4D5052415F4954454E532E
      4D415247454D000A56414C4F525F5245414C0B0005000000030008444543494D
      414C53020002000200055749445448020002001200064F524947494E02004980
      1800434F4D5052415F4954454E532E56414C4F525F5245414C00085449504F50
      524F440400010000000100064F524947494E020049801600434F4D5052415F49
      54454E532E5449504F50524F44000943414E43454C41444F0100490000000300
      0753554254595045020049000A00466978656443686172000557494454480200
      02000100064F524947494E020049801700434F4D5052415F4954454E532E4341
      4E43454C41444F00084E554D5F4954454D0400010000000100064F524947494E
      020049801600434F4D5052415F4954454E532E4E554D5F4954454D000545414E
      31330100490000000200055749445448020002000E00064F524947494E020049
      801300434F4D5052415F4954454E532E45414E31330000000E717279436F6D70
      72614974656E730F000E05000000000249440400010004000100064F52494749
      4E020049801000434F4D5052415F4954454E532E4944000949445F434F4D5052
      410400010000000100064F524947494E020049801700434F4D5052415F495445
      4E532E49445F434F4D505241000A49445F50524F4455544F0400010000000100
      064F524947494E020049801800434F4D5052415F4954454E532E49445F50524F
      4455544F000944455343524943414F0100490000000200055749445448020002
      003200064F524947494E020049801700434F4D5052415F4954454E532E444553
      43524943414F000A5155414E5449444144450B0005000000030008444543494D
      414C53020002000200055749445448020002001200064F524947494E02004980
      1800434F4D5052415F4954454E532E5155414E544944414445000556414C4F52
      0B0005000000030008444543494D414C53020002000200055749445448020002
      001200064F524947494E020049801300434F4D5052415F4954454E532E56414C
      4F520008444553434F4E544F0B0005000000030008444543494D414C53020002
      000200055749445448020002001200064F524947494E020049801600434F4D50
      52415F4954454E532E444553434F4E544F0009414352455343494D4F0B000500
      0000030008444543494D414C5302000200020005574944544802000200120006
      4F524947494E020049801700434F4D5052415F4954454E532E41435245534349
      4D4F000B56414C4F525F544F54414C0B0005000000030008444543494D414C53
      020002000200055749445448020002001200064F524947494E02004980190043
      4F4D5052415F4954454E532E56414C4F525F544F54414C00064D415247454D07
      0005000000030008444543494D414C5302000200020005574944544802000200
      0900064F524947494E020049801400434F4D5052415F4954454E532E4D415247
      454D000A56414C4F525F5245414C0B0005000000030008444543494D414C5302
      0002000200055749445448020002001200064F524947494E020049801800434F
      4D5052415F4954454E532E56414C4F525F5245414C00085449504F50524F4404
      00010000000100064F524947494E020049801600434F4D5052415F4954454E53
      2E5449504F50524F44000943414E43454C41444F010049000000030007535542
      54595045020049000A0046697865644368617200055749445448020002000100
      064F524947494E020049801700434F4D5052415F4954454E532E43414E43454C
      41444F00084E554D5F4954454D0400010000000100064F524947494E02004980
      1600434F4D5052415F4954454E532E4E554D5F4954454D000545414E31330100
      490000000200055749445448020002000E00064F524947494E02004980130043
      4F4D5052415F4954454E532E45414E313300000002000D44454641554C545F4F
      524445520400820001000000010000000B5052494D4152595F4B455904008200
      0100000001000000}
    object cdsCTempItensID: TIntegerField
      FieldName = 'ID'
    end
    object cdsCTempItensID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
    end
    object cdsCTempItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCTempItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCTempItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object cdsCTempItensVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsCTempItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsCTempItensACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object cdsCTempItensVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsCTempItensMARGEM: TBCDField
      FieldName = 'MARGEM'
      Precision = 9
      Size = 2
    end
    object cdsCTempItensVALOR_REAL: TBCDField
      FieldName = 'VALOR_REAL'
      Precision = 18
      Size = 2
    end
    object cdsCTempItensTIPOPROD: TIntegerField
      FieldName = 'TIPOPROD'
    end
    object cdsCTempItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
    object cdsCTempItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
    end
    object cdsCTempItensEAN13: TStringField
      FieldName = 'EAN13'
      Size = 14
    end
    object cdsCTempItensibdsCompraItens: TDataSetField
      FieldName = 'ibdsCompraItens'
    end
    object cdsCTempItensqryCompraItens: TDataSetField
      FieldName = 'qryCompraItens'
    end
  end
  object dspCTempItens: TDataSetProvider
    DataSet = cdsCTempItens
    Left = 576
    Top = 296
  end
  object dsPesFor: TDataSource
    DataSet = qryFornecedores
    Left = 576
    Top = 376
  end
  object ACBrIBGE1: TACBrIBGE
    ProxyPort = '8080'
    Left = 8
    Top = 416
  end
end