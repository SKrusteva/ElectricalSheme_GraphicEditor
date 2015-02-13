program MainProject;

uses
  Forms,
  ElectricScheme in 'ElectricScheme.pas' {Form1},
  About in 'About.pas' {AboutForm},
  VectorFile in 'VectorFile.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
