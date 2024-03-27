unit unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,h:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
begin
   a:=strtoint(Edit1.Text);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var x,y:integer;
begin
  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);
  h := StrToInt(Edit3.Text);
  y:=0;x:=0;
  while a<=b do
  begin
    y:=a*a;
    x:=a;
    Memo1.Lines.add('функция y=x^2 равна: '+IntToStr(y)+ ' при x равному: ' +IntToStr(x));
    a:=a+h;
  end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
   b:=strtoint(Edit2.Text);
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
   h:=strtoint(Edit3.Text);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

