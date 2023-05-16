unit MasukanDataPetugas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edpetugas: TEdit;
    ednama: TEdit;
    edpengguna: TEdit;
    edkatasandi: TEdit;
    Label7: TLabel;
    edcariPetugas: TEdit;
    MainMenu1: TMainMenu;
    KELUAR1: TMenuItem;
    MasukanData1: TMenuItem;
    MasukanDataPetugas1: TMenuItem;
    MasukanDataPemilik1: TMenuItem;
    MasukanDataNotaris1: TMenuItem;
    MasukanDataCV1: TMenuItem;
    PencarianData1: TMenuItem;
    Laporan1: TMenuItem;
    Keluar2: TMenuItem;
    procedure TekanEnter(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure edcariPetugasChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses uDatamodul;

procedure TForm3.Button1Click(Sender: TObject);
begin
    if trim(edpetugas.Text)='' then
    Begin
      beep;
      MessageDlg('NIK PETUGAS WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
      edpetugas.SetFocus;
    end else
    if Trim(ednama.Text)='' then
    begin
    beep;
        MessageDlg('NAMA PETUGAS WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        ednama.SetFocus;
    end  else
    if Trim(edpengguna.Text)='' then
    begin
    beep;
        MessageDlg('NAMA PENGGUNA WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edpengguna.SetFocus;
    end  else
    if Trim(edkatasandi.Text)='' then
    begin
    beep;
        MessageDlg('KATA SANDI WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edkatasandi.SetFocus;
    end else

        if DataModule1.QDataPetugas.Locate('nik',edpetugas.Text,[]) then
        begin
        beep;
        MessageDlg('ID Petugas Sudah Terdaftar!!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0);
        ednama.Text := DataModule1.QDataPetugasnama_petugas.AsString;
        edpengguna.Text := DataModule1.QDataPetugasuser_name.AsString;
        edkatasandi.Text := DataModule1.QDataPetugaspass.AsString;


        end


    else
    begin
    with DataModule1 do
      begin
      QDataPetugas.Append;
      QDataPetugasnik.AsString := edpetugas.Text;
      QDataPetugaspass.AsString := edkatasandi.Text;
      QDataPetugasuser_name.AsString := edpengguna.Text;
      QDataPetugasnama_petugas.AsString := ednama.text;
      QDataPetugas.Post;
      MessageDlg('DATA BERHASIL DI SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      end;

    end;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   if (
   (Trim(edpetugas.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(edpengguna.Text)='') and
   (Trim(edkatasandi.Text)='')
   ) then
        begin
        beep;
        MessageDlg('Silahkan Pilih data Terlebih Dahulu', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0);
        exit;
        end else
      begin
        if MessageDlg('Apakah Anda Yakin Mengubah Data', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0)=mrOk then
        begin
          with DataModule1 do
            begin
            QDataPetugas.Edit;
            QDataPetugasnik.AsString := edpetugas.Text;
            QDataPetugaspass.AsString := edkatasandi.Text;
            QDataPetugasuser_name.AsString := edpengguna.Text;
            QDataPetugasnama_petugas.AsString := ednama.text;
            QDataPetugas.Post;
            MessageDlg('DATA BERHASIL DI UBAH DAN SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            end;
        end;
      end;

end;

procedure TForm3.Button3Click(Sender: TObject);
begin
   if (
   (Trim(edpetugas.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(edpengguna.Text)='') and
   (Trim(edkatasandi.Text)='')
   ) then
        begin
        beep;
        MessageDlg('Silahkan Pilih data Terlebih Dahulu', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0);
        exit;
        end else
      begin
        if MessageDlg('Apakah Anda Yakin Menghapus Data', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0)=mrOk then
        begin
          with DataModule1 do
            begin
            QDataPetugas.Delete;
            MessageDlg('DATA BERHASIL DI HAPUS!!',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            edpetugas.Clear;
            ednama.Clear;
            edpengguna.Clear;
            edkatasandi.Clear;
            edpetugas.SetFocus;
            end;
        end;
      end;



end;

procedure TForm3.Button4Click(Sender: TObject);
begin
    edpetugas.Clear;
    ednama.Clear;
    edpengguna.Clear;
    edkatasandi.Clear;
    edpetugas.SetFocus;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
 Close;
end;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
    with Form3 do
    begin
      edpetugas.Text := DataModule1.QDataPetugasnik.AsString;
      ednama.Text := DataModule1.QDataPetugasnama_petugas.AsString;
      edpengguna.Text := DataModule1.QDataPetugasuser_name.AsString;
      edkatasandi.Text := DataModule1.QDataPetugaspass.AsString;

    end;
end;

procedure TForm3.edcariPetugasChange(Sender: TObject);
begin
   with DataModule1 do
   begin
   QDataPetugas.SQL.Clear;
   QDataPetugas.SQL.Text := 'SELECT*FROM login_admin WHERE nama_petugas LIKE '+QuotedStr('%'+edcariPetugas.Text+'%');
   QDataPetugas.Open;
   end;

end;

procedure TForm3.TekanEnter(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        if sender=edpetugas then ednama.SetFocus;
        if sender=ednama then edpengguna.SetFocus;
        if sender=edpengguna then edkatasandi.SetFocus;
        if sender=edkatasandi then Button1.SetFocus;


    end;

end;

end.
