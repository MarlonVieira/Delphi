unit uCidade;

interface

  type
  TCidade = class
    private
      FIdCidade   : integer;
      FCodigo_IBGE: integer;
      FUF         : string;
      FIsCapital    : Byte;
      FNome       : string;
    public
      property IdCidade   : integer read FIdCidade    write FIdCidade   ;
      property Codigo_IBGE: integer read FCodigo_IBGE write FCodigo_IBGE;
      property UF         : string  read FUF          write FUF         ;
      property IsCapital    : Byte  read FIsCapital   write FIsCapital  ;
      property Nome       : string  read FNome        write FNome       ;
  end;

implementation

end.
