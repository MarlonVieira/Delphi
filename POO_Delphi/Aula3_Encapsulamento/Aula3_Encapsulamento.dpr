program Aula3_Encapsulamento;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form2},
  contaBancaria in 'contaBancaria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
