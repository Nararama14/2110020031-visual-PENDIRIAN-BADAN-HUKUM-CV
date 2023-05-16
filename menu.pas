unit menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    KELUAR1: TMenuItem;
    MasukanData1: TMenuItem;
    PencarianData1: TMenuItem;
    Laporan1: TMenuItem;
    Keluar2: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MasukanDataPetugas1: TMenuItem;
    MasukanDataPemilik1: TMenuItem;
    MasukanDataNotaris1: TMenuItem;
    MasukanDataCV1: TMenuItem;
    Image1: TImage;
    procedure MasukanDataCV1Click(Sender: TObject);
    procedure MasukanDataPetugas1Click(Sender: TObject);
    procedure MasukanDataPemilik1Click(Sender: TObject);
    procedure MasukanDataNotaris1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses MasukanDataCV, MasukanDataPetugas, MasukanDataPemilik, MasukanDataNotaris;

procedure TForm2.MasukanDataCV1Click(Sender: TObject);
begin

 Form6.Show;

end;

procedure TForm2.MasukanDataNotaris1Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm2.MasukanDataPemilik1Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm2.MasukanDataPetugas1Click(Sender: TObject);
begin
  Form3.show;
end;

end.
