object Form1: TForm1
  Left = 213
  Top = 146
  Width = 499
  Height = 242
  Caption = 'Kalulator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 80
    Top = 56
    Width = 35
    Height = 16
    Caption = 'Nilai 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 80
    Top = 96
    Width = 35
    Height = 16
    Caption = 'Nilai 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 80
    Top = 152
    Width = 27
    Height = 16
    Caption = 'Hasil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edtnilai1: TEdit
    Left = 168
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edtnilai2: TEdit
    Left = 168
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edthasil: TEdit
    Left = 168
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object b1: TButton
    Left = 344
    Top = 56
    Width = 97
    Height = 41
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = b1Click
  end
  object b2: TButton
    Left = 344
    Top = 120
    Width = 97
    Height = 41
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = b2Click
  end
end
