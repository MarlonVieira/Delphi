unit Utils;

interface

uses
  FuncoesData;

type
  TUtils = class
    function Funcoes: TFuncoesData;
    function CalculaIdade(Value: String): Integer;
  end;

implementation

{ TUtils }

function TUtils.Funcoes: TFuncoesData;
begin
  Result := TFuncoesData.Create;
end;

function TUtils.CalculaIdade(Value: String): Integer;
begin
  Result := Trunc((Now - StrToDate(Value)) / 365.25);
end;

end.
