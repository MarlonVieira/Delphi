unit Code2;

interface

type
  TBancoDadosEnum = (dbFirebird, dbOracle);

  TConsulta = class
  private
    procedure ExecutarQuery(const ASQL: string);
  public
    procedure ConsultarPedidosRecentes(const ABancoDados: TBancoDadosEnum);
  end;

implementation

uses
  VCL.Dialogs;

{ TLogin }

procedure TConsulta.ConsultarPedidosRecentes(const ABancoDados: TBancoDadosEnum);
var
  SQL: string;
begin
  if ABancoDados = dbOracle then
    SQL := 'SELECT * FROM Pedidos WHERE rownum <= 100'
  else if ABancoDados = dbFirebird then
    SQL := 'SELECT FIRST 100 * FROM Pedidos';

  ExecutarQuery(SQL);
end;

{$REGION 'Methods'}
procedure TConsulta.ExecutarQuery(const ASQL: string);
begin
  //
end;
{$ENDREGION}

end.
