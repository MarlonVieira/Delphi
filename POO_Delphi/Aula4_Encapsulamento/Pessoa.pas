unit Pessoa;

interface

uses
  Utils;

type
  TPessoa = class
    private

    public
      Nome: String;
      Datanascimento: String;
      Idade: TUtils;
      constructor Create;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin
  Idade := TUtils.Create;
end;

end.
