unit Limites;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.SqlExpr, Data.DB, FireDAC.Comp.Client, Vcl.StdCtrls;

type

  iConexao = interface
    procedure Conectar;
  end;

  iQuery = interface
    procedure ExecQuery;
  end;


  TConexaoFiredac = class(TInterfacedObject, iConexao)
    procedure Conectar;
  end;

  TConexaoDBExpress = class(TInterfacedObject, iConexao)
    procedure Conectar;
  end;

  TConexaoAno3000 = class(TInterfacedObject, iConexao)
    procedure Conectar;
  end;


  TForm2 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TConexaoFiredac }

procedure TConexaoFiredac.Conectar;
begin
  //FDConnection.Connected;
end;

{ TConexaoDBExpress }

procedure TConexaoDBExpress.Conectar;
begin
  //SQLConnection.Connected;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FConexao := TConexaoAno3000.Create;
  FConexao.Conectar;
end;

{ TConexaoAno3000 }

procedure TConexaoAno3000.Conectar;
begin
  //3000Connection.AllConect;
end;

end.
