object frmConsultaEstado: TfrmConsultaEstado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consulta Estado'
  ClientHeight = 382
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
    Width = 321
    Height = 21
    TabOrder = 0
    TextHint = 'Informe o Estado'
  end
  object btnBuscar: TButton
    Left = 392
    Top = 41
    Width = 89
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object DBGridEstado: TDBGrid
    Left = 33
    Top = 104
    Width = 448
    Height = 217
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnIncluir: TButton
    Left = 33
    Top = 327
    Width = 72
    Height = 25
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = btnIncluirClick
  end
  object btnEditar: TButton
    Left = 128
    Top = 327
    Width = 73
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
    Width = 73
    Height = 25
    Caption = 'Voltar'
    TabOrder = 6
    OnClick = btnVoltarClick
  end
  object btnRefresh: TButton
    Left = 392
    Top = 73
    Width = 89
    Height = 25
    Caption = 'Refresh'
    TabOrder = 7
    OnClick = btnRefreshClick
  end
end
