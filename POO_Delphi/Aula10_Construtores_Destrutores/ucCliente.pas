unit ucCliente;

interface

uses
  ucPessoa, System.SysUtils, ucEndereco;

type
  TCliente = class(TPessoa)
    private
      FCPF: String;
      FEndereco: TEndereco;
    public
      constructor Create; overload;
      constructor Create(Value: TPessoa); overload;
      destructor Destroy; override;
      property CPF: String read FCPF write FCPF;
      property Endereco: TEndereco read FEndereco write FEndereco;
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

constructor TCliente.Create;
begin
  Nome := 'Jorge';
  FEndereco := TEndereco.Create;
end;

constructor TCliente.Create(Value: TPessoa);
begin
  Nome := Value.Nome;
  DataNascimento := Value.DataNascimento;
  FEndereco := TEndereco.Create;
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

function TCliente.RetornaDados: String;
begin
  inherited;
//  Result := Dados + #13#10 +
    Result :=
              '===========Cliente===========' + #13#10 +
              'Nome: ' + Nome + #13#10 +
              'CPF: ' + FCPF + #13#10 +
              'Contrato: ' + Contrato + #13#10 +
              'Logradouro: ' + FEndereco.Logradouro + #13#10 +
              'Nro: ' + FEndereco.Numero + #13#10 +
              '==========================';
end;

end.
