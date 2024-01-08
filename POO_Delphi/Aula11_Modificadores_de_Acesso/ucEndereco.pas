unit ucEndereco;

interface

type
  TEndereco = class
    private
      FLogradouro: String;
      FNumero: String;
    public
      constructor Create;
      property Logradouro: String read FLogradouro write FLogradouro;
      property Numero: String read FNumero write FNumero;
  end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  Logradouro := 'Pioneiro Alcides';
  Numero := '22';
end;

end.
