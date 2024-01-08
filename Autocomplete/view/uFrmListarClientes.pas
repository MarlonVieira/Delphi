unit uFrmListarClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  uClienteDAO, System.Generics.Collections, uCliente, System.ImageList,
  Vcl.ImgList, uFrmCadastroClientes;

type
  TuFormPrincipal = class(TForm)
    Panel1: TPanel;
    lbBuscar: TLabeledEdit;
    btBuscar: TButton;
    Panel2: TPanel;
    btNovo: TButton;
    ListViewClientes: TListView;
    procedure lbBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure btBuscarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    _ListaClientes: TObjectList<TCliente>;
    procedure CarregarClientes;
    { Public declarations }
  end;

var
  uFormPrincipal: TuFormPrincipal;

implementation

{$R *.dfm}

procedure TuFormPrincipal.btBuscarClick(Sender: TObject);
begin
  CarregarClientes;
end;

procedure TuFormPrincipal.btNovoClick(Sender: TObject);
begin
  try
    FrmCadastroClientes := TFrmCadastroClientes.Create(Self);
    FrmCadastroClientes.ShowModal;
  finally
    FreeAndNil(FrmCadastroClientes);
  end;
end;

procedure TuFormPrincipal.CarregarClientes;
var
  I: Integer;
  Item: TListItem;
begin
  ListViewClientes.Items.Clear;
  _ListaClientes := TClienteDAO.ListarClientesPorNome(lbBuscar.Text);
  for I := 0 to _ListaClientes.Count - 1 do
  begin
    Item := ListViewClientes.Items.Add;
    Item.Caption := IntToStr(_ListaClientes[I].IDCliente);
    Item.SubItems.Add(_ListaClientes[I].Nome);
    Item.SubItems.Add(_ListaClientes[I].Endereco + ', n ' + _ListaClientes[I].Numero);
    Item.SubItems.Add(_ListaClientes[I].Bairro);
    Item.SubItems.Add(_ListaClientes[I].CEP);
    Item.SubItems.Add(_ListaClientes[I].Cidade.Nome);
    Item.SubItems.Add(_ListaClientes[I].UF);
    Item.Data := _ListaClientes[I];
  end;
end;

procedure TuFormPrincipal.lbBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    CarregarClientes;
end;

end.
