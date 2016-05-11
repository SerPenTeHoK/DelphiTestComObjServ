program ServTestCom;

uses
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  ServTestCom_TLB in 'ServTestCom_TLB.pas',
  Unit1 in 'Unit1.pas' {TestCom_co: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
