unit Case1_Solution;

interface

type
  TNome = class
  private
    FNome: string;
    FSobrenome: string;
  public
    property Nome: string read FNome write FNome;
    property Sobrenome: string read FSobrenome write FSobrenome;
  end;

  TEndereco = class
  private
    FCEP: string;
    FNumero: string;
    FComplemento: string;
  public
    function GetCidade: string;

    property CEP: string read FCEP write FCEP;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write FComplemento;
  end;

  TContato = class
  private
    FTelefone: string;
    FCelular: string;
  public
    property Telefone: string read FTelefone write FTelefone;
    property Celular: string read FCelular write FCelular;
  end;

  TDocumentos = class
  private
    FRG: string;
    FCPF: string;
    FTituloEleitor: string;
  public
    property RG: string read FRG write FRG;
    property CPF: string read FCPF write FCPF;
    property TituloEleitor: string read FTituloEleitor write FTituloEleitor;
  end;

  TCliente = class
  private
    FCodigo: integer;
    FNome: TNome;
    FEndereco: TEndereco;
    FContato: TContato;
    FDocumentos: TDocumentos;
  public
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: TNome read FNome write FNome;
    property Endereco: TEndereco read FEndereco write FEndereco;
    property Contato: TContato read FContato write FContato;
    property Documentos: TDocumentos read FDocumentos write FDocumentos;
  end;

  TExemplo = class
  public
    function ConsultarCidadeCliente: string;
  end;

implementation

{ TEndereco }

function TEndereco.GetCidade: string;
begin
  //
end;

{ TExemplo }

function TExemplo.ConsultarCidadeCliente: string;
var
  Cliente: TCliente;
begin
  Cliente := TCliente.Create;
  try
    result := Cliente.Endereco.GetCidade;
  finally
    Cliente.Free;
  end;
end;

end.
