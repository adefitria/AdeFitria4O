unit GrafikStringgrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons,
  Grids;

type
  TForm6 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    Edit1: TEdit;
    c1: TComboBox;
    strngrd1: TStringGrid;
    b1: TBitBtn;
    b2: TBitBtn;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    c2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
strngrd1.RowCount:=1;
strngrd1.ColCount:=4;
strngrd1.Cells[0,0]:='NO';
strngrd1.Cells[1,0]:='JUMLAH TERDAFTAR';
strngrd1.Cells[2,0]:='FAKULTAS';
strngrd1.Cells[3,0]:='TAHUN ANGKATAN';
strngrd1.ColWidths[0]:=20;
strngrd1.ColWidths[1]:=70;
strngrd1.ColWidths[2]:=170;
strngrd1.ColWidths[3]:=100;
end;

procedure TForm6.b1Click(Sender: TObject);
begin
strngrd1.RowCount := strngrd1.RowCount+1;
strngrd1.Cells[0,strngrd1.RowCount -1] := IntToStr(strngrd1.RowCount -1);
strngrd1.Cells[1,strngrd1.RowCount -1] := Edit1.Text;
strngrd1.Cells[2,strngrd1.RowCount -1] := c1.Text;
strngrd1.Cells[3,strngrd1.RowCount -1] := c2.Text;
end;

procedure TForm6.b2Click(Sender: TObject);
var
i:Integer;
begin
for i:=1 to strngrd1.rowcount-1 do
begin
cht1.Series[0].Add(StrToFloat(strngrd1.Cells[1,i]),strngrd1.Cells[2,i]);
end;
end;

end.
