unit Code1;

interface

type
  TFuncionario = class
  private
    FDocumento: string;
  public
    property Documento: string read FDocumento write FDocumento;

    procedure FormatarDocumento;
  end;

  TExemplo = class
  public
    procedure CadastrarFuncionario;
    function VerificarDocumentoJaExiste(const ADocumento: string): boolean;
  end;

implementation

{ TFuncionario }

procedure TFuncionario.FormatarDocumento;
begin
  // Formata o documento
end;

{ TExemplo }

procedure TExemplo.CadastrarFuncionario;
var
  Funcionario: TFuncionario;
begin
  Funcionario := TFuncionario.Create;
  try
    Funcionario.Documento := '21947811260';
    Funcionario.FormatarDocumento;
  finally
    Funcionario.Free;
  end;
end;

function TExemplo.VerificarDocumentoJaExiste(
  const ADocumento: string): boolean;
begin
  result := False;
end;

end.
