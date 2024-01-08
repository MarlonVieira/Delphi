unit uValidaCPF;

interface

type
  TValidaCPF = class
    private
      FRecebeCPF: string;
      procedure SetRecebeCPF(const Value: string);
      function GetRecebeCPF: string;
    public
      property RecebeCPF : string read GetRecebeCPF write SetRecebeCPF;
      function ValidaCPF1 : integer;
      function ValidaCPF2 : integer;
  end;

implementation

{ TValidaCPF }

function TValidaCPF.GetRecebeCPF: string;
begin
  Result := FRecebeCPF;
end;

procedure TValidaCPF.SetRecebeCPF(const Value: string);
begin
  FRecebeCPF := Value;
end;

function TValidaCPF.ValidaCPF1: integer;
var
  erro, resp, i, soma, aux : integer;
begin

  soma:=0;
  for i := 1 to 9 do
  begin

    Val(FRecebeCPF[i], resp, erro);
      soma := (resp*(11-i)) + soma;

  end;

  aux := (soma * 10) mod 11;

  if((aux = 10) or (FRecebeCPF = '11111111111') or (FRecebeCPF = '22222222222') or (FRecebeCPF = '33333333333') or (FRecebeCPF = '22222222222') or (FRecebeCPF = '55555555555') or (FRecebeCPF = '66666666666') or (FRecebeCPF = '77777777777') or (FRecebeCPF = '88888888888') or (FRecebeCPF = '99999999999')) then
  begin
    aux :=0 ;
  end
    else
      ValidaCPF1 := aux;
end;

function TValidaCPF.ValidaCPF2: integer;
var
  erro, resp, i, soma, aux : integer;
begin

  soma:=0;
  for i := 1 to 10 do
  begin

    Val(FRecebeCPF[i], resp, erro);
      soma := (resp*(12-i)) + soma;

  end;

  aux := (soma * 10) mod 11;

  if((aux = 10) or (FRecebeCPF = '11111111111') or (FRecebeCPF = '22222222222') or (FRecebeCPF = '33333333333') or (FRecebeCPF = '22222222222') or (FRecebeCPF = '55555555555') or (FRecebeCPF = '66666666666') or (FRecebeCPF = '77777777777') or (FRecebeCPF = '88888888888') or (FRecebeCPF = '99999999999')) then
  begin
    aux :=0 ;
  end
    else
      ValidaCPF2 := aux;
end;

end.
