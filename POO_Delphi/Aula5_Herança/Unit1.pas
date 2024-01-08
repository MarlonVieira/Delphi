unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ucPessoa, ucCliente;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa1: TPessoa;
  pessoa2: TCliente;
begin
  pessoa1 := TPessoa.Create;
  pessoa2 := TCliente.Create;
  Memo1.Clear;
  try
    pessoa1.nome := 'Marlon';
    pessoa1.DataNascimento := '20/01/2002';

    Memo1.Lines.Add('Nome: ' + pessoa1.nome);
    Memo1.Lines.Add('Data de Nascimento: ' + pessoa1.DataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa1.Idade.ToString);

    Memo1.Lines.Add('===============================================');

    pessoa2.nome := 'Joana';
    pessoa2.DataNascimento := '21/10/2005';
    pessoa2.Credito := 200;

    Memo1.Lines.Add('Nome: ' + pessoa2.nome);
    Memo1.Lines.Add('Data de Nascimento: ' + pessoa2.DataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa2.Idade.ToString);
    Memo1.Lines.Add('Cr�dito: ' + pessoa2.Credito.ToString);
    Memo1.Lines.Add('===============================================');
  finally
    pessoa1.Free;
    pessoa2.Free;
  end;
end;

end.
