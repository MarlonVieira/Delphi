unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TProduto = class
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  published
    constructor Create;
    property Descricao : String read FDescricao write SetDescricao;
  end;

  TUtis = class
    class function IIF<T>(Condition : Boolean; T1, T2 : T) : T;
  end;

  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  aux : String;
begin
  aux := TUtis.IIF<string>((Edit1.Text <> ''), Edit1.Text, 'Laranja');
  ShowMessage(aux);
end;

{ TUtis }

class function TUtis.IIF<T>(Condition: Boolean; T1, T2: T): T;
begin
  if Condition then
    Result := T1
  else
    Result := T2;
end;

{ TProduto }

constructor TProduto.Create;
begin
  FDescricao := 'Produto Generico';
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  Prod1, Prod2, Prod3 : TProduto;
begin
  Prod1 := TProduto.Create;
  Prod1.Descricao := 'Laranja Pera';


  Prod3 := TUtis.IIF<TProduto>(Assigned(Prod1 ), Prod1, TProduto.Create);

  ShowMessage(Prod3.Descricao);

end;

end.
