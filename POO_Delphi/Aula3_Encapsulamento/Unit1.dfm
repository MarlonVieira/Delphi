object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EB_DEPOSITAR: TButton
    Left = 232
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 0
    OnClick = EB_DEPOSITARClick
  end
  object memo: TMemo
    Left = 18
    Top = 8
    Width = 185
    Height = 241
    TabOrder = 1
  end
  object Button1: TButton
    Left = 232
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
