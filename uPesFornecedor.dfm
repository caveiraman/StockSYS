object telaPesFor: TtelaPesFor
  Left = 206
  Top = 179
  Width = 913
  Height = 480
  Caption = 'Pesquisa Fornecedor'
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
    Top = 57
    Width = 897
    Height = 385
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 893
      Height = 368
      Align = alClient
      DataSource = telaDados.dsPesFor
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_END'
          Title.Caption = 'Num'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO_END'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE_END'
          Title.Caption = 'CIdade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_CPF'
          Title.Caption = 'CNPJ/CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INSC_RG'
          Title.Caption = 'INSC.E/RG'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 57
    Align = alTop
    TabOrder = 1
    object btnPesquisa: TSpeedButton
      Left = 861
      Top = 9
      Width = 31
      Height = 32
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
        E7DBDBDBE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC8D0E1285A9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE5E5E59B9B9B9797979D9D9DC8C8C8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D1E3285EA55BD3F977DBF426589F70
        7B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E69B9B9BADAD
        ADB0B0B0979797ABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D2E5
        2963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE6E6E69D9D9DAEAEAEB2B2B2A8A8A89E9E9E9A9A9AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
        D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E69E9E9EAEAEAEB2B2B2A8A8
        A89F9F9F9B9B9BE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC
        7FE3FA44AFF1177FE41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
        E7E79F9F9FAEAEAEB2B2B2A8A8A89F9F9F9C9C9CE7E7E7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC9D6EA2971C15CD5FC7EE3FA44AFF1177FE41F63BDC9D6EAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7A0A0A0AEAEAEB2B2B2A8A8A89F9F9F9D9D
        9DE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F7E7
        E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551C3F47EE3FA44AFEF
        177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFAFAFAF1F1F1F1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFADADADAB
        ABABB2B2B2A8A8A89F9F9F9E9E9EE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
        F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFED5D5D5A9A9A9929292939393939393909090
        A2A2A2CDCDCDFAFAFAF4F4F4CECECE9E9E9EA6A6A69F9F9F9F9F9FE7E7E7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFF
        E6C4FFEECDFFF5CCC0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2
        C9DBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5A8A8A89595
        95A4A4A4B5B5B5B8B8B8BABABABABABAAEAEAE989898949494A0A0A0A9A9A9A9
        A9A99D9D9DA0A0A0E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF
        5D56618E7753F2C18FFFCFA9FFD6B3FFE6C9FFEDD0FFF2D3FFF8D8FFFCDF97AC
        A6453B45726374C8C1CBE0EEFAD4E3F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5F5F59E9E9E9C9C9CB0B0B0B4B4B4B6B6B6B9B9B9BABABABBBBBB
        BBBBBBBCBCBCA8A8A89090909B9B9BD5D5D5F2F2F2EDEDEDFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC91F6BD91FFD8B6FF
        E8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CDC9CDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE9B9B9BADADADB0B0
        B0B0B0B0B6B6B6B9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEA9A9A9909090DF
        DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
        DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
        F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFDEDEDE979797A9A9A9AEAEAEABABABB0B0B0B6B6B6B9B9B9BABABABBBBBB
        BCBCBCBEBEBEBFBFBFBEBEBE9C9C9CCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FF
        E7CEFFEDD4FFF2DAFFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B79E9E9EABABABA9A9A9AAAA
        AAB0B0B0B6B6B6B9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEBDBDBDB2B2B29F
        9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF706471C4905D
        DDA479D39A6FF8BF94FFD0ACFFDABCFFEBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8
        E1FFF9DEFFFAD75D525FF0F0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9F9F9FA4A4A4AAAAAAA7A7A7B0B0B0B4B4B4B7B7B7BABABABABABABBBBBB
        BCBCBCBCBCBCBCBCBCBCBCBCBCBCBC969696F7F7F7FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA176E5AC81FDC498FF
        DCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D7179D6D5D8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DA3A3A3A9A9A9AEAEAEA9A9
        A9ACACACB2B2B2B7B7B7BBBBBBBABABABABABABBBBBBBBBBBBBBBBBBBABABA9D
        9D9DE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
        D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
        D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9E9E9EA2A2A2A8A8A8ABABABB4B4B4B8B8B8B7B7B7B3B3B3B8B8B8BBBBBB
        BABABABABABABABABABABABABABABA9E9E9EE9E9E9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FF
        DABDFFCBA3FFE6D1FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A5A2A2A2A6A6A6AFAFAFB8B8
        B8BBBBBBBEBEBEB7B7B7B3B3B3B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B999
        9999F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A0ACA68053
        CB9267EBB287FFD9BBFFEADAFFF1E7FFDEC5F1B88DFFDBBFFFCCA3FED3AEFFD8
        B6FFDDC0D3C594796F7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC0C0C09F9F9FA5A5A5ADADADB6B6B6BABABABCBCBCB8B8B8AFAFAFB7B7B7
        B3B3B3B5B5B5B6B6B6B7B7B7AEAEAEA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC398FFDCC2FFE5D2FF
        CCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BCB8BEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E79E9E9EA2A2A2A9A9A9B1B1
        B1B7B7B7B9B9B9B4B4B4B1B1B1B1B1B1ADADADAFAFAFB3B3B3B3B3B39F9F9FD4
        D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
        9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
        91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFBFBFBF9F9F9FA3A3A3A9A9A9AEAEAEB1B1B1B0B0B0AEAEAEA7A7A7
        AAAAAAAFAFAFB0B0B0A5A5A5ADADADFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DD
        A479DBA277E3AA7FEAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB0B0B0A0A0A0A2A2
        A2A6A6A6A8A8A8AAAAAAA9A9A9ABABABADADADABABABA4A4A4A7A7A7F1F1F1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FAFAFAB2ABB598867DAD875AC38C5BBC8558C28B5DCF9967BA9668958475968F
        9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFBFBFBC1C1C1A2A2A2A1A1A1A3A3A3A2A2A2A3A3A3A6A6A6
        A4A4A4A1A1A1B3B3B3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E4B7AFBA9D91A09F
        919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
        E8C4C4C4ACACACA6A6A6A6A6A6A9A9A9BBBBBBE1E1E1FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      OnClick = btnPesquisaClick
    end
    object editBusca: TEdit
      Left = 200
      Top = 16
      Width = 657
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object cbCategoria: TComboBox
      Left = 40
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Nome'
        'CNPJ'
        'Insc. Estadual'
        'Cidade')
    end
  end
end
