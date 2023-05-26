object Form3: TForm3
  Left = 277
  Top = 172
  Width = 845
  Height = 400
  Caption = 'Grafik'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 48
    Top = 32
    Width = 56
    Height = 16
    Caption = 'PENYAKIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 48
    Top = 72
    Width = 114
    Height = 16
    Caption = 'JUMLAH PENDERITA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object c1: TComboBox
    Left = 176
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'COVID 19'
      'FLU BIASA'
      'DEMAM'
      'RINDU')
  end
  object Edit1: TEdit
    Left = 176
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 120
    Top = 104
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = b1Click
  end
  object strngrd1: TStringGrid
    Left = 48
    Top = 136
    Width = 193
    Height = 120
    TabOrder = 3
  end
  object b2: TBitBtn
    Left = 48
    Top = 272
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 4
    OnClick = b2Click
  end
  object b3: TBitBtn
    Left = 136
    Top = 272
    Width = 75
    Height = 25
    Caption = 'ABORT'
    TabOrder = 5
  end
  object b4: TBitBtn
    Left = 224
    Top = 272
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 6
  end
  object cht1: TChart
    Left = 368
    Top = 56
    Width = 400
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      '')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 7
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
end
