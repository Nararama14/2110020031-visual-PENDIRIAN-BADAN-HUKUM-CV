unit MasukanDataPemilik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm4 = class(TForm)
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
    Label7: TLabel;
    edpemilik: TEdit;
    ednama: TEdit;
    edalamat: TEdit;
    edtlpn: TEdit;
    cbJenisKelamin: TComboBox;
    procedure edpemilikKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
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
  Form4: TForm4;

implementation

{$R *.dfm}

uses uDatamodul;

procedure TForm4.Button1Click(Sender: TObject);
begin
  if trim(edpemilik.Text)='' then
    Begin
      beep;
      MessageDlg('KODE PEMILIK WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
      edpemilik.SetFocus;
    end else
    if Trim(ednama.Text)='' then
    begin
    beep;
        MessageDlg('NAMA PEMILIK WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        ednama.SetFocus;
    end  else
    if Trim(cbJenisKelamin.Text)='' then
    begin
    beep;
        MessageDlg('JENIS KELAMIN WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        cbJenisKelamin.SetFocus;
    end  else
    if Trim(edalamat.Text)='' then
    begin
    beep;
        MessageDlg('ALAMAT WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edalamat.SetFocus;
    end else
    if Trim(edtlpn.Text)='' then
    begin
    beep;
        MessageDlg('NO TELPON WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edtlpn.SetFocus;
    end else

    if DataModule1.Qdatapemilik.Locate('kd_pemilik',edpemilik.Text,[]) then
        begin
        beep;
        MessageDlg('ID Petugas Sudah Terdaftar!!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0);
        ednama.Text := DataModule1.Qdatapemiliknm_pemilik.AsString;
        cbJenisKelamin.Text := DataModule1.Qdatapemilikjk.AsString;
        edalamat.Text := DataModule1.Qdatapemilikalmt_pemilik.AsString;
        edtlpn.Text := DataModule1.Qdatapemilikno_tlp.AsString;
        end

        else
    begin
    with DataModule1 do
      begin
      Qdatapemilik.Append;
      Qdatapemilikkd_pemilik.AsString := edpemilik.Text;
      Qdatapemiliknm_pemilik.AsString := ednama.Text;
      Qdatapemilikjk.AsString := cbJenisKelamin.Text;
      Qdatapemilikalmt_pemilik.AsString := edalamat.text;
      Qdatapemilikno_tlp.AsString := edtlpn.text;
      Qdatapemilik.Post;
      MessageDlg('DATA BERHASIL DI SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      end;

    end;




end;

procedure TForm4.Button2Click(Sender: TObject);
begin

if (
   (Trim(edpemilik.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(cbJenisKelamin.Text)='') and
   (Trim(edalamat.Text)='') and
   (Trim(edtlpn.Text)='')
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
            Qdatapemilik.Edit;
            Qdatapemilikkd_pemilik.AsString := edpemilik.Text;
            Qdatapemiliknm_pemilik.AsString := ednama.Text;
            Qdatapemilikjk.AsString := cbJenisKelamin.Text;
            Qdatapemilikalmt_pemilik.AsString := edalamat.text;
            Qdatapemilikno_tlp.AsString := edtlpn.text;
            Qdatapemilik.Post;
            MessageDlg('DATA BERHASIL DI UBAH DAN SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            end;
        end;
      end;

end;

procedure TForm4.Button3Click(Sender: TObject);
begin

   if (
   (Trim(edpemilik.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(cbJenisKelamin.Text)='') and
   (Trim(edalamat.Text)='') and
   (Trim(edtlpn.Text)='')
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
            Qdatapemilik.Delete;
            MessageDlg('DATA BERHASIL DI HAPUS!!',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            edpemilik.Clear;
            ednama.Clear;
            cbJenisKelamin.Clear;
            edalamat.Clear;
            edtlpn.Clear;
            edpemilik.SetFocus;
            end;
        end;
      end;

end;

procedure TForm4.Button4Click(Sender: TObject);
begin

    edpemilik.Clear;
    ednama.Clear;
    cbJenisKelamin.Clear;
    edalamat.Clear;
    edtlpn.Clear;
    edpemilik.SetFocus;

end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin

      with Form4 do
      begin
      edpemilik.Text := DataModule1.Qdatapemilikkd_pemilik.AsString;
      ednama.Text := DataModule1.Qdatapemiliknm_pemilik.AsString;
      cbJenisKelamin.Text := DataModule1.Qdatapemilikjk.AsString;
      edalamat.Text := DataModule1.Qdatapemilikalmt_pemilik.AsString;
      edtlpn.Text := DataModule1.Qdatapemilikno_tlp.AsString;

      end;

end;

procedure TForm4.edpemilikKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    begin
        if sender=edpemilik then ednama.SetFocus;
        if sender=ednama then cbJenisKelamin.SetFocus;
        if sender=cbJenisKelamin then edalamat.SetFocus;
        if sender=edalamat then edtlpn.SetFocus;
        if sender=edtlpn then Button1.SetFocus;


    end;
end;

end.
