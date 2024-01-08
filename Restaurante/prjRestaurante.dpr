program prjRestaurante;

uses
  Vcl.Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {ValidacaoCPF},
  uValidaCPF in 'classes\uValidaCPF.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TValidacaoCPF, ValidacaoCPF);
  Application.Run;
end.
