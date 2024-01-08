unit Case1_Solution;

interface

uses
  DataSnap.DBClient;

type
  TVenda = class
  private
    FTotal: double;
  public
    procedure SomarAoTotal(const AValue: double);
    function RetornarTotal: double;
  end;

  TExemplo = class
  private
    FDataSet: TClientDataSet;
  public
    function Exemplo: double;
  end;

implementation

{ TVenda }

procedure TVenda.SomarAoTotal(const AValue: double);
begin
  FTotal := FTotal + AValue;
end;

function TVenda.RetornarTotal: double;
begin
  result := FTotal;
end;

{ TExemplo }

function TExemplo.Exemplo: double;
var
  lVenda: TVenda;
begin
  lVenda := TVenda.Create;
  try
    { ... }

    FDataSet.First;
    while not FDataSet.Eof do
    begin
      lVenda.SomarAoTotal(FDataSet.FieldByName('Total').AsFloat);

      FDataSet.Next;
    end;

    result := lVenda.RetornarTotal;
  finally
    lVenda.Free;
  end;
end;

end.
