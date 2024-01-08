unit uCidadeDAO;

interface

uses uCidade, classes, DB, SysUtils, generics.defaults, Dialogs, uDM, system.Generics.Collections;

type
  TCidadeDAO = class
    public
      class function ListarTodasCidadeUF(_UF: string): TObjectList<TCidade>;
  end;

implementation

var
  ListaCidade: TObjectList<TCidade>;

{ TCidadeDAO }

class function TCidadeDAO.ListarTodasCidadeUF(
  _UF: string): TObjectList<TCidade>;
var
  Sql: string;
  Index: integer;
begin
  try
    Index := 0;
    Sql   := 'SELECT C.IdCidade, C.Nome, C.Codigo_IBGE, C.UF, C.IsCapital'+
             '  From Cidade C                                            '+
             ' WHERE UF = ' + QuotedStr(_UF);
    DM.FDQuery.Sql.Text := Sql;
    DM.FDQuery.Open;

    if not DM.FDQuery.RecordCount > 0 then
      Exit;

    if not Assigned(ListaCidade) then
      ListaCidade := TObjectList<TCidade>.Create;

      ListaCidade.Clear;

    while not DM.FDQuery.Eof do
    begin
      ListaCidade.Add(TCidade.Create);
      ListaCidade.Items[Index].IdCidade    := DM.FDQuery.FieldByName('IdCidade   ').AsInteger;
      ListaCidade.Items[Index].Nome        := DM.FDQuery.FieldByName('Nome       ').AsString;
      ListaCidade.Items[Index].UF          := DM.FDQuery.FieldByName('UF         ').AsString;
      ListaCidade.Items[Index].IsCapital   := DM.FDQuery.FieldByName('IsCapital  ').AsInteger;
      ListaCidade.Items[Index].Codigo_IBGE := DM.FDQuery.FieldByName('Codigo_IBGE').AsInteger;

      DM.FDQuery.Next;
      Index := Index + 1;
    end;

    Result := ListaCidade;

  except
    on E: Exception do
    begin
      raise Exception.Create('Falha ao carregar Cidades' + #13 +
                            'Erro Original: ' + E.Message);
    end;
  end;
end;
initialization

finalization

if ListaCidade<>nil then
  ListaCidade.Free;

end.
