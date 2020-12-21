unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, XPMan;

type
  TForm1 = class(TForm)
    dbgrd1: TDBGrid;
    dbnvgr1: TDBNavigator;
    xpmnfst1: TXPManifest;
    pnl1: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.dbgrd1TitleClick(Column: TColumn);
var
ss : string;
begin
if DataModule2.tbl1.FieldByName(Column.FieldName).Tag = 0 then
  begin
  ss := ' ASC';
  DataModule2.tbl1.FieldByName(Column.FieldName).Tag := 1;
  end
else
  begin
  ss := ' DESC';
  DataModule2.tbl1.FieldByName(Column.FieldName).Tag := 0;
  end;
DataModule2.tbl1.Sort:=Column.FieldName + ss;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
form3.ShowModal;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
DataModule2.ds1.DataSet.Delete;
end;

end.
