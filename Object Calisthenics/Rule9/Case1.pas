unit Case1;

interface

uses
  DataSnap.DBClient;

type
  TVenda = class
  private
    FTotal: double;
  public
    function GetTotal: double;
    procedure SetTotal(const Value: double);

    property Total: double read GetTotal write SetTotal;
  end;

  TExemplo = class
  private
    FDataSet: TClientDataSet;
  public
    function Exemplo1: double;
    function Exemplo2: double;
  end;

implementation

{ TVenda }

function TVenda.GetTotal: double;
begin
  result := FTotal;
end;

procedure TVenda.SetTotal(const Value: double);
begin
  FTotal := Value;
end;

{ TExemplo }

function TExemplo.Exemplo1: double;
var
  lVenda: TVenda;
begin
  lVenda := TVenda.Create;
  try
    { ... }

    FDataSet.First;
    while not FDataSet.Eof do
    begin
      lVenda.SetTotal(lVenda.GetTotal + FDataSet.FieldByName('Valor').AsFloat);

      FDataSet.Next;
    end;

    result := lVenda.GetTotal;
  finally
    lVenda.Free;
  end;
end;

function TExemplo.Exemplo2: double;
var
  lVenda: TVenda;
begin
  lVenda := TVenda.Create;
  try
    { ... }

    FDataSet.First;
    while not FDataSet.Eof do
    begin
      lVenda.Total := lVenda.Total + FDataSet.FieldByName('Valor').AsFloat;

      FDataSet.Next;
    end;

    result := lVenda.Total;
  finally
    lVenda.Free;
  end;
end;

end.
