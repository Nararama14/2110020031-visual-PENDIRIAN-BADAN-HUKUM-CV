unit MasukanDataNotaris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm5 = class(TForm)
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
    ednama: TEdit;
    ednotaris: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtlp: TEdit;
    edalamat: TEdit;
    cbjk: TComboBox;
    procedure ednotarisKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Form5: TForm5;

implementation

{$R *.dfm}

uses uDatamodul;

procedure TForm5.Button1Click(Sender: TObject);
begin

    if trim(ednotaris.Text)='' then
    Begin
      beep;
      MessageDlg('KODE NOTARIS WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
      ednotaris.SetFocus;
    end else
    if Trim(ednama.Text)='' then
    begin
    beep;
        MessageDlg('NAMA NOTARIS WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        ednama.SetFocus;
    end  else
    if Trim(cbjk.Text)='' then
    begin
    beep;
        MessageDlg('JENIS KELAMIN WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        cbjk.SetFocus;
    end  else
    if Trim(edalamat.Text)='' then
    begin
    beep;
        MessageDlg('ALAMAT WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edalamat.SetFocus;
    end else
    if Trim(edtlp.Text)='' then
    begin
    beep;
        MessageDlg('NO TELPON WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edtlp.SetFocus;
    end else

    if DataModule1.Qnotaris.Locate('kd_notaris',ednotaris.Text,[]) then
        begin
        beep;
        MessageDlg('KODE NOTARIS Sudah Terdaftar!!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0);
        ednama.Text := DataModule1.Qnotarisnm_notaris.AsString;
        cbjk.Text := DataModule1.Qnotarisjk.AsString;
        edalamat.Text := DataModule1.Qnotarisalamat_notaris.AsString;
        edtlp.Text := DataModule1.Qnotarisno_tlp.AsString;
        end

        else
    begin
    with DataModule1 do
      begin
      Qnotaris.Append;
      Qnotariskd_notaris.AsString := ednotaris.Text;
      Qnotarisnm_notaris.AsString := ednama.Text;
      Qnotarisjk.AsString := cbjk.Text;
      Qnotarisalamat_notaris.AsString := edalamat.text;
      Qnotarisno_tlp.AsString := edtlp.text;
      Qnotaris.Post;
      MessageDlg('DATA BERHASIL DI SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      end;

    end;

end;

procedure TForm5.Button2Click(Sender: TObject);
begin

  if (
   (Trim(ednotaris.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(cbjk.Text)='') and
   (Trim(edalamat.Text)='') and
   (Trim(edtlp.Text)='')
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
            Qnotaris.Edit;
            Qnotariskd_notaris.AsString := ednotaris.Text;
            Qnotarisnm_notaris.AsString := ednama.Text;
            Qnotarisjk.AsString := cbjk.Text;
            Qnotarisalamat_notaris.AsString := edalamat.text;
            Qnotarisno_tlp.AsString := edtlp.text;
            Qnotaris.Post;
            MessageDlg('DATA BERHASIL DI UBAH DAN SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            end;
        end;
      end;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin

  if (
   (Trim(ednotaris.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(cbjk.Text)='') and
   (Trim(edalamat.Text)='') and
   (Trim(edtlp.Text)='')
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
            Qnotaris.Delete;
            MessageDlg('DATA BERHASIL DI HAPUS!!',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            ednotaris.Clear;
            ednama.Clear;
            cbjk.Clear;
            edalamat.Clear;
            edtlp.Clear;
            ednotaris.SetFocus;
            end;
        end;
      end;

end;

procedure TForm5.Button4Click(Sender: TObject);
begin

            ednotaris.Clear;
            ednama.Clear;
            cbjk.Clear;
            edalamat.Clear;
            edtlp.Clear;
            ednotaris.SetFocus;

end;

procedure TForm5.Button5Click(Sender: TObject);
begin
 Close;
end;

procedure TForm5.DBGrid1DblClick(Sender: TObject);
begin

      with Form5 do
      begin
      ednotaris.Text := DataModule1.Qnotariskd_notaris.AsString;
      ednama.Text := DataModule1.Qnotarisnm_notaris.AsString;
      cbjk.Text := DataModule1.Qnotarisjk.AsString;
      edalamat.Text := DataModule1.Qnotarisalamat_notaris.AsString;
      edtlp.Text := DataModule1.Qnotarisno_tlp.AsString;

      end;

end;

procedure TForm5.ednotarisKeyPress(Sender: TObject; var Key: Char);
begin

    if key=#13 then
    begin
        if sender=ednotaris then ednama.SetFocus;
        if sender=ednama then cbjk.SetFocus;
        if sender=cbjk then edalamat.SetFocus;
        if sender=edalamat then edtlp.SetFocus;
        if sender=edtlp then Button1.SetFocus;
    end;

end;

end.
