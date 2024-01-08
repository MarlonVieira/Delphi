unit ucCliente;

interface

uses
  ucPessoa, System.SysUtils;

type
  TCliente = class(TPessoa)
    private
      FCredito: Double;
    public
      property Credito: Double read FCredito;
      function Receber(Valor: Integer): String; overload;
      function Receber(Valor: Double): String; overload;
  end;

implementation

{ TCliente }

function TCliente.Receber(Valor: Integer): String;
begin
  Result := Valor.ToString;
end;

function TCliente.Receber(Valor: Double): String;
begin
  FCredito := Valor + (Valor * 0.10);
  Result := Valor.ToString;
end;

end.
