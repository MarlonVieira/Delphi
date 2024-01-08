unit Code2_Solution;

interface

type
  TBancoDadosEnum = (dbFirebird, dbOracle);

  IBancoDados = interface
    function GetSQLPedidosRecentes: string;
  end;

  TOracle = class(TInterfacedObject, IBancoDados)
  public
    function GetSQLPedidosRecentes: string;
  end;

  TFirebird = class(TInterfacedObject, IBancoDados)
  public
    function GetSQLPedidosRecentes: string;
  end;

  //Mostrar exemplo de outro banco

  TConsulta = class
  private
    procedure ExecutarQuery(const ASQL: string);
    function DBFactory(const ABancoDados: TBancoDadosEnum): IBancoDados;
  public
    procedure ConsultarPedidosRecentes(const ABancoDados: TBancoDadosEnum);
  end;

implementation

uses
  VCL.Dialogs;

{ TOracle }

function TOracle.GetSQLPedidosRecentes: string;
begin
  result := 'SELECT * FROM PEDIDOS WHERE ROWNUM <= 100';
end;

{ TFirebird }

function TFirebird.GetSQLPedidosRecentes: string;
begin
  result := 'SELECT FIRST 100 * FROM PEDIDOS';
end;

{ TConsulta }

function TConsulta.DBFactory(const ABancoDados: TBancoDadosEnum): IBancoDados;
begin
  case ABancoDados of
    dbFirebird: result := TFirebird.Create;
    dbOracle: result := TOracle.Create;
  end;
end;

procedure TConsulta.ConsultarPedidosRecentes(
  const ABancoDados: TBancoDadosEnum);
var
  BancoDados: IBancoDados;
begin
  BancoDados := DBFactory(ABancoDados);
  ExecutarQuery(BancoDados.GetSQLPedidosRecentes);
end;

procedure TConsulta.ExecutarQuery(const ASQL: string);
begin
  //
end;

end.
