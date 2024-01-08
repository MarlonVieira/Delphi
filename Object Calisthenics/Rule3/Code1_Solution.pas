unit Code1_Solution;

interface

type
  TDocumento = class
  private
    FNumero: string;
  public
    property Numero: string read FNumero write FNumero;
    procedure Formatar;
    function ConsultarNoCadastro: boolean;
  end;

  TFuncionario = class
  private
    FDocumento: TDocumento;
  public
    property Documento: TDocumento read FDocumento write FDocumento;
  end;

  TExemplo = class
  public
    procedure CadastrarFuncionario;
    function VerificarDocumentoJaExiste(const ADocumento: TDocumento): boolean;
  end;

implementation

{ TExemplo }

procedure TExemplo.CadastrarFuncionario;
var
  Funcionario: TFuncionario;
begin
  Funcionario := TFuncionario.Create;
  try
    Funcionario.Documento := TDocumento.Create;
    Funcionario.Documento.Numero := '21947811260';
    Funcionario.Documento.Formatar;
  finally
    Funcionario.Free;
  end;
end;

function TExemplo.VerificarDocumentoJaExiste(
  const ADocumento: TDocumento): boolean;
begin
  result := ADocumento.ConsultarNoCadastro;
end;

{ TDocumento }

function TDocumento.ConsultarNoCadastro: boolean;
begin
  result := False;
end;

procedure TDocumento.Formatar;
begin
  //
end;

end.
