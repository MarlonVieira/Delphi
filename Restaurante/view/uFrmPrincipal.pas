unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, uValidaCPF;

type
  TValidacaoCPF = class(TForm)
    medCPF: TMaskEdit;
    lblCPF: TLabel;
    btnValidar: TButton;
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
    FoValidaCPF : TValidaCPF;
  public
    { Public declarations }
  end;

var
  ValidacaoCPF: TValidacaoCPF;

implementation

{$R *.dfm}

{ TValidacaoCPF }


procedure TValidacaoCPF.btnValidarClick(Sender: TObject);
begin
  medCPF.Text := FoValidaCPF.RecebeCPF;
end;

end.
