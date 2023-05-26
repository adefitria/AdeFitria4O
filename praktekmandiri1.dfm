object Form5: TForm5
  Left = 285
  Top = 171
  Width = 538
  Height = 370
  Caption = 'Kalkulator Latihan'
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
    Top = 24
    Width = 62
    Height = 16
    Caption = 'INPUTAN 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 48
    Top = 56
    Width = 62
    Height = 16
    Caption = 'INPUTAN 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 296
    Top = 32
    Width = 97
    Height = 41
    Caption = 'PROSES SEMUA'
    TabOrder = 2
    OnClick = b1Click
  end
  object grp1: TGroupBox
    Left = 48
    Top = 112
    Width = 369
    Height = 177
    Caption = 'NILAI DIPROSES'
    TabOrder = 3
    object l3: TLabel
      Left = 16
      Top = 32
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object l4: TLabel
      Left = 16
      Top = 64
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object l5: TLabel
      Left = 16
      Top = 128
      Width = 56
      Height = 13
      Caption = 'HASIL BAGI'
    end
    object l6: TLabel
      Left = 16
      Top = 96
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object Ehtambah: TEdit
      Left = 120
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Ehkurang: TEdit
      Left = 120
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Ehkali: TEdit
      Left = 120
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Ehbagi: TEdit
      Left = 120
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object b2: TButton
      Left = 272
      Top = 32
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = b2Click
    end
    object b3: TButton
      Left = 272
      Top = 64
      Width = 75
      Height = 25
      Caption = '-'
      TabOrder = 5
      OnClick = b3Click
    end
    object b4: TButton
      Left = 272
      Top = 96
      Width = 75
      Height = 25
      Caption = 'X'
      TabOrder = 6
      OnClick = b4Click
    end
    object b5: TButton
      Left = 272
      Top = 128
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = b5Click
    end
  end
end
