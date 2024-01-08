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
  Pessoa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa := TPessoa.Create;

  try
    pessoa.Nome := 'Jo�o';
    pessoa.DataNascimento := '25/11/1920';
    ShowMessage(pessoa.Nome + ' - ' + pessoa.Idade.CalculaIdade(pessoa.Datanascimento).ToString);
  finally
    pessoa.Free;
  end;
end;

end.
