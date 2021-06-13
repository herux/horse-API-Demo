unit index;

interface

uses
  Horse, System.JSON;

procedure API_Index(Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

procedure API_Index(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LRespObj: TJSONObject;
begin
  LRespObj:= TJSONObject.Create;
  try
    LRespObj.AddPair(TJSONPair.Create('r', TJSONBool.Create(true)));
    LRespObj.AddPair(TJSONPair.Create('m', TJSONString.Create('this is an API index using https://github.com/HashLoad/horse')));
    Res.Send(LRespObj.ToString);
  finally
    LRespObj.Free;
  end;
end;

end.
