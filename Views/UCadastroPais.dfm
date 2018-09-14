object frmCadastroPais: TfrmCadastroPais
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Pa'#237's'
  ClientHeight = 249
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
    Height = 249
    TabOrder = 0
    object Label1: TLabel
      Left = 90
      Top = 93
      Width = 45
      Height = 23
      Caption = 'Pa'#237's: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 55
      Top = 42
      Width = 80
      Height = 23
      Caption = 'N'#250'mero: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtNumero: TEdit
      Left = 141
      Top = 47
      Width = 113
      Height = 21
      TabOrder = 0
      TextHint = 'Informe o n'#250'mero'
    end
    object edtNmPais: TEdit
      Left = 141
      Top = 98
      Width = 113
      Height = 21
      TabOrder = 1
      TextHint = 'Informe o Pa'#237's'
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
