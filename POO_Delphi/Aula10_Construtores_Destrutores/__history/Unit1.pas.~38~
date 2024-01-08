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
  ucPessoa, ucCliente, ucUsuario;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
  cliente1, cliente2, cliente3: TCliente;
  usuario: TUsuario;
begin
  Memo1.Clear;
  pessoa := TPessoa.Create;
  pessoa.Nome := 'marlon';
  pessoa.DataNascimento := '20/01/2000';

  cliente1 := TCliente.Create(pessoa);
  cliente2 := TCliente.Create();
  cliente3 := TCliente.Create();
//  usuario := TUsuario.Create;
  try
//    cliente1.Nome := 'Marlon';
    cliente1.DataNascimento := '05/02/1998';
    cliente1.CPF := '123.123.123-00';

//    cliente2.Nome := 'Hosana';
    cliente2.DataNascimento := '04/02/1998';
    cliente2.CPF := '123.123.123-00';

//    cliente3.Nome := 'Nauri';
    cliente3.DataNascimento := '03/02/1998';
    cliente3.CPF := '123.123.123-00';

//    Memo1.Lines.Add(pessoa.RetornaDados);
//    Memo1.Lines.Add(cliente.RetornaDados);
    Memo1.Lines.Add(cliente1.RetornaDados);
    Memo1.Lines.Add(cliente2.RetornaDados);
    Memo1.Lines.Add(cliente3.RetornaDados);
//    Memo1.Lines.Add(usuario.RetornaDados);
  finally
    pessoa.Free;
    cliente1.free;
    cliente2.free;
    cliente3.free;
//    usuario.Free;
  end;
end;

end.
