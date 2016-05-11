unit Unit1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, ServTestCom_TLB, StdVcl, Dialogs;

type
  TTestCom_co = class(TTypedComObject, ITestCom_co)
  protected
    function Method1(const xmlStr: WideString): HResult; stdcall;
  end;

implementation

uses ComServ;

function TTestCom_co.Method1(const xmlStr: WideString): HResult;
begin
  ShowMessage('Method1: ' + xmlStr);
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TTestCom_co, Class_TestCom_co,
    ciMultiInstance, tmApartment);
end.
