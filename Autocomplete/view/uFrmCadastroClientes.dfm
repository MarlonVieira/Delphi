object frmCadastroClientes: TfrmCadastroClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro Clientes'
  ClientHeight = 475
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object gbDadosPesooais: TGroupBox
    Left = 0
    Top = 0
    Width = 434
    Height = 67
    Align = alTop
    Caption = 'Dados Pessoais'
    TabOrder = 0
    object lbNome: TLabeledEdit
      Left = 11
      Top = 35
      Width = 414
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome:'
      TabOrder = 0
    end
  end
  object gbEndereco: TGroupBox
    Left = 0
    Top = 67
    Width = 434
    Height = 367
    Align = alClient
    Caption = 'Endere'#231'o'
    TabOrder = 1
    ExplicitHeight = 352
    object Label1: TLabel
      Left = 360
      Top = 72
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label2: TLabel
      Left = 360
      Top = 122
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object lbEndereco: TLabeledEdit
      Left = 11
      Top = 40
      Width = 334
      Height = 21
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
      TabOrder = 0
    end
    object lbNumero: TLabeledEdit
      Left = 360
      Top = 40
      Width = 65
      Height = 21
      EditLabel.Width = 16
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186':'
      TabOrder = 1
    end
    object lbBairro: TLabeledEdit
      Left = 11
      Top = 88
      Width = 334
      Height = 21
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro:'
      TabOrder = 2
    end
    object mlbCEP: TMaskEdit
      Left = 360
      Top = 88
      Width = 65
      Height = 21
      EditMask = '00000-000;1;_'
      MaxLength = 9
      TabOrder = 3
      Text = '     -   '
    end
    object lbComplemento: TLabeledEdit
      Left = 11
      Top = 136
      Width = 334
      Height = 21
      EditLabel.Width = 69
      EditLabel.Height = 13
      EditLabel.Caption = 'Complemento:'
      TabOrder = 4
    end
    object cbUF: TComboBox
      Left = 360
      Top = 136
      Width = 65
      Height = 21
      TabOrder = 5
      TextHint = 'Selecione o UF'
      OnChange = cbUFChange
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object lbCidade: TLabeledEdit
      Left = 11
      Top = 184
      Width = 414
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'Cidade:'
      TabOrder = 6
      OnKeyUp = lbCidadeKeyUp
    end
    object ListViewCidades: TListView
      Left = 11
      Top = 211
      Width = 414
      Height = 150
      Columns = <>
      TabOrder = 7
      OnDblClick = ListViewCidadesDblClick
      OnKeyPress = ListViewCidadesKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 434
    Width = 434
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 419
    object btGravar: TButton
      Left = 1
      Top = 1
      Width = 112
      Height = 39
      Align = alLeft
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btCancelar: TButton
      Left = 323
      Top = 1
      Width = 110
      Height = 39
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
end
