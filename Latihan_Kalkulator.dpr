program Latihan_Kalkulator;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  grafik in 'grafik.pas' {Form3},
  Tgsmandiri3 in 'Tgsmandiri3.pas' {Form4},
  praktekmandiri1 in 'praktekmandiri1.pas' {Form5},
  Latihanmandiri2 in 'Latihanmandiri2.pas' {Form6},
  Tgsmandiri4 in 'Tgsmandiri4.pas' {Form7},
  Tgsmandiri4baru in 'Tgsmandiri4baru.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
