program Project1;

uses
  Vcl.Forms,
  Login in 'Login.pas' {Form1},
  menu in 'menu.pas' {Form2},
  MasukanDataPetugas in 'MasukanDataPetugas.pas' {Form3},
  MasukanDataPemilik in 'MasukanDataPemilik.pas' {Form4},
  MasukanDataNotaris in 'MasukanDataNotaris.pas' {Form5},
  MasukanDataCV in 'MasukanDataCV.pas' {Form6},
  MasukanDataRegisterCV in 'MasukanDataRegisterCV.pas' {Form7},
  uDatamodul in 'uDatamodul.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
