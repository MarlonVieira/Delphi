unit ucPessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
      FEmail: String;
      FDataNascimento: String;
      FNome: String;
    public
      property Nome: String read FNome write FNome;
      property DataNascimento: String read FDataNascimento write FDataNascimento;
      property Email: String read FEmail write FEmail;
      function Idade: Integer;
      function RetornaDados: String; virtual;
      function Contrato: String; virtual; abstract;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  result := Trunc((Now - StrToDate(DataNascimento)) / 365.25)
end;

function TPessoa.RetornaDados: String;
begin
  Result := '===========Pessoa===========' + #13#10 +
            'Nome: ' + FNome + #13#10 +
            'Data Nascimento: ' + FDataNascimento + #13#10 +
            'Idade: ' + Idade.ToString + #13#10 +
            '==========================';
end;

end.
