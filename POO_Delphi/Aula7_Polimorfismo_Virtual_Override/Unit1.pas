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
  pessoa: TPessoa;
  cliente: TCliente;
begin
  Memo1.Clear;
  pessoa := TPessoa.Create;
  cliente := TCliente.Create;
  try
    pessoa.Nome := 'marlon';
    pessoa.DataNascimento := '20/01/2000';

    Memo1.Lines.Add('===========Pessoa===========');
    Memo1.Lines.Add('Nome: ' + pessoa.RetornaDados);
    Memo1.Lines.Add('==========================');

    cliente.Nome := 'Euclides';
    cliente.DataNascimento := '02/02/1998';
    cliente.CPF := '123.123.123-00';

    Memo1.Lines.Add('===========Ciente===========');
    Memo1.Lines.Add('CPF Cliente: ' + cliente.RetornaDados);
    Memo1.Lines.Add('==========================');
  finally
    pessoa.Free;
    cliente.free;
  end;
end;

end.
