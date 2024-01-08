unit Code2;

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
  public
    procedure ExportarItens;
  end;

implementation

{ TCliente }

procedure TVenda.ExportarItens;
var
  ListaClientes: TObjectList<TObject>;
  ListaVendas: TObjectList<TObject>;
  ListaItens: TObjectList<TObject>;
begin
  ListaClientes := TObjectList<TObject>.Create;
  ListaVendas := TObjectList<TObject>.Create;
  ListaItens := TObjectList<TObject>.Create;
  try

    for Cliente in ListaClientes do
    begin
      ListaVendas.Filter(Cliente.GetID);
      for Venda in ListaVendas do
      begin
        ListaItens.Filter(Venda.GetID);
        for Item in ListaItens do
        begin
          // Exporta o item
        end;
      end;
    end;

  finally
    ListaClientes.Free;
    ListaVendas.Free;
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
