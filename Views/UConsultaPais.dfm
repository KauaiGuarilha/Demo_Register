object frmConsultaPais: TfrmConsultaPais
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consulta Pa'#237's'
  ClientHeight = 380
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Consulta: TLabel
    Left = 32
    Top = 24
    Width = 52
    Height = 13
    Caption = 'Consulta : '
  end
  object edtConsulta: TEdit
    Left = 32
    Top = 43
    Width = 321
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Informe o Pa'#237's'
  end
  object btnBuscar: TButton
    Left = 368
    Top = 41
    Width = 89
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object DBGridPais: TDBGrid
    Left = 32
    Top = 105
    Width = 425
    Height = 217
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnIncluir: TButton
    Left = 32
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = btnIncluirClick
  end
  object btnEditar: TButton
    Left = 128
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 224
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btnExcluirClick
  end
  object btnVoltar: TButton
    Left = 382
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 6
    OnClick = btnVoltarClick
  end
  object btnRefresh: TButton
    Left = 368
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Refresh'
    TabOrder = 7
    OnClick = btnRefreshClick
  end
end
