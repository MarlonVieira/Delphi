unit Code1_Solution;

{ 2 - Don’t Use the ELSE Keyword }

interface

type
  TLogin = class
  private
    function ValidarCredenciais: boolean;
    procedure ExibirMenu;
  public
    procedure Login;
  end;

implementation

uses
  VCL.Dialogs;

{ TLogin }

procedure TLogin.Login;
begin
  if not ValidarCredenciais then
  begin
    ShowMessage('Login inválido');
    Exit;
  end;

  ExibirMenu;
end;

{$REGION 'Methods'}
procedure TLogin.ExibirMenu;
begin
  //
end;

function TLogin.ValidarCredenciais: boolean;
begin
  result := True;
end;
{$ENDREGION}

end.
