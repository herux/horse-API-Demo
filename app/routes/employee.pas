unit employee;

interface

uses
  Horse, System.JSON;

procedure Get_Employees(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure Get_Employee(Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

procedure Get_Employees(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LRespArr: TJSONArray;
  LRespObj: TJSONObject;
  LEmployee1, LEmployee2, LEmployee3, LEmployee4, LEmployee5: TJSONObject;
begin
  LRespObj:= TJSONObject.Create;
  LRespArr:= TJSONArray.Create;
  LEmployee1:= TJSONObject.Create;
  LEmployee2:= TJSONObject.Create;
  LEmployee3:= TJSONObject.Create;
  LEmployee4:= TJSONObject.Create;
  LEmployee5:= TJSONObject.Create;
  try
    LEmployee1.AddPair(TJSONPair.Create('id', TJSONNumber.Create(1)));
    LEmployee1.AddPair(TJSONPair.Create('name', 'Employee1'));

    LEmployee2.AddPair(TJSONPair.Create('id', TJSONNumber.Create(2)));
    LEmployee2.AddPair(TJSONPair.Create('name', 'Employee2'));

    LEmployee3.AddPair(TJSONPair.Create('id', TJSONNumber.Create(3)));
    LEmployee3.AddPair(TJSONPair.Create('name', 'Employee3'));

    LEmployee4.AddPair(TJSONPair.Create('id', TJSONNumber.Create(4)));
    LEmployee4.AddPair(TJSONPair.Create('name', 'Employee4'));

    LEmployee5.AddPair(TJSONPair.Create('id', TJSONNumber.Create(5)));
    LEmployee5.AddPair(TJSONPair.Create('name', 'Employee5'));
    LRespArr.AddElement(LEmployee1);
    LRespArr.AddElement(LEmployee2);
    LRespArr.AddElement(LEmployee3);
    LRespArr.AddElement(LEmployee4);
    LRespArr.AddElement(LEmployee5);

    LRespObj.AddPair(TJSONPair.Create('r', TJSONBool.Create(true)));
    LRespObj.AddPair(TJSONPair.Create('m', 'Success'));
    LRespObj.AddPair(TJSONPair.Create('d', LRespArr));

    Res.Send(LRespObj.ToString);
  finally
    LRespObj.Free;
  end;
end;

procedure Get_Employee(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

end.
