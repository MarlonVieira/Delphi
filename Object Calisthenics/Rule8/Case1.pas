unit Case1;

interface

type
  TCliente = class
  private
    FCodigo: integer;
    FNome: string;
    FSobrenome: string;
    FCEP: string;
    FNumero: string;
    FComplemento: string;
    FTelefone: string;
    FCelular: string;
    FRG: string;
    FCPF: string;
    FTituloEleitor: string;
  public
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Sobrenome: string read FSobrenome write FSobrenome;
    property CEP: string read FCEP write FCEP;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write FComplemento;
    property Telefone: string read FTelefone write FTelefone;
    property Celular: string read FCelular write FCelular;
    property RG: string read FRG write FRG;
    property CPF: string read FCPF write FCPF;
    property TituloEleitor: string read FTituloEleitor write FTituloEleitor;
  end;

implementation

end.
