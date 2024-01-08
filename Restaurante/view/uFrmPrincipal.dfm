object ValidacaoCPF: TValidacaoCPF
  Left = 0
  Top = 0
  Caption = 'Valida'#231#227'o de CPF'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCPF: TLabel
    Left = 48
    Top = 24
    Width = 73
    Height = 13
    Caption = 'Insira seu CPF:'
  end
  object medCPF: TMaskEdit
    Left = 48
    Top = 43
    Width = 120
    Height = 21
    EditMask = '000.000.000-00;1;_'
    MaxLength = 14
    TabOrder = 0
    Text = '   .   .   -  '
  end
  object btnValidar: TButton
    Left = 48
    Top = 80
    Width = 89
    Height = 41
    Caption = 'Validar CPF'
    TabOrder = 1
    OnClick = btnValidarClick
  end
end
