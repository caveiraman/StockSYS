object telaLancItensC: TtelaLancItensC
  Left = 754
  Top = 275
  Width = 513
  Height = 285
  Caption = 'Lan'#231'amento de Itens(Compra)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 497
    Height = 178
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 73
      Height = 13
      Caption = 'C'#243'digo Produto'
      FocusControl = editId
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = editDesc
    end
    object Label3: TLabel
      Left = 8
      Top = 104
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = editQuant
    end
    object Label4: TLabel
      Left = 176
      Top = 104
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = editValor
    end
    object Label5: TLabel
      Left = 8
      Top = 136
      Width = 46
      Height = 13
      Caption = 'Desconto'
      FocusControl = editDescnt
    end
    object Label6: TLabel
      Left = 176
      Top = 136
      Width = 49
      Height = 13
      Caption = 'Acr'#233'scimo'
      FocusControl = editAcr
    end
    object Label7: TLabel
      Left = 320
      Top = 136
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      FocusControl = editVrt
    end
    object SpeedButton1: TSpeedButton
      Left = 296
      Top = 24
      Width = 23
      Height = 22
      Caption = 'P'
    end
    object editId: TDBEdit
      Left = 88
      Top = 24
      Width = 41
      Height = 21
      DataField = 'IDPROD'
      DataSource = telaDados.dsTempItens
      TabOrder = 0
    end
    object editDesc: TDBEdit
      Left = 88
      Top = 64
      Width = 369
      Height = 21
      DataField = 'DESC'
      DataSource = telaDados.dsTempItens
      Enabled = False
      TabOrder = 1
    end
    object editQuant: TDBEdit
      Left = 88
      Top = 104
      Width = 81
      Height = 21
      DataField = 'QUANT'
      DataSource = telaDados.dsTempItens
      TabOrder = 2
    end
    object editValor: TDBEdit
      Left = 232
      Top = 104
      Width = 81
      Height = 21
      DataField = 'VALOR'
      DataSource = telaDados.dsTempItens
      Enabled = False
      TabOrder = 3
    end
    object editDescnt: TDBEdit
      Left = 88
      Top = 136
      Width = 81
      Height = 21
      DataField = 'DESCONTO'
      DataSource = telaDados.dsTempItens
      TabOrder = 4
    end
    object editAcr: TDBEdit
      Left = 232
      Top = 136
      Width = 81
      Height = 21
      DataField = 'ACRESCIMO'
      DataSource = telaDados.dsTempItens
      TabOrder = 5
    end
    object editVrt: TDBEdit
      Left = 384
      Top = 136
      Width = 73
      Height = 21
      DataField = 'VRT'
      DataSource = telaDados.dsTempItens
      Enabled = False
      TabOrder = 6
    end
    object editIdPedido: TDBEdit
      Left = 152
      Top = 24
      Width = 134
      Height = 21
      DataField = 'IDPED'
      DataSource = telaDados.dsTempItens
      Enabled = False
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 178
    Width = 497
    Height = 69
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 152
      Top = 0
      Width = 75
      Height = 69
      Caption = 'F2 - &Confirmar'
      TabOrder = 0
    end
    object BitCancelar: TBitBtn
      Left = 232
      Top = -2
      Width = 75
      Height = 71
      Caption = 'F3 - C&ancelar'
      TabOrder = 1
    end
  end
end
