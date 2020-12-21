unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    xpmnfst1: TXPManifest;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
DataModule2.ds1.DataSet.Append;
DataModule2.ds1.DataSet.FieldByName('fio').AsString := edt1.Text;
DataModule2.ds1.DataSet.FieldByName('tel').AsString := edt2.Text;
DataModule2.ds1.DataSet.Post;
edt1.Text := '';
edt2.Text := '';
form4.Close;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
form4.Close;
end;

end.
