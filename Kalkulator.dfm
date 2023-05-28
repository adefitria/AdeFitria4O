object Form2: TForm2
  Left = 371
  Top = 195
  Width = 517
  Height = 244
  Caption = 'Kalkulator'
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
    Left = 64
    Top = 40
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
    Left = 64
    Top = 80
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
    Left = 64
    Top = 136
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
    Left = 152
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edtnilai2: TEdit
    Left = 152
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edthasil: TEdit
    Left = 152
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object b1: TButton
    Left = 328
    Top = 40
    Width = 97
    Height = 41
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = b1Click
  end
  object b2: TButton
    Left = 328
    Top = 104
    Width = 97
    Height = 41
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = b2Click
  end
end
