unit funcionario;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin,
  Vcl.ActnCtrls, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls, Vcl.Grids, Data.DB,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask;

type
  TForm3 = class(TForm)
    ImageList1: TImageList;
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label23: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DBEdit1: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBEdit100: TDBEdit;
    Edit1: TEdit;
    Button1: TButton;
    procedure Action2Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure DBGrid1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
procedure DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  var nome: string;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.Action1Execute(Sender: TObject);
begin
TabSheet1.Show;
end;

procedure TForm3.Action2Execute(Sender: TObject);
begin
TabSheet2.Show;
end;


procedure TForm3.Button1Click(Sender: TObject);
begin
showmessage(nome);
end;

procedure TForm3.DBGrid1Click(Sender: TObject);
begin
    TabSheet2.Show;
end;


procedure TForm3.FormCreate(Sender: TObject);
begin
  DBGrid1.ControlStyle := DBGrid1.ControlStyle + [csClickEvents];
  TForm(DBGrid1).OnClick := DBGrid1Click;
end;

procedure TForm3.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(DataModule1.DataSource1.RecNo) then
  begin
    DBGrid1.Canvas.Brush.Color:= clMoneyGreen;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

    if gdFocused in State then
    begin
      DBGrid1.Canvas.Brush.Color:= clBlack;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
    end;
  end;

end;



end.
