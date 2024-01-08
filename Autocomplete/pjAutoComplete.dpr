program pjAutoComplete;

uses
  Vcl.Forms,
  uFrmCadastroClientes in 'Autocomplete\view\uFrmCadastroClientes.pas' {frmCadastroClientes},
  uFrmListarClientes in 'Autocomplete\view\uFrmListarClientes.pas' {uFormPrincipal},
  uCidade in 'Autocomplete\classes\uCidade.pas',
  uCliente in 'Autocomplete\classes\uCliente.pas',
  uClienteDAO in 'Autocomplete\classes\uClienteDAO.pas',
  uCidadeDAO in 'Autocomplete\classes\uCidadeDAO.pas',
  uClienteValidador in 'Autocomplete\classes\uClienteValidador.pas',
  uDM in 'Autocomplete\Data\uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuFormPrincipal, uFormPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
