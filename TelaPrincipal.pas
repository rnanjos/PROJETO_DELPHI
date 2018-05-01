unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCLTee.TeCanvas, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel2: TPanel;
    procedure Image2Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses menu;

procedure TForm1.Image2Click(Sender: TObject);
begin
Panel2.visible := true;
Form2.Show;
Form2.Parent := Panel2;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
ShowWindow(Handle, SW_MAXIMIZE)
end;

end.
