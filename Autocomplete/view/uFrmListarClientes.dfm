object uFormPrincipal: TuFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Lista de Clientes'
  ClientHeight = 394
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 45
    Align = alTop
    TabOrder = 0
    object lbBuscar: TLabeledEdit
      Left = 80
      Top = 12
      Width = 193
      Height = 21
      EditLabel.Width = 70
      EditLabel.Height = 25
      EditLabel.Caption = 'Buscar:'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -21
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      LabelPosition = lpLeft
      TabOrder = 0
      OnKeyPress = lbBuscarKeyPress
    end
    object btBuscar: TButton
      Left = 467
      Top = 1
      Width = 115
      Height = 43
      Align = alRight
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btBuscarClick
      ExplicitTop = -4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 348
    Width = 583
    Height = 46
    Align = alBottom
    TabOrder = 1
    object btNovo: TButton
      Left = 467
      Top = 1
      Width = 115
      Height = 44
      Align = alRight
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btNovoClick
    end
  end
  object ListViewClientes: TListView
    Left = 0
    Top = 45
    Width = 583
    Height = 303
    Align = alClient
    Columns = <
      item
      end
      item
      end
      item
      end>
    TabOrder = 2
  end
end
