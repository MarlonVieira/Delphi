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
      function Contrato: String; override;
  end;

implementation

{ TCliente }



{ TCliente }

function TCliente.Contrato: String;
begin
  Result := 'TCliente.Contrato';
end;

function TCliente.RetornaDados: String;
begin
  Result := '===========Ciente===========' + #13#10 +
            'Nome: ' + Self.Nome + #13#10 +
            'Data Nascimento: ' + Self.DataNascimento + #13#10 +
            'Idade: ' + Self.Idade.ToString + #13#10 +
            'CPF: ' + FCPF + #13#10 +
            'Contrato: ' + Contrato + #13#10 +
            '==========================';
end;

end.
