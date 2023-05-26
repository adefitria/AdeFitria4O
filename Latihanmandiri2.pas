unit Latihanmandiri2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    pnl1: TPanel;
    Edtkehadiran: TEdit;
    Edttugas: TEdit;
    Edtuts: TEdit;
    Edtbobot1: TEdit;
    Edtbobot2: TEdit;
    Edtbobot3: TEdit;
    Edttotal: TEdit;
    Edtgrade: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    pnl2: TPanel;
    pnl3: TPanel;
    Edtharian: TEdit;
    Edtbobot4: TEdit;
    Edtuas: TEdit;
    Edtbobot5: TEdit;
    Edtket: TEdit;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.b1Click(Sender: TObject);
var
  nil1, nil2, nil3, nil4, nil5, hasil : real ;
  b1, b2, b3, b4, b5 : real;
  grade, ket :string;
begin
  //berfungsi untuk mengambil data nilai
    nil1 := strtofloat(Edtkehadiran.Text);
    nil2 := strtofloat(Edttugas.Text);
    nil3 := strtofloat(Edtuts.Text);
    nil4 := strtofloat(Edtharian.Text);
    nil5 := strtofloat(Edtuas.Text);
  //mengambil pesan data bobot
    b1 := strtofloat(Edtbobot1.Text)/100;
    b2 := strtofloat(Edtbobot2.Text)/100;
    b3 := strtofloat(Edtbobot3.Text)/100;
    b4 := strtofloat(Edtbobot4.Text)/100;
    b5 := strtofloat(Edtbobot5.Text)/100;
  //menghitung nilai akhir
    hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;
  //menentukan grade nilai
    if (hasil >= 80) then
    grade:='A'
    else
    if (hasil >= 70) then
    grade :='B'
    else
    if (hasil >= 60) then
    grade := 'C'
    else
    if (hasil >= 50) then
    grade :='D'
    else
    grade :='E';
  //menentukan keterangan
    if ((grade = 'A')or(grade='B')or(grade='C')) then
    ket:='LULUS'
    else
    ket:='TIDAK LULUS';
  //Hasil dari proses....
    Edttotal.Text := floattostr(hasil);
    Edtgrade.Text := grade;
    Edtket.Text := ket;
end;

end.
