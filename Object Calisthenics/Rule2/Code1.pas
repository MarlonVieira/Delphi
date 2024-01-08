unit Code1;

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
  if ValidarCredenciais then
    ExibirMenu
  else
    ShowMessage('Login inv�lido');
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
