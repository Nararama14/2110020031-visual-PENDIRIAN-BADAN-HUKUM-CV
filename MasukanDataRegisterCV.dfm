object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 732
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -8
    Top = -6
    Width = 977
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
    Left = 8
    Top = 96
    Width = 905
    Height = 375
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
      Left = 51
      Top = 32
      Width = 105
      Height = 24
      Caption = 'No Register'
    end
    object Label4: TLabel
      Left = 51
      Top = 80
      Width = 84
      Height = 24
      Caption = 'Kode CV'
    end
    object Label5: TLabel
      Left = 51
      Top = 128
      Width = 89
      Height = 24
      Caption = 'Nama CV'
    end
    object Label6: TLabel
      Left = 51
      Top = 274
      Width = 57
      Height = 24
      Caption = 'Modal'
    end
    object Label7: TLabel
      Left = 51
      Top = 312
      Width = 138
      Height = 24
      Caption = 'Tanggal Berdiri'
    end
    object Label8: TLabel
      Left = 51
      Top = 228
      Width = 106
      Height = 24
      Caption = 'Jenis Usaha'
    end
    object Label9: TLabel
      Left = 51
      Top = 175
      Width = 101
      Height = 24
      Caption = 'Alamat CV'
    end
    object Label10: TLabel
      Left = 446
      Top = 32
      Width = 121
      Height = 24
      Caption = 'Kode Pemilik'
    end
    object Label11: TLabel
      Left = 446
      Top = 80
      Width = 126
      Height = 24
      Caption = 'Nama Pemilik'
    end
    object Label12: TLabel
      Left = 446
      Top = 128
      Width = 119
      Height = 24
      Caption = 'Kode Notaris'
    end
    object Label13: TLabel
      Left = 446
      Top = 175
      Width = 124
      Height = 24
      Caption = 'Nama Notaris'
    end
    object Label14: TLabel
      Left = 446
      Top = 228
      Width = 150
      Height = 24
      Caption = 'Tanggal Register'
    end
    object Label15: TLabel
      Left = 446
      Top = 274
      Width = 133
      Height = 24
      Caption = 'Jangka Berdiri'
    end
    object Label16: TLabel
      Left = 446
      Top = 312
      Width = 107
      Height = 24
      Caption = 'Keterangan'
    end
    object Edit2: TEdit
      Left = 226
      Top = 77
      Width = 185
      Height = 32
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 226
      Top = 29
      Width = 185
      Height = 32
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 592
      Top = 77
      Width = 185
      Height = 32
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 592
      Top = 29
      Width = 185
      Height = 32
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 226
      Top = 125
      Width = 185
      Height = 32
      TabOrder = 4
      Text = 'Edit3'
    end
  end
  object Button1: TButton
    Left = 30
    Top = 504
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
  end
  object Button2: TButton
    Left = 150
    Top = 504
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
  end
  object Button3: TButton
    Left = 270
    Top = 504
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
  end
  object Button4: TButton
    Left = 576
    Top = 504
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
  end
  object Button5: TButton
    Left = 800
    Top = 504
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
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 568
    Width = 905
    Height = 156
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
