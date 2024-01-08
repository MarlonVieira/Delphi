unit uCliente;

interface

uses uCidade, System.SysUtils;

Type

  TCliente = class
  private
    FBairro: String;
    FUF: String;
    FCEP: String;
    FNumero: String;
    FIDCliente: Integer;
    FNome: String;
    FEndereco: String;
    FComplemento: String;
    FCidade: TCidade;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property IDCliente: Integer read FIDCliente write FIDCliente;
    property Nome: String read FNome write FNome;
    property Endereco: String read FEndereco write FEndereco;
    property Numero: String read FNumero write FNumero;
    property Complemento: String read FComplemento write FComplemento;
    property CEP: String read FCEP write FCEP;
    property Bairro: String read FBairro write FBairro;
    property UF: String read FUF write FUF;
    property Cidade: TCidade read FCidade write FCidade;
    constructor Create;
    destructor Destroy; override;
  published
    { published declarations }
  end;

implementation


constructor TCliente.Create;
begin
  inherited;
  FCidade          := TCidade.Create;
  FIDCliente       := 0;
  FCidade.IDCidade := 0;
end;

destructor TCliente.Destroy;
begin
  if Assigned(FCidade) then
     FreeAndNil(FCidade);

  inherited;
end;

end.

