unit Case1;

interface

type
  TFuncoes = class
  public
    procedure AtualizarPagamentos;
  end;

  TRegras = class
  private
    FFuncoes: TFuncoes;
  public
    property Funcoes: TFuncoes read FFuncoes write FFuncoes;
  end;

  TServico = class
  private
    FRegras: TRegras;
  public
    property Regras: TRegras read FRegras write FRegras;
  end;

  TController = class
  private
    FServico: TServico;
  public
    property Servico: TServico read FServico write FServico;
  end;

  TExemplo = class
  private
    FController: TController;
  public
    procedure AtualizarPagamentos;
  end;

implementation

{ TExemplo }

procedure TExemplo.AtualizarPagamentos;
begin
  //         1       2      3       4
  FController.Servico.Regras.Funcoes.AtualizarPagamentos;
end;

{ TFuncoes }

procedure TFuncoes.AtualizarPagamentos;
begin
  //
end;

end.
