program menu_utama;

uses
  Forms,
  main_menu in 'main_menu.pas' {Form1},
  Kalkulator in 'Kalkulator.pas' {Form2},
  Latihanmandirioperator in 'Latihanmandirioperator.pas' {Form3},
  Kondisional1 in 'Kondisional1.pas' {Form4},
  Kondisional2 in 'Kondisional2.pas' {Form5},
  GrafikStringgrid in 'GrafikStringgrid.pas' {Form6},
  Grafikrevisi in 'Grafikrevisi.pas' {Form7},
  Databaselatihan1 in 'Databaselatihan1.pas' {Form8},
  Tambahdatajadwal in 'Tambahdatajadwal.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
