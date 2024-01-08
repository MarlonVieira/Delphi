unit ucUsuario;

interface

uses
  ucPessoa;

type
  TUsuario = class(TPessoa)
    private
    public
      function RetornaDados: String; override;
      function Contrato: String; override;
  end;

implementation

{ Usuario }

function TUsuario.Contrato: String;
begin
  Result := 'TUsuario.Contrato';
end;

function TUsuario.RetornaDados: String;
begin
  Result := '===========Usuario==========' + #13#10 +
            'Contrato: ' + Contrato + #13#10 +
            '==========================';
end;

end.
