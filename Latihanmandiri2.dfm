object Form6: TForm6
  Left = 255
  Top = 171
  Width = 575
  Height = 395
  Caption = 'Form6'
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
    Top = 136
    Width = 100
    Height = 16
    Caption = 'NILAI KEHADIRAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 48
    Top = 168
    Width = 74
    Height = 16
    Caption = 'NILAI TUGAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 48
    Top = 200
    Width = 58
    Height = 16
    Caption = 'NILAI UTS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 360
    Top = 144
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
    Left = 360
    Top = 176
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
  object l6: TLabel
    Left = 48
    Top = 232
    Width = 78
    Height = 16
    Caption = 'NILAI HARIAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l7: TLabel
    Left = 48
    Top = 264
    Width = 58
    Height = 16
    Caption = 'NILAI UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 360
    Top = 208
    Width = 18
    Height = 16
    Caption = 'Ket'
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
    Caption = 'CEK NILAI BOBOT SISWA'
    TabOrder = 0
  end
  object Edtkehadiran: TEdit
    Left = 168
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object Edttugas: TEdit
    Left = 168
    Top = 168
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object Edtuts: TEdit
    Left = 168
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object Edtbobot1: TEdit
    Left = 256
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object Edtbobot2: TEdit
    Left = 256
    Top = 168
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object Edtbobot3: TEdit
    Left = 256
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 6
  end
  object Edttotal: TEdit
    Left = 416
    Top = 144
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object Edtgrade: TEdit
    Left = 416
    Top = 176
    Width = 73
    Height = 21
    TabOrder = 8
  end
  object b1: TButton
    Left = 168
    Top = 296
    Width = 75
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 9
    OnClick = b1Click
  end
  object b2: TButton
    Left = 256
    Top = 296
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
  end
  object b3: TButton
    Left = 416
    Top = 240
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 11
  end
  object pnl2: TPanel
    Left = 168
    Top = 104
    Width = 73
    Height = 25
    Caption = 'Nilai'
    TabOrder = 12
  end
  object pnl3: TPanel
    Left = 256
    Top = 104
    Width = 81
    Height = 25
    Caption = 'Bobot'
    TabOrder = 13
  end
  object Edtharian: TEdit
    Left = 168
    Top = 232
    Width = 73
    Height = 21
    TabOrder = 14
  end
  object Edtbobot4: TEdit
    Left = 256
    Top = 232
    Width = 73
    Height = 21
    TabOrder = 15
  end
  object Edtuas: TEdit
    Left = 168
    Top = 264
    Width = 73
    Height = 21
    TabOrder = 16
  end
  object Edtbobot5: TEdit
    Left = 256
    Top = 264
    Width = 73
    Height = 21
    TabOrder = 17
  end
  object Edtket: TEdit
    Left = 416
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 18
  end
end
