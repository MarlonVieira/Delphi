unit ucCliente;

interface

uses
  ucPessoa, System.SysUtils;

type
  TCliente = class(TPessoa)
    private
      FCPF: String;
    public
      property CPF: String read FCPF write FCPF;
      function RetornaDados: String; override;
  end;

implementation

{ TCliente }



{ TCliente }

function TCliente.RetornaDados: String;
begin
  Result := 'Nome: ' + Self.Nome + #13#10 +
            'Data Nascimento: ' + Self.DataNascimento + #13#10 +
            'Idade: ' + Self.Idade.ToString + #13#10 +
            'CPF: ' + FCPF;
end;

end.
