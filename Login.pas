unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edusername: TEdit;
    edpass: TEdit;
    LOGIN: TButton;
    Button2: TButton;
    Image2: TImage;
    procedure LOGINClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses menu, uDatamodul;

procedure TForm1.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.LOGINClick(Sender: TObject);
begin


   // if (edusername.Text='')or(edpass.Text='') then
     //begin
       //ShowMessage('Masukan Username dan Password');

     //end else
     //begin
      // with DataModule1 do
       //begin
         //QDataPetugas.SQL.Clear;
         //QDataPetugas.SQL.Add('SELECT*FROM login_admin');
         //QDataPetugas.Open;
         //QDataPetugas.SQL.Clear;
         //QDataPetugas.SQL.Add('SELECT*FROM login_admin WHERE user_name'+QuotedStr(edusername.Text));
         //QDataPetugas.Open;

       //end;
       //if DataModule1.QDataPetugas.RecordCount=0 then
       //begin
         //ShowMessage('Data Tidak Ditemukan');
       //end else
       //if DataModule1.QDataPetugas.FieldByName('pass').AsString<>edpass.Text then
       //begin
        // ShowMessage('Password yang anda masukan salah!!');

       //end else
       //begin
         //ShowMessage('Login Berhasil');
        // Form2.Show;
       //end;



     //end;
           Form2.Show;

end;

end.
