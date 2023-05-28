unit Latihanmandirioperator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b1: TButton;
    grp1: TGroupBox;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    Ehtambah: TEdit;
    Ehkurang: TEdit;
    Ehkali: TEdit;
    Ehbagi: TEdit;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.b1Click(Sender: TObject);
begin
ehtambah.Text:= IntToStr(StrToInt(Edit1.Text)+strtoint(Edit2.Text));
ehkurang.Text:= IntToStr(StrToInt(Edit1.Text)-strtoint(Edit2.Text));
ehkali.Text:= IntToStr(StrToInt(Edit1.Text)*strtoint(Edit2.Text));
ehbagi.Text:= FloatToStr(StrToFloat(Edit1.Text)/strtoFloat(Edit2.Text));
end;

procedure TForm3.b2Click(Sender: TObject);
begin
   ehtambah.Text:= IntToStr(StrToInt(Edit1.Text)+strtoint(Edit2.Text));
end;

procedure TForm3.b3Click(Sender: TObject);
begin
   ehkurang.Text:= IntToStr(StrToInt(Edit1.Text)-strtoint(Edit2.Text));
end;

procedure TForm3.b4Click(Sender: TObject);
begin
   ehkali.Text:= IntToStr(StrToInt(Edit1.Text)*strtoint(Edit2.Text));
end;

procedure TForm3.b5Click(Sender: TObject);
begin
   ehbagi.Text:= FloatToStr(StrToFloat(Edit1.Text)/strtoFloat(Edit2.Text));
end;

end.
