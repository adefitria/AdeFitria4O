object Form2: TForm2
  Left = 218
  Top = 151
  Width = 508
  Height = 360
  Caption = 'Kondisional'
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
    Left = 48
    Top = 128
    Width = 41
    Height = 16
    Caption = 'NILAI 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 48
    Top = 160
    Width = 41
    Height = 16
    Caption = 'NILAI 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 48
    Top = 192
    Width = 41
    Height = 16
    Caption = 'NILAI 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 304
    Top = 136
    Width = 39
    Height = 16
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 304
    Top = 168
    Width = 39
    Height = 16
    Caption = 'GRADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 48
    Top = 32
    Width = 385
    Height = 41
    Caption = 'Contoh Kondisional'
    TabOrder = 0
  end
  object Edtnilai1: TEdit
    Left = 112
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object Edtnilai2: TEdit
    Left = 112
    Top = 160
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object Edtnilai3: TEdit
    Left = 112
    Top = 192
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object Edtbobot1: TEdit
    Left = 200
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object Edtbobot2: TEdit
    Left = 200
    Top = 160
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object Edtbobot3: TEdit
    Left = 200
    Top = 192
    Width = 73
    Height = 21
    TabOrder = 6
  end
  object Edttotal: TEdit
    Left = 360
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object Edtgrade: TEdit
    Left = 360
    Top = 168
    Width = 73
    Height = 21
    TabOrder = 8
  end
  object b1: TButton
    Left = 112
    Top = 232
    Width = 75
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 9
    OnClick = b1Click
  end
  object b2: TButton
    Left = 200
    Top = 232
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = b2Click
  end
  object b3: TButton
    Left = 360
    Top = 232
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 11
    OnClick = b3Click
  end
  object pnl2: TPanel
    Left = 112
    Top = 96
    Width = 73
    Height = 25
    Caption = 'Nilai'
    TabOrder = 12
  end
  object pnl3: TPanel
    Left = 200
    Top = 96
    Width = 81
    Height = 25
    Caption = 'Bobot'
    TabOrder = 13
  end
end
