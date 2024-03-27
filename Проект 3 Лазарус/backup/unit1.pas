unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls, Math;

type
  { TForm1 }
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure CalculatePower;
  private
    k1, k2, X: Double;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.CalculatePower;
begin
  k1 := StrToFloat(Edit1.Text);
  k2 := StrToFloat(Edit2.Text);
  X := Power(k1, k2);

  Memo1.Lines.Add(Format('число %.2f в степени %.2f равно: %.2f', [k1, k2, X]));
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  CalculatePower;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  CalculatePower;
end;

end.

