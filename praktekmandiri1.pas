unit praktekmandiri1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
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
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.b2Click(Sender: TObject);
begin
Ehtambah.Text:=IntToStr(StrToInt(Edit1.Text)+strtoint(Edit2.Text));
end;

procedure TForm5.b3Click(Sender: TObject);
begin
Ehkurang.Text:=IntToStr(StrToInt(Edit1.Text)-strtoint(Edit2.Text));
end;

procedure TForm5.b4Click(Sender: TObject);
begin
Ehkali.Text:=IntToStr(StrToInt(Edit1.Text)*strtoint(Edit2.Text));
end;

procedure TForm5.b1Click(Sender: TObject);
begin
Ehtambah.Text:=IntToStr(StrToInt(Edit1.Text)+strtoint(Edit2.Text));
Ehkurang.Text:=IntToStr(StrToInt(Edit1.Text)-strtoint(Edit2.Text));
Ehkali.Text:=IntToStr(StrToInt(Edit1.Text)*strtoint(Edit2.Text));
Ehbagi.Text:=FloatToStr(StrToFloat(Edit1.Text)/strtofloat(Edit2.Text));
end;

procedure TForm5.b5Click(Sender: TObject);
begin
Ehbagi.Text:=FloatToStr(StrToFloat(Edit1.Text)/strtofloat(Edit2.Text));
end;

end.
