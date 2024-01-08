unit Case1_Logger;

interface

type
  TLogger = class
  public
    function PreencherLog: string;
  end;

implementation

uses
  System.Classes, System.SysUtils;

{ TLogger }

function TLogger.PreencherLog: string;
var
  Log: TStringList;
  Arquivo: string;
begin
  Log := TStringList.Create;
  try
    Log.Add('Data/Hora: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Now));
    Log.Add('Versão do Windows: ' + TOSVersion.Name);
    Log.Add('Última mensagem do Sistema: ' + SysErrorMessage(GetLastError));

    Arquivo := GetCurrentDir + '\Log.txt';
    Log.SaveToFile(Arquivo);
    result := Arquivo;
  finally
    Log.Free;
  end;
end;

end.
