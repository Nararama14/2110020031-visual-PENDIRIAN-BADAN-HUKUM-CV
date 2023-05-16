unit MasukanDataCV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  TForm6 = class(TForm)
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
    edCV: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edmodal: TEdit;
    Label8: TLabel;
    edalamat: TEdit;
    edjenis: TEdit;
    Dtberdiri: TDateTimePicker;
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edCVKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses uDatamodul;

procedure TForm6.Button1Click(Sender: TObject);
begin

  if trim(edCV.Text)='' then
    Begin
      beep;
      MessageDlg('KODE CV WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
      edCV.SetFocus;
    end else
    if Trim(ednama.Text)='' then
    begin
    beep;
        MessageDlg('NAMA CV WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        ednama.SetFocus;
    end  else
    if Trim(edalamat.Text)='' then
    begin
    beep;
        MessageDlg('ALAMAT WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edalamat.SetFocus;
    end  else
    if Trim(edmodal.Text)='' then
    begin
    beep;
        MessageDlg('MODAL WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edmodal.SetFocus;
    end else
    if Trim(edjenis.Text)='' then
    begin
    beep;
        MessageDlg('NO TELPON WAJIB DI ISI!!!', TMsgDlgType.mtWarning,[TMsgDlgBtn.mbNo], 0);
        edjenis.SetFocus;
    end else

    if DataModule1.QCV.Locate('kd_cv',edCV.Text,[]) then
        begin
        beep;
        MessageDlg('KODE CV Sudah Terdaftar!!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK],0);
        ednama.Text := DataModule1.QCVnama_cv.AsString;
        edalamat.Text := DataModule1.QCValamat_cv.AsString;
        edmodal.Text := DataModule1.QCVmodal.AsString;
        Dtberdiri.Date := DataModule1.QCVtgl_berdiri.AsDateTime;
        edjenis.Text := DataModule1.QCVjenis_usaha.AsString;
        end

        else
    begin
    with DataModule1 do
      begin
      QCV.Append;
      QCVkd_CV.AsString := edCV.Text;
      QCVnama_cv.AsString := ednama.Text;
      QCValamat_cv.AsString := edalamat.Text;
      QCVmodal.AsString  := edmodal.Text;
      QCVtgl_berdiri.AsDateTime := Dtberdiri.Date;
      QCVjenis_usaha.AsString := edjenis.text;
      QCV.Post;
      MessageDlg('DATA BERHASIL DI SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      end;

    end;

end;

procedure TForm6.Button2Click(Sender: TObject);
begin

   if (
   (Trim(edCV.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(edalamat.Text)='') and
   (Trim(edmodal.Text)='') and
   //(Trim(Dtberdiri.DateTime)='') and
   (Trim(edjenis.Text)='')
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
            QCV.Edit;
            QCVkd_CV.AsString := edCV.Text;
            QCVnama_cv.AsString := ednama.Text;
            QCValamat_cv.AsString := edalamat.Text;
            QCVmodal.AsString  := edmodal.Text;
            QCVtgl_berdiri.AsDateTime := Dtberdiri.Date;
            QCVjenis_usaha.AsString := edjenis.text;
            QCV.Post;
            MessageDlg('DATA BERHASIL DI UBAH DAN SIMPAN',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            end;
        end;
      end;

end;

procedure TForm6.Button3Click(Sender: TObject);
begin

  if (
   (Trim(edCV.Text)='') and
   (Trim(ednama.Text)='') and
   (Trim(edalamat.Text)='') and
   (Trim(edmodal.Text)='') and
   //(Trim(Dtberdiri.DateTime)='') and
   (Trim(edjenis.Text)='')
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
            QCV.Delete;
            MessageDlg('DATA BERHASIL DI HAPUS!!',TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
            edCV.Clear;
            ednama.Clear;
            edalamat.Clear;
            Dtberdiri.Date := Now;;
            edmodal.Clear;
            edjenis.Clear;
            edCV.SetFocus;
            end;
        end;
      end;

end;

procedure TForm6.Button4Click(Sender: TObject);
begin

      edCV.Clear;
      ednama.Clear;
      edalamat.Clear;
      Dtberdiri.Date := Now;;
      edmodal.Clear;
      edjenis.Clear;
      edCV.SetFocus;

end;

procedure TForm6.Button5Click(Sender: TObject);
begin

  Close;

end;

procedure TForm6.DBGrid1DblClick(Sender: TObject);
begin

      with Form6 do
      begin
      edCV.Text := DataModule1.QCVkd_cv.AsString;
      ednama.Text := DataModule1.QCVnama_cv.AsString;
      edalamat.Text := DataModule1.QCValamat_cv.AsString;
      edmodal.Text := DataModule1.QCVmodal.AsString;
      Dtberdiri.Date := DataModule1.QCVtgl_berdiri.AsDateTime;
      edjenis.Text := DataModule1.QCVjenis_usaha.AsString;

      end;

end;

procedure TForm6.edCVKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    begin
        if sender=edCV then ednama.SetFocus;
        if sender=ednama then edalamat.SetFocus;
        if sender=edalamat then edmodal.SetFocus;
        if sender=edmodal then Dtberdiri.SetFocus;
        if sender=Dtberdiri then edjenis.SetFocus;
        if sender=edjenis then Button1.SetFocus;
    end;

end;

end.