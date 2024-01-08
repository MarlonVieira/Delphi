unit Case1_Solution;

interface

type
  TFuncoes = class
  public
    procedure AtualizarPagamentos;
  end;

  TRegras = class
  private
    FFuncoes: TFuncoes;
  public
    property Funcoes: TFuncoes read FFuncoes write FFuncoes;
  end;

  TServico = class
  private
    FRegras: TRegras;
  public
    property Regras: TRegras read FRegras write FRegras;
  end;

  TController = class
  private
    FServico: TServico;
  public
    procedure AtualizarPagamentos;
    property Servico: TServico read FServico write FServico;
  end;

  TExemplo = class
  private
    FController: TController;
  public
    procedure AtualizarPagamentos;
    procedure ExcecaoDaRegra;
  end;

implementation

uses
  System.SysUtils;

{ TExemplo }

procedure TExemplo.AtualizarPagamentos;
begin
  FController.AtualizarPagamentos;
end;

{ TController }

procedure TController.AtualizarPagamentos;
begin
  FServico.Regras.Funcoes.AtualizarPagamentos;
end;

//ExcecaoDaRegra
procedure TExemplo.ExcecaoDaRegra;
var
  StringBuilder: TStringBuilder;
  Texto: string;
begin
  // Fluent Interface

  StringBuilder := TStringBuilder.Create;

  Texto := StringBuilder
    .Append('Linha #1')
    .Append('Linha #2')
    .AppendLine
    .Append('Linha #3')
    .ToString;

  Texto := Texto
    .Trim
    .ToUpper
    .Replace('#', '-', [rfReplaceAll]);
end;

{ TFuncoes }

procedure TFuncoes.AtualizarPagamentos;
begin
  //
end;


end.
