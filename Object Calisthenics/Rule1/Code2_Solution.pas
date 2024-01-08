unit Code2_Solution;

interface

uses
  SysUtils, System.Generics.Collections;

type
  TObjectHelper = class helper for TObject
  public
    function GetID: integer;
  end;

  TObjectListHelper = class helper for TObjectList<TObject>
  public
    procedure Filter(const AKey: integer);
  end;

  TVenda = class
  private
    procedure ProcessarVendas(const ACliente: integer);
    procedure ProcessarItens(const AVenda: integer);
  public
    procedure ExportarItens;
  end;

implementation

{ TCliente }

procedure TVenda.ExportarItens;
var
  ListaClientes: TObjectList<TObject>;
begin
  ListaClientes := TObjectList<TObject>.Create;
  try
    for Cliente in ListaClientes do
      ProcessarVendas(Cliente.GetID);
  finally
    ListaClientes.Free;
  end;
end;

procedure TVenda.ProcessarVendas(const ACliente: integer);
var
  ListaVendas: TObjectList<TObject>;
begin
  ListaVendas := TObjectList<TObject>.Create;
  ListaVendas.Filter(ACliente);
  try
    for Venda in ListaVendas do
      ProcessarItens(Venda.GetID);
  finally
    ListaVendas.Free;
  end;
end;

procedure TVenda.ProcessarItens(const AVenda: integer);
var
  ListaItens: TObjectList<TObject>;
begin
  ListaItens := TObjectList<TObject>.Create;
  ListaItens.Filter(AVenda);
  try
    for Item in ListaItens do
      // Exporta o item
  finally
    ListaItens.Free;
  end;
end;

{ TObjectListHelper }

procedure TObjectListHelper.Filter(const AKey: integer);
begin
  //
end;

{ TObjectHelper }

function TObjectHelper.GetID: integer;
begin
  result := 0;
end;

end.
