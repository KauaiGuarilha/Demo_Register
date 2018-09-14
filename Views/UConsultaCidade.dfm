object frmConsultaCidade: TfrmConsultaCidade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consulta Cidade'
  ClientHeight = 384
  ClientWidth = 519
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
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 52
    Height = 13
    Caption = 'Consulta : '
  end
  object edtConsulta: TEdit
    Left = 32
    Top = 43
    Width = 345
    Height = 21
    TabOrder = 0
    TextHint = 'Informe a Cidade'
  end
  object btnBuscar: TButton
    Left = 392
    Top = 41
    Width = 91
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object DBGridCidade: TDBGrid
    Left = 32
    Top = 104
    Width = 451
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
    Top = 327
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
    Left = 232
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btnExcluirClick
  end
  object btnVoltar: TButton
    Left = 408
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 6
    OnClick = btnVoltarClick
  end
  object btnRefresh: TButton
    Left = 392
    Top = 72
    Width = 91
    Height = 25
    Caption = 'Refresh'
    TabOrder = 7
    OnClick = btnRefreshClick
  end
end
