unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, contaBancaria,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    EB_DEPOSITAR: TButton;
    memo: TMemo;
    Button1: TButton;
    procedure EB_DEPOSITARClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
//
end;

procedure TForm2.EB_DEPOSITARClick(Sender: TObject);
var
  lContaBancaria1, lContaBancaria2: TContaBancaria;
begin
  lContaBancaria1 := TContaBancaria.Create;
  lContaBancaria2 := TContaBancaria.Create;

  lContaBancaria1.Nome := 'Marlon';
  lContaBancaria1.Depositar(20);

  lContaBancaria2.Nome := 'Euclides';
  lContaBancaria2.Depositar(200);

  memo.Lines.Add(lContaBancaria1.Nome);
  memo.Lines.Add(lContaBancaria1.Saldo.ToString);

    memo.Lines.Add('');

  memo.Lines.Add(lContaBancaria2.Nome);
  memo.Lines.Add(lContaBancaria2.Saldo.ToString);

  lContaBancaria2.Sacar(30);

  memo.Lines.Add('');

  memo.Lines.Add(lContaBancaria2.Nome);
  memo.Lines.Add(lContaBancaria2.Saldo.ToString);
end;

end.
