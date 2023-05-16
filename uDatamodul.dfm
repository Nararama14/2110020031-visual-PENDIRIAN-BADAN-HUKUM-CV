object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 488
  Width = 500
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2110020031'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\apk\visual 2\PENDIRIAN BADAN HUKUM CV\Win32\Debug\libmysql.dl' +
      'l'
    Left = 72
    Top = 16
  end
  object QDataPetugas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT*FROM login_admin ORDER BY nik ASC')
    Params = <>
    Left = 32
    Top = 104
    object QDataPetugasnik: TIntegerField
      DisplayLabel = 'ID PETUGAS'
      DisplayWidth = 10
      FieldName = 'nik'
      Required = True
    end
    object QDataPetugasnama_petugas: TWideStringField
      DisplayLabel = 'NAMA PETUGAS'
      DisplayWidth = 20
      FieldName = 'nama_petugas'
      Required = True
      Size = 100
    end
    object QDataPetugasuser_name: TWideStringField
      DisplayLabel = 'NAMA PENGGUNA'
      DisplayWidth = 20
      FieldName = 'user_name'
      Required = True
      Size = 15
    end
    object QDataPetugaspass: TWideStringField
      DisplayLabel = 'KATA SANDI'
      DisplayWidth = 10
      FieldName = 'pass'
      Required = True
      Size = 5
    end
  end
  object DSDataPetugas: TDataSource
    DataSet = QDataPetugas
    Left = 120
    Top = 104
  end
  object Qdatapemilik: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT*FROM pemilk ORDER BY kd_pemilik ASC')
    Params = <>
    Left = 32
    Top = 168
    object Qdatapemilikkd_pemilik: TIntegerField
      FieldName = 'kd_pemilik'
      Required = True
    end
    object Qdatapemiliknm_pemilik: TWideStringField
      FieldName = 'nm_pemilik'
      Required = True
      Size = 30
    end
    object Qdatapemilikjk: TWideStringField
      FieldName = 'jk'
      Required = True
      Size = 1
    end
    object Qdatapemilikalmt_pemilik: TWideStringField
      FieldName = 'almt_pemilik'
      Required = True
      Size = 30
    end
    object Qdatapemilikno_tlp: TWideStringField
      FieldName = 'no_tlp'
      Required = True
    end
  end
  object DSdatapemilik: TDataSource
    DataSet = Qdatapemilik
    Left = 120
    Top = 168
  end
  object Qnotaris: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT*FROM notaris ORDER BY kd_notaris ASC')
    Params = <>
    Left = 32
    Top = 232
    object Qnotariskd_notaris: TIntegerField
      FieldName = 'kd_notaris'
      Required = True
    end
    object Qnotarisnm_notaris: TWideStringField
      FieldName = 'nm_notaris'
      Required = True
      Size = 30
    end
    object Qnotarisjk: TWideStringField
      FieldName = 'jk'
      Required = True
      Size = 1
    end
    object Qnotarisalamat_notaris: TWideStringField
      FieldName = 'alamat_notaris'
      Required = True
      Size = 30
    end
    object Qnotarisno_tlp: TWideStringField
      FieldName = 'no_tlp'
      Required = True
    end
  end
  object DSnotaris: TDataSource
    DataSet = Qnotaris
    Left = 120
    Top = 232
  end
  object QCV: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT*FROM cv ORDER BY kd_cv ASC')
    Params = <>
    Properties.Strings = (
      'SELECT*FROM cv ORDER BY kd_cv ASC')
    Left = 32
    Top = 296
    object QCVkd_cv: TIntegerField
      FieldName = 'kd_cv'
      Required = True
    end
    object QCVnama_cv: TWideStringField
      FieldName = 'nama_cv'
      Required = True
      Size = 30
    end
    object QCValamat_cv: TWideStringField
      FieldName = 'alamat_cv'
      Required = True
      Size = 30
    end
    object QCVtgl_berdiri: TDateField
      FieldName = 'tgl_berdiri'
      Required = True
    end
    object QCVmodal: TWideStringField
      FieldName = 'modal'
      Required = True
      Size = 30
    end
    object QCVjenis_usaha: TWideStringField
      FieldName = 'jenis_usaha'
      Required = True
      Size = 30
    end
  end
  object DSCV: TDataSource
    DataSet = QCV
    Left = 120
    Top = 296
  end
end
