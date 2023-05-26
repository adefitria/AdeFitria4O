unit grafik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Buttons, Grids,
  StdCtrls;

type
  TForm3 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    c1: TComboBox;
    Edit1: TEdit;
    b1: TButton;
    strngrd1: TStringGrid;
    b2: TBitBtn;
    b3: TBitBtn;
    b4: TBitBtn;
    cht1: TChart;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
strngrd1.Cells[0,0]:='JENIS PENYAKIT';
strngrd1.Cells[0,1]:='COVID 19';
strngrd1.Cells[0,2]:='FLU BIASA';
strngrd1.Cells[0,3]:='DEMAM';
strngrd1.Cells[0,4]:='RINDU';
strngrd1.Cells[1,0]:='JUMLAH';
cht1.Title.Text.add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm3.b2Click(Sender: TObject);
var i: integer;
begin
for i:=1 to strngrd1.rowcount-1 do
cht1.Series[0].Add(strtofloat(strngrd1.cells[1,i]),strngrd1.cells[0,i]);
end;

procedure TForm3.b1Click(Sender: TObject);
begin
strngrd1.Cells[1,c1.ItemIndex+1]:=Edit1.Text;
end;

end.
