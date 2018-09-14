object frmCadastroCidade: TfrmCadastroCidade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Cidade'
  ClientHeight = 257
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 257
    TabOrder = 0
    object Label14: TLabel
      Left = 71
      Top = 98
      Width = 64
      Height = 23
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 52
      Top = 42
      Width = 83
      Height = 23
      Caption = 'N.Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtNCidade: TEdit
      Left = 141
      Top = 47
      Width = 113
      Height = 21
      TabOrder = 0
      TextHint = 'Informe o n. Cidade'
    end
    object edtCidade: TEdit
      Left = 141
      Top = 101
      Width = 113
      Height = 21
      TabOrder = 1
      TextHint = 'Informe sua Cidade'
    end
    object btnGravar: TButton
      Left = 104
      Top = 168
      Width = 150
      Height = 57
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnGravarClick
    end
  end
end
