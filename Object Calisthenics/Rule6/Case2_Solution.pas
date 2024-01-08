unit Case2_Solution;

{ 6 - Don’t Abbreviate }

interface

type
  TFolhaPagamento = class
  public
    procedure Processar;
    procedure GerarRelatorio;
    procedure Imprimir;
  end;

  TExemplo = class
  public
    procedure Teste;
  end;

implementation

{$REGION 'TFolhaPagamento'}
{ TFolhaPagamento }

procedure TFolhaPagamento.GerarRelatorio;
begin
  //
end;

procedure TFolhaPagamento.Imprimir;
begin
  //
end;

procedure TFolhaPagamento.Processar;
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
    FolhaPagamento.Processar;
    FolhaPagamento.GerarRelatorio;
    FolhaPagamento.Imprimir;
  finally
    FolhaPagamento.Free;
  end;
end;

end.
