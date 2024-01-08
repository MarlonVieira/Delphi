unit ucPessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class(TObject)
    private
    public
      Nome: String;
      DataNascimento: String;
      function Idade: Integer;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  result := Trunc((Now - StrToDate(DataNascimento)) / 365.25)
end;

end.
