object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 576
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -8
    Top = -6
    Width = 878
    Height = 96
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 232
      Top = 28
      Width = 435
      Height = 24
      Caption = 'REGISTER PENDIRIAN BADAN HUKUM CV '
    end
    object Label2: TLabel
      Left = 280
      Top = 58
      Width = 303
      Height = 24
      Caption = 'PADA PENGADILAN NEGEGRI'
    end
  end
  object Panel3: TPanel
    Left = 46
    Top = 106
    Width = 787
    Height = 231
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 56
      Top = 32
      Width = 84
      Height = 24
      Caption = 'Kode CV'
    end
    object Label4: TLabel
      Left = 56
      Top = 80
      Width = 89
      Height = 24
      Caption = 'Nama CV'
    end
    object Label5: TLabel
      Left = 56
      Top = 128
      Width = 101
      Height = 24
      Caption = 'Alamat CV'
    end
    object Label6: TLabel
      Left = 440
      Top = 32
      Width = 57
      Height = 24
      Caption = 'Modal'
    end
    object Label7: TLabel
      Left = 440
      Top = 80
      Width = 138
      Height = 24
      Caption = 'Tanggal Berdiri'
    end
    object Label8: TLabel
      Left = 440
      Top = 128
      Width = 106
      Height = 24
      Caption = 'Jenis Usaha'
    end
    object ednama: TEdit
      Left = 226
      Top = 77
      Width = 185
      Height = 32
      TabOrder = 0
      OnKeyPress = edCVKeyPress
    end
    object edCV: TEdit
      Left = 226
      Top = 29
      Width = 185
      Height = 32
      TabOrder = 1
      OnKeyPress = edCVKeyPress
    end
    object edmodal: TEdit
      Left = 592
      Top = 29
      Width = 185
      Height = 32
      TabOrder = 2
      OnKeyPress = edCVKeyPress
    end
    object edalamat: TEdit
      Left = 226
      Top = 128
      Width = 185
      Height = 32
      TabOrder = 3
      OnKeyPress = edCVKeyPress
    end
    object edjenis: TEdit
      Left = 592
      Top = 128
      Width = 185
      Height = 32
      TabOrder = 4
      OnKeyPress = edCVKeyPress
    end
    object Dtberdiri: TDateTimePicker
      Left = 592
      Top = 80
      Width = 185
      Height = 32
      Date = 45062.000000000000000000
      Time = 0.032042916667705870
      TabOrder = 5
      OnKeyPress = edCVKeyPress
    end
  end
  object Button1: TButton
    Left = 46
    Top = 352
    Width = 89
    Height = 41
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 166
    Top = 352
    Width = 89
    Height = 41
    Caption = 'Ubah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 286
    Top = 352
    Width = 89
    Height = 41
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 472
    Top = 352
    Width = 177
    Height = 41
    Caption = 'Bersihkan Text'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 696
    Top = 352
    Width = 137
    Height = 41
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 46
    Top = 408
    Width = 787
    Height = 156
    DataSource = DataModule1.DSCV
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 40
    object KELUAR1: TMenuItem
      Caption = 'MENU'
    end
    object MasukanData1: TMenuItem
      Caption = 'Masukan Data'
      object MasukanDataPetugas1: TMenuItem
        Caption = 'Masukan Data Petugas'
      end
      object MasukanDataPemilik1: TMenuItem
        Caption = 'Masukan Data Pemilik'
      end
      object MasukanDataNotaris1: TMenuItem
        Caption = 'Masukan Data Notaris'
      end
      object MasukanDataCV1: TMenuItem
        Caption = 'Masukan Data CV'
      end
    end
    object PencarianData1: TMenuItem
      Caption = 'Pencarian Data'
    end
    object Laporan1: TMenuItem
      Caption = 'Laporan'
    end
    object Keluar2: TMenuItem
      Caption = 'Keluar'
    end
  end
end
