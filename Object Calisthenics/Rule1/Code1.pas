unit Code1;

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
  if ValidarCamposPreenchidos then
  begin
    if ValidarClienteEstaAtivo then
    begin
      if ValidarDataVenda then
      begin
        if VerificarEstoque then
        begin
          // Efetua a venda
        end;
      end;
    end;
  end;
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
