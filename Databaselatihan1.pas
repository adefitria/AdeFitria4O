unit Databaselatihan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids,
  DBGrids, StdCtrls, Buttons, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    b1: TBitBtn;
    dg1: TDBGrid;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    brsrsSeries2: TBarSeries;
    b3: TButton;
    b4: TButton;
    b2: TBitBtn;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    qry2: TADOQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    frxrprt2: TfrxReport;
    frxdbdtst2: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure frxrprt1ClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
uses Tambahdatajadwal;

{$R *.dfm}

procedure TForm8.FormShow(Sender: TObject);
begin
dg1.Columns[0].Width:=30;
dg1.Columns[1].Width:=50;
dg1.Columns[2].Width:=50;
dg1.Columns[3].Width:=90;
dg1.Columns[4].Width:=60;
dg1.Columns[5].Width:=60;
dg1.Columns[6].Width:=110;
dg1.Columns[7].Width:=80;
cht1.Title.Text.add('Grafik Kehadiran Praktikum');
end;

procedure TForm8.b1Click(Sender: TObject);
var
  i : Integer;
begin
qry2.SQL.Clear;
qry2.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
qry2.Open;

for i:=1 to qry2.RecordCount do
begin
cht1.Series[0].Add(StrToInt(qry2.fieldbyname('total_siswa').AsString),qry2.fieldbyname('nama_kelas').AsString);
qry2.Next;
end;
end;

procedure TForm8.b2Click(Sender: TObject);
begin
qry1.SQL.clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;

dg1.Columns[0].Width:=30;
dg1.Columns[1].Width:=50;
dg1.Columns[2].Width:=50;
dg1.Columns[3].Width:=90;
dg1.Columns[4].Width:=60;
dg1.Columns[5].Width:=60;
dg1.Columns[6].Width:=110;
dg1.Columns[7].Width:=80;
end;

procedure TForm8.b3Click(Sender: TObject);
begin
frxrprt1.showreport();
end;

procedure TForm8.frxrprt1ClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
   if view.Name ='Memo7' then
   begin
     qry2.SQL.clear;
     qry2.SQL.add('select * from jadwal_table where kelas="'+view.tagstr+'"');
     qry2.Open;

     frxrprt2.showreport();
   end;
end;

procedure TForm8.b4Click(Sender: TObject);
begin
  form9.showmodal;
end;

end.
