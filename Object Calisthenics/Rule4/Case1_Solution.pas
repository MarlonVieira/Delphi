unit Case1_Solution;

interface

uses
  System.SysUtils, System.Generics.Collections;

type
  TTipoDocumento = (docCPF, docOAB);

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
    function ConsultarDocumento(
      const ATipoDocumento: TTipoDocumento; const ANumero: string): boolean;
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

uses
  System.RTTI;

{ TListaProdutos }

procedure TListaDocumentos.Adicionar(const ADocumento: TDocumento);
begin
  FDocumentos.Add(ADocumento);
end;

procedure TListaDocumentos.Remover(const ADocumento: TDocumento);
begin
  FDocumentos.Remove(ADocumento);
end;

function TListaDocumentos.ConsultarDocumento(
  const ATipoDocumento: TTipoDocumento; const ANumero: string): boolean;
var
  Tipo: TRttiType;
  Propriedade: TRttiProperty;
  Documento: TDocumento;
begin
  result := False;
  Propriedade := nil;
  Tipo := TRttiContext.Create.GetType(TDocumento.ClassInfo);

  case ATipoDocumento of
    docCPF: Propriedade := Tipo.GetProperty('CPF');
    docOAB: Propriedade := Tipo.GetProperty('OAB');
  end;

  for Documento in FDocumentos do
  begin
    if Propriedade.GetValue(Documento).AsString.Equals(ANumero) then
      Exit(True);
  end;
end;

{ TCadastroPessoas }

function TCadastroPessoas.ConsultarCPF(const ACPF: string): boolean;
begin
  result := FListaCPFs.ConsultarDocumento(docCPF, ACPF);
end;

{ TCadastroAdvogados }

function TCadastroAdvogados.ConsultarOAB(const AOAB: string): boolean;
begin
  result := FListaOABs.ConsultarDocumento(docOAB, AOAB);
end;

end.

