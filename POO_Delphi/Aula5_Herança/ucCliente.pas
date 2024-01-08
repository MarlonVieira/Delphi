unit ucCliente;

interface

uses
  ucPessoa;

type
  TCliente = class(TPessoa)
    private
    public
      Credito: Double;
  end;

implementation

end.
