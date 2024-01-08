unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
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
  uPessoa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.FNome := 'Marlon';
    Pessoa.Fid := 1;
    Pessoa.FTipo := 'F';
    Pessoa.FEmail := 'Marlon@gmail.com';
//    Pessoa.CPF := '123.456.789-10';
//    ShowMessage(Pessoa.Nome + ' - ' + Pessoa.CPF);
    ShowMessage(Pessoa.FId.ToString + ' - ' + Pessoa.FNome + ' - ' + Pessoa.FTipo + ' - ' + Pessoa.FEmail)
  finally
    Pessoa.Free;
  end;
end;

end.
