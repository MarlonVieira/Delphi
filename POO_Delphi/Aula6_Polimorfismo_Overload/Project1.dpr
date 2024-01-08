program Project1;

uses
  Vcl.Forms,
  ucCliente in 'ucCliente.pas',
  ucPessoa in 'ucPessoa.pas',
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
