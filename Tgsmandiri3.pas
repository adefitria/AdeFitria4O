unit Tgsmandiri3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons,
  Grids;

type
  TForm4 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    c1: TComboBox;
    strngrd1: TStringGrid;
    b1: TBitBtn;
    b2: TBitBtn;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
strngrd1.Cells[0,0]:='NO';
strngrd1.Cells[1,0]:='NIM';
strngrd1.Cells[2,0]:='NAMA MAHASISWA';
strngrd1.Cells[3,0]:='TAHUN ANGKATAN';
cht1.Title.Text.add('GRAFIK MAHASISWA');
end;

procedure TForm4.b1Click(Sender: TObject);
begin
strngrd1.Cells[1,c1.ItemIndex+1]:=Edit1.Text;
strngrd1.Cells[2,c1.ItemIndex+1]:=Edit2.Text;
strngrd1.Cells[3,c1.ItemIndex+1]:=C1.Text;
end;

procedure TForm4.b2Click(Sender: TObject);
var i: integer;
begin
for i:=1 to strngrd1.rowcount-1 do
cht1.Series[0].Add(strtofloat(strngrd1.cells[1,i]),strngrd1.cells[0,i]);
end;

end.
