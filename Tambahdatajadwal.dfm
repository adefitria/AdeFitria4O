object Form9: TForm9
  Left = 427
  Top = 44
  Width = 628
  Height = 734
  Caption = 'Tambah data jadwal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 88
    Top = 24
    Width = 363
    Height = 19
    Caption = 'TAMBAH DATA JADWAL PELAJARAN PRAKTIKUM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 24
    Top = 64
    Width = 521
    Height = 361
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object l2: TLabel
      Left = 32
      Top = 32
      Width = 52
      Height = 13
      Caption = 'JAM AWAL'
    end
    object l3: TLabel
      Left = 288
      Top = 32
      Width = 54
      Height = 13
      Caption = 'JAM AKHIR'
    end
    object l4: TLabel
      Left = 32
      Top = 64
      Width = 99
      Height = 13
      Caption = 'HARI PELAKSANAAN'
    end
    object l5: TLabel
      Left = 32
      Top = 104
      Width = 46
      Height = 13
      Caption = 'TANGGAL'
    end
    object l6: TLabel
      Left = 32
      Top = 136
      Width = 49
      Height = 13
      Caption = 'RUANGAN'
    end
    object l7: TLabel
      Left = 32
      Top = 168
      Width = 67
      Height = 13
      Caption = 'MATA KULIAH'
    end
    object l8: TLabel
      Left = 32
      Top = 200
      Width = 30
      Height = 13
      Caption = 'KELAS'
    end
    object l9: TLabel
      Left = 32
      Top = 232
      Width = 67
      Height = 13
      Caption = 'TOTAL HADIR'
    end
    object Edit1: TEdit
      Left = 168
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '00.00'
    end
    object Edit2: TEdit
      Left = 368
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '00.00'
    end
    object c1: TComboBox
      Left = 168
      Top = 56
      Width = 289
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '----PILIH HARI----'
      Items.Strings = (
        'SENIN'
        'SELASA'
        'RABU'
        'KAMIS'
        'JUM'#39'AT'
        'SABTU'
        'MINGGU')
    end
    object dtp1: TDateTimePicker
      Left = 168
      Top = 96
      Width = 289
      Height = 21
      Date = 45057.805374386570000000
      Time = 45057.805374386570000000
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 168
      Top = 128
      Width = 289
      Height = 21
      TabOrder = 4
      Text = '-'
    end
    object Edit4: TEdit
      Left = 168
      Top = 160
      Width = 289
      Height = 21
      TabOrder = 5
      Text = '-'
    end
    object Edit5: TEdit
      Left = 168
      Top = 192
      Width = 289
      Height = 21
      TabOrder = 6
      Text = '-'
    end
    object Edit6: TEdit
      Left = 168
      Top = 224
      Width = 289
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object b1: TBitBtn
      Left = 120
      Top = 280
      Width = 81
      Height = 57
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = b1Click
    end
    object b2: TBitBtn
      Left = 208
      Top = 280
      Width = 81
      Height = 57
      Caption = 'EDIT'
      TabOrder = 9
      OnClick = b2Click
    end
    object b3: TBitBtn
      Left = 296
      Top = 280
      Width = 81
      Height = 57
      Caption = 'HAPUS'
      TabOrder = 10
      OnClick = b3Click
    end
    object b4: TBitBtn
      Left = 384
      Top = 280
      Width = 81
      Height = 57
      Caption = 'BATAL'
      TabOrder = 11
      OnClick = b4Click
    end
  end
  object dg1: TDBGrid
    Left = 24
    Top = 432
    Width = 521
    Height = 181
    DataSource = Form8.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
end
