unit Case1;

interface

uses
  System.SysUtils, System.Generics.Collections;

type
  TDocumento = class
  private
    FCPF: string;
    FOAB: string;
  public
    property CPF: string read FCPF write FCPF;
    property OAB: string read FOAB write FOAB;
  end;

  TListaDocumentos = class
  private
    FDocumentos: TObjectList<TDocumento>;
  public
    procedure Adicionar(const ADocumento: TDocumento);
    procedure Remover(const ADocumento: TDocumento);
  end;

  TCadastroPessoas = class
  private
    FListaCPFs: TListaDocumentos;
  public
    function ConsultarCPF(const ACPF: string): boolean;
  end;

  TCadastroAdvogados = class
  private
    FListaOABs: TListaDocumentos;
  public
    function ConsultarOAB(const AOAB: string): boolean;
  end;

implementation

{ TListaProdutos }

procedure TListaDocumentos.Adicionar(const ADocumento: TDocumento);
begin
  FDocumentos.Add(ADocumento);
end;

procedure TListaDocumentos.Remover(const ADocumento: TDocumento);
begin
  FDocumentos.Remove(ADocumento);
end;

{ TCadastroPessoas }

function TCadastroPessoas.ConsultarCPF(const ACPF: string): boolean;
var
  Documento: TDocumento;
begin
  result := False;

  for Documento in FListaCPFs.FDocumentos do
  begin
    if Documento.CPF.Equals(ACPF) then
      Exit(True);
  end;
end;

{ TCadastroAdvogados }

function TCadastroAdvogados.ConsultarOAB(const AOAB: string): boolean;
var
  Documento: TDocumento;
begin
  result := False;

  for Documento in FListaOABs.FDocumentos do
  begin
    if Documento.OAB.Equals(AOAB) then
      Exit(True);
  end;
end;

end.
