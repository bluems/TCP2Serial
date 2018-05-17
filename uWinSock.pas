unit uWinSock;

interface

uses System.SysUtils,System.classes, Winapi.Windows, WinSock;

type
  TWinSockLib = class(TObject)
  public
    function GetIP(): TStrings;
  end;

implementation

{ TWinSockLib }

{ function TWinSockLib.GetIP: String;
  var
  wData: WSADATA;
  HostName: String;
  pHostInfo: pHostEnt;
  begin
  WSAStartup(MAKEWORD(2, 2), wData);
  GetHostName(PAnsiChar(HostName), 512);
  pHostInfo := GetHostByName(PAnsiChar(HostName));
  if Assigned(pHostInfo) then
  Result := inttostr(ord(pHostInfo.h_addr_list^[0])) + '.' +
  inttostr(ord(pHostInfo.h_addr_list^[1])) + '.' +
  inttostr(ord(pHostInfo.h_addr_list^[2])) + '.' +
  inttostr(ord(pHostInfo.h_addr_list^[3])){ + '.' +
  inttostr(ord(pHostInfo.h_addr_list^[4])) }
{ else
  Result := '';
  WSACleanup;
  end; }

{ TWinSockLib }

function TWinSockLib.GetIP: TStrings;
type
  TaPInAddr = array [0 .. 10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: PAnsiChar;
  I: Integer;
  WSAData: TWSAData;
begin
  WSAStartup(MakeWord(2, 2), WSAData);
  Result := TStringList.Create;
  Result.Clear;
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(Buffer);
  if phe = nil then
    Exit;
  pptr := PaPInAddr(phe^.h_addr_list);
  I := 0;
  while pptr^[I] <> nil do
  begin
    Result.Add(inet_ntoa(pptr^[I]^));
    Inc(I);
  end;
  WSACleanUp;
end;

end.
