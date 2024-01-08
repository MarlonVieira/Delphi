unit Code1_Solution;

interface

uses
  SysUtils;

type
  TVenda = class
  private
    function ValidarCamposPreenchidos: boolean;
    function ValidarClienteEstaAtivo: boolean;
    function ValidarDataVenda: boolean;
    function VerificarEstoque: boolean;
  public
    procedure EfetuarVenda;
  end;

implementation

uses
  System.Generics.Collections;

{ TCliente }

procedure TVenda.EfetuarVenda;
begin
  if not ValidarCamposPreenchidos then
    Exit;

  if not ValidarClienteEstaAtivo then
    Exit;

  if not ValidarDataVenda then
    Exit;

  if not VerificarEstoque then
    Exit;

  //Faz Venda
end;

function TVenda.ValidarCamposPreenchidos: boolean;
begin
  result := True;
end;

function TVenda.ValidarClienteEstaAtivo: boolean;
begin
  result := True;
end;

function TVenda.ValidarDataVenda: boolean;
begin
  result := True;
end;

function TVenda.VerificarEstoque: boolean;
begin
  result := True;
end;

end.
