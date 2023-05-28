unit Tambahdatajadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TForm9 = class(TForm)
    l1: TLabel;
    grp1: TGroupBox;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    c1: TComboBox;
    dtp1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    b1: TBitBtn;
    b2: TBitBtn;
    b3: TBitBtn;
    b4: TBitBtn;
    dg1: TDBGrid;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure bersih;
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  updt:string;

implementation

uses Databaselatihan1;

{$R *.dfm}

procedure TForm9.b1Click(Sender: TObject);
var
a:Integer;
begin
  if (Edit1.Text='') or (Edit1.Text='00.00') or (Edit2.Text='') or (Edit2.Text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (C1.Text='') or (C1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
  begin
    ShowMessage('INPUTAN RUANGAN ATAU MATA KULIAH MASIH BELUM SESUAI');
  end else
  if (Edit5.Text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
  begin
    ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
  end else
  if (Form8.qry1.Locate('hari',C1.Text,[])) and (Form8.qry1.Locate('jam_mulai',Edit1.Text,[])) then //VALIDASI MEMBANDINGKAN DATA INPUTAN DENGAN DATA DI TABLE
  begin
    ShowMessage('DATA SUDAH ADA DI DALAM SISTEM');
    Edit1.SetFocus;
  end else
  begin   //KODE SIMPAN
    a:=Form8.qry1.RecordCount+1;
  with Form8.qry1 do  //KODE SIMPAN
  begin
      SQL.Clear;
      SQL.Add('insert into jadwal_table values("'+inttostr(a)+'","'+Edit1.Text+'","'+Edit2.Text+'","'+C1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
      ExecSQL;
      bersih; //PROCEDURE BERSIH
      ShowMessage('DATA BERHASIL DISIMPAN');

  end;
  end;
end;
procedure TForm9.bersih;
begin
Edit1.Text :='00.00';
Edit2.Text :='00.00';
C1.Text :='----PILIH HARI----';
Edit3.Text :='-';
Edit4.Text :='-';
Edit5.Text :='-';
Edit6.Text :='0';

Form8.qry1.SQL.Clear;
Form8.qry1.SQL.Add('select * from jadwal_table');
Form8.qry1.Open;
dg1.Columns[0].Width:=30;
dg1.Columns[3].Width:=90;
dg1.Columns[5].Width:=50;
dg1.Columns[6].Width:=110;
dg1.Columns[7].Width:=90;
b1.Enabled:=True;
b2.Enabled:=False;
b3.Enabled:=False;
end;


procedure TForm9.b2Click(Sender: TObject);
begin
  if (Edit1.Text='') or (Edit1.Text='00.00') or (Edit2.Text='') or (Edit2.Text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (C1.Text='') or (C1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
  begin
    ShowMessage('INPUTAN RUANGAN ATAU MATA KULIAH MASIH BELUM SESUAI');
  end else
  if (Edit5.Text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
  begin
    ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
  end else
  if (Edit1.Text= Form8.qry1.Fields[1].AsString) and (C1.Text= Form8.qry1.Fields[3].AsString)then   //perbandingan dari inputan = table
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
  end else
  begin
    //KODE UPDATE
    with Form8.qry1 do
    begin
      SQL.Clear;
      SQL.Add('update jadwal_table set jam_mulai="'+Edit1.Text+'",jam_akhir="'+Edit2.Text+'" where id="'+updt+'"');
      ExecSQL;
      bersih; //procedure bersih
      ShowMessage('DATA BERHASIL DIUPDATE');
    end;
  end;
end;

procedure TForm9.b3Click(Sender: TObject);
begin
if (Edit1.Text='') or (Edit1.Text='00.00') or (Edit2.Text='') or (Edit2.Text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (C1.Text='') or (C1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
  begin
    ShowMessage('INPUTAN RUANGAN ATAU MATA KULIAH MASIH BELUM SESUAI');
  end else
  if (Edit5.Text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
  begin
    ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
  end else
  begin
    //KODE DELETE
    if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?', mtWarning,[mbYes,mbNo],0)=mryes then
    begin
      with Form8.qry1 do
      begin
        SQL.Clear;
        SQL.Add('delete from jadwal_table where no="'+updt+'"');
        ExecSQL;
        bersih; //procedure bersih
        ShowMessage('DATA BERHASIL DIIHAPUS');
        end;
    end else
    begin
      ShowMessage('DATA BATAL DIHAPUS!');
    end;
  end;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TForm9.b4Click(Sender: TObject);
begin
bersih;
end;

procedure TForm9.dg1CellClick(Column: TColumn);
begin
try
  updt:=Form8.qry1.Fields[0].AsString;
  Edit1.Text:=Form8.qry1.Fields[1].AsString;
  Edit2.Text:=Form8.qry1.Fields[2].AsString;
  C1.Text:=Form8.qry1.Fields[3].AsString;
  dtp1.Date:=Form8.qry1.Fields[4].AsDateTime;
  Edit3.Text:=Form8.qry1.Fields[5].AsString;
  Edit4.Text:=Form8.qry1.Fields[6].AsString;
  Edit5.Text:=Form8.qry1.Fields[7].AsString;
  Edit6.Text:=Form8.qry1.Fields[8].AsString;

  B2.Enabled:=True;
  B3.Enabled:=True;
  B1.Enabled:=False;
except
  //kosong
end;
end;


end.
