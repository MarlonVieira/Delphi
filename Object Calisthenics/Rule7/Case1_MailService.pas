unit Case1_MailService;

interface

type
  TMailService = class
  public
    procedure EnviarEmail(const Anexo: string);
  end;

implementation

uses
  IdSMTP, IdMessage, IdText, IdAttachmentFile;

{ TMailService }

procedure TMailService.EnviarEmail(const Anexo: string);
var
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
begin
  IdSMTP := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    { ... }

    // Alteração
    TIdAttachmentFile.Create(IdMessage.MessageParts, Anexo);

    IdSMTP.Connect;
    IdSMTP.Authenticate;
    IdSMTP.Send(IdMessage);
  finally
    IdSMTP.Disconnect;
    IdMessage.Free;
    IdSMTP.Free;
  end;
end;

end.
