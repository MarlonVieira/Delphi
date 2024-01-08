unit Case2;

interface

type
  TFolhaPagamento = class
  public
    procedure ProcessarFolhaPagamentoEGerarRelatorio;
    procedure ImprimirFolhaPagamento;
  end;

  TExemplo = class
  public
    procedure Teste;
  end;

implementation

{$REGION 'TFolhaPagamento'}
{ TFolhaPagamento }

procedure TFolhaPagamento.ImprimirFolhaPagamento;
begin
  //
end;

procedure TFolhaPagamento.ProcessarFolhaPagamentoEGerarRelatorio;
begin
  //
end;
{$ENDREGION}

{ TExemplo }

procedure TExemplo.Teste;
var
  FolhaPagamento: TFolhaPagamento;
begin
  FolhaPagamento := TFolhaPagamento.Create;
  try
    FolhaPagamento.ProcessarFolhaPagamentoEGerarRelatorio;
    FolhaPagamento.ImprimirFolhaPagamento;
  finally
    FolhaPagamento.Free;
  end;
end;

end.
