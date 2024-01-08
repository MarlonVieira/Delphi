unit uClienteValidador;

interface

uses uCliente, System.Classes, System.SysUtils;

type
  TClienteValidador = class
    public
    class function Validar(Cliente: TCliente): TStringList;
  end;

implementation

{ TClienteValidador }

class function TClienteValidador.Validar(Cliente: TCliente): TStringList;
begin
  Result := TStringList.Create;

  if Cliente.Nome            = EmptyStr then
    Result.Add('ERRO: Nome n�o foi informado!');
  if Cliente.Bairro          = EmptyStr then
    Result.Add('ERRO: Bairro n�o foi informado!');
  if Cliente.UF              = EmptyStr then
    Result.Add('ERRO: UF n�o foi informado!');
  if Cliente.CEP             = EmptyStr then
    Result.Add('ERRO: CEP n�o foi informado!');
  if Cliente.Endereco        = EmptyStr then
    Result.Add('ERRO: Endereco n�o foi informado!');
  if Cliente.Cidade.IdCidade = 0 then
    Result.Add('ERRO: Cidade n�o foi informado!');
end;

end.
