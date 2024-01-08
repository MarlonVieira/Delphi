unit Case1_Using;

interface

type
  TExemplo = class
  public
    procedure EnviarLogParaEmail;
  end;

implementation

uses
  Case1_Logger, Case1_MailService;

{ TExemplo }

procedure TExemplo.EnviarLogParaEmail;
var
  Logger: TLogger;
  MailService: TMailService;
  Arquivo: string;
begin
  Logger := TLogger.Create;
  MailService := TMailService.Create;
  try
    Arquivo := Logger.PreencherLog;
    MailService.EnviarEmail(Arquivo);
  finally
    MailService.Free;
    Logger.Free;
  end;
end;

end.
