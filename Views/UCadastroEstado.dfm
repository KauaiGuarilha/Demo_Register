object frmCadastroEstado: TfrmCadastroEstado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Estado'
  ClientHeight = 249
  ClientWidth = 366
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
    Width = 369
    Height = 249
    TabOrder = 0
    object Label9: TLabel
      Left = 92
      Top = 118
      Width = 35
      Height = 23
      Caption = 'UF: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 58
      Top = 84
      Width = 69
      Height = 23
      Caption = 'Estado: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 45
      Top = 41
      Width = 82
      Height = 23
      Caption = 'N.Estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtEstado: TEdit
      Left = 133
      Top = 89
      Width = 113
      Height = 21
      TabOrder = 0
      TextHint = 'Informe o Estado'
    end
    object edtNumEst: TEdit
      Left = 133
      Top = 46
      Width = 113
      Height = 21
      TabOrder = 1
      TextHint = 'Informe o n. Estado'
    end
    object edtUf: TEdit
      Left = 133
      Top = 123
      Width = 113
      Height = 21
      TabOrder = 2
      TextHint = 'Informe a UF'
    end
    object Button1: TButton
      Left = 112
      Top = 174
      Width = 150
      Height = 57
      Caption = 'Gravar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
end
