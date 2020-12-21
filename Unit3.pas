unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, XPMan;

type
  TForm3 = class(TForm)
    dbedtfio: TDBEdit;
    dbedttel: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    xpmnfst1: TXPManifest;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit2, Unit1;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule2.ds1.DataSet.Edit;
DataModule2.ds1.DataSet.FieldByName('fio').AsString := dbedtfio.Text;
DataModule2.ds1.DataSet.FieldByName('tel').AsString := dbedttel.Text;
DataModule2.ds1.DataSet.Post;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
form3.Close;
end;

end.
