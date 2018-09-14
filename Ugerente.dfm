object frmGerente: TfrmGerente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastros'
  ClientHeight = 201
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -5
    Width = 490
    Height = 206
    TabOrder = 0
    object Label1: TLabel
      Left = 206
      Top = 16
      Width = 69
      Height = 19
      Caption = 'Cadastros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnEstado: TButton
      Left = 190
      Top = 82
      Width = 99
      Height = 44
      Caption = 'Estado'
      TabOrder = 0
      OnClick = btnEstadoClick
    end
    object btnPais: TButton
      Left = 366
      Top = 82
      Width = 99
      Height = 44
      Caption = 'Pa'#237's'
      TabOrder = 1
      OnClick = btnPaisClick
    end
    object btnCidade: TButton
      Left = 30
      Top = 82
      Width = 99
      Height = 44
      Caption = 'Cidade'
      TabOrder = 2
      OnClick = btnCidadeClick
    end
  end
end
