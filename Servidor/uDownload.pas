unit uDownload;

interface

uses System.Classes, System.Net.HttpClientComponent;

type
  TDownload = class
  function DownloadFile(SourceFile, DestFile: string) : Boolean;
end;

implementation

{ TDownload }

function TDownload.downloadfile(SourceFile, DestFile: string): Boolean;
var
  http : TNetHTTPClient;
  url : string;
  stream: TMemoryStream;
begin
  http := TNetHTTPClient.Create(nil);
  stream := TMemoryStream.Create;
  try
    url := SourceFile;
    http.Get(url, stream);
    stream.SaveToFile(DestFile);
  finally
    stream.Free;
    http.Free;
  end;
  end;

  end.
