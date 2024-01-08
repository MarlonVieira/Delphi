unit contaBancaria;

interface

type
  TContaBancaria = class
    private
    FSaldo: Double;
    FNome: String;
    public
      property Nome: String read FNome write FNome;
      property Saldo: Double read FSaldo;
      procedure Depositar(Value: Double);
      procedure Sacar(Value:Double);
  end;

implementation

{ TContaBancaria }

procedure TContaBancaria.Depositar(Value: Double);
begin
  FSaldo := FSaldo + Value + (Value * 0.10);
end;

procedure TContaBancaria.Sacar(Value: Double);
begin
  FSaldo := FSaldo - Value;
end;

end.
