unit ServTestCom_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 34747 $
// File generated on 11.05.2016 13:27:09 from Type Library described below.

// ************************************************************************  //
// Type Lib: S:\Projects\TestCom\ServTestCom (1)
// LIBID: {BACD90B6-36B2-48DA-BD74-06874CE2CA50}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ServTestComMajorVersion = 1;
  ServTestComMinorVersion = 0;

  LIBID_ServTestCom: TGUID = '{BACD90B6-36B2-48DA-BD74-06874CE2CA50}';

  IID_ITestCom_co: TGUID = '{31E47793-B62D-47F3-939F-9FAE21DB0B40}';
  CLASS_TestCom_co: TGUID = '{2C9964B9-368B-4A74-BB1C-8E3CFBF140CC}';
  DIID_IEvents: TGUID = '{650E33E1-D304-41B0-BA72-D85ED0AF856D}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  ITestCom_co = interface;
  IEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  TestCom_co = ITestCom_co;


// *********************************************************************//
// Interface: ITestCom_co
// Flags:     (256) OleAutomation
// GUID:      {31E47793-B62D-47F3-939F-9FAE21DB0B40}
// *********************************************************************//
  ITestCom_co = interface(IUnknown)
    ['{31E47793-B62D-47F3-939F-9FAE21DB0B40}']
    function Method1(const xmlStr: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  IEvents
// Flags:     (0)
// GUID:      {650E33E1-D304-41B0-BA72-D85ED0AF856D}
// *********************************************************************//
  IEvents = dispinterface
    ['{650E33E1-D304-41B0-BA72-D85ED0AF856D}']
    procedure Start; dispid 201;
    procedure Work; dispid 202;
    procedure Finish; dispid 203;
  end;

// *********************************************************************//
// The Class CoTestCom_co provides a Create and CreateRemote method to
// create instances of the default interface ITestCom_co exposed by
// the CoClass TestCom_co. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoTestCom_co = class
    class function Create: ITestCom_co;
    class function CreateRemote(const MachineName: string): ITestCom_co;
  end;

implementation

uses ComObj;

class function CoTestCom_co.Create: ITestCom_co;
begin
  Result := CreateComObject(CLASS_TestCom_co) as ITestCom_co;
end;

class function CoTestCom_co.CreateRemote(const MachineName: string): ITestCom_co;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TestCom_co) as ITestCom_co;
end;

end.

