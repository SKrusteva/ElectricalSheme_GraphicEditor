unit ElectricScheme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Buttons, ExtDlgs;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    MenuNew: TMenuItem;
    MenuOpen: TMenuItem;
    MenuSave: TMenuItem;
    MenuSaveAs: TMenuItem;
    N1: TMenuItem;
    MenuExit: TMenuItem;
    About1: TMenuItem;
    Panel1: TPanel;
    ResistorSpB: TSpeedButton;
    DiodeSpB: TSpeedButton;
    CoilSpB: TSpeedButton;
    SplintSpB: TSpeedButton;
    DotSpB: TSpeedButton;
    TextSpB: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ColorDialog1: TColorDialog;
    PopupMenuResistor: TPopupMenu;
    VerticalResistor1: TMenuItem;
    PopupMenuDiode: TPopupMenu;
    PopupMenuCoil: TPopupMenu;
    DvUp: TMenuItem;
    DhLeft: TMenuItem;
    DvDown: TMenuItem;
    CvL: TMenuItem;
    ChD: TMenuItem;
    CvR: TMenuItem;
    ColorPanel: TPanel;
    procedure About1Click(Sender: TObject);
    procedure MenuNewClick(Sender: TObject);
    procedure MenuOpenClick(Sender: TObject);
    procedure MenuSaveClick(Sender: TObject);
    procedure MenuSaveAsClick(Sender: TObject);
    procedure MenuExitClick(Sender: TObject);
    procedure ResistorSpBClick(Sender: TObject);
    procedure PopupMenuResistorChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure DiodeSpBClick(Sender: TObject);
    procedure DvUpClick(Sender: TObject);
    procedure DhLeftClick(Sender: TObject);
    procedure DvDownClick(Sender: TObject);
    procedure CoilSpBClick(Sender: TObject);
    procedure CvLClick(Sender: TObject);
    procedure ChDClick(Sender: TObject);
    procedure CvRClick(Sender: TObject);
    procedure SplintSpBClick(Sender: TObject);
    procedure DotSpBClick(Sender: TObject);
    procedure TextSpBClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ColorPanelClick(Sender: TObject);

  private
  fileName :string;
  textBuffer : string;
  element, sX, sY, A : integer;
  mbPressed: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses About, VectorFile;

{$R *.dfm}
 { MENU }
procedure TForm1.About1Click(Sender: TObject);
begin
AboutForm.Show;
end;

procedure TForm1.MenuNewClick(Sender: TObject);
begin
   Image1.Picture := nil;
   fileName := '';
   Form1.Caption := 'New Document';
end;

procedure TForm1.MenuOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute = true then begin
    fileName := OpenDialog1.FileName;
    Form1.Caption := fileName;
    Image1.Picture.LoadFromFile(fileName);
  end;
end;

procedure TForm1.MenuSaveClick(Sender: TObject);
begin
    if SaveDialog1.Execute = true then begin
	    fileName := SaveDialog1.FileName;
	    Form1.Caption := fileName;
  	  Image1.Picture.SaveToFile(fileName + '.bmp');

      saveVectorFile(filename);
    end;
end;

procedure TForm1.MenuSaveAsClick(Sender: TObject);
begin
   if fileName = '' then
    MenuSaveClick(Sender)
  else begin
    Image1.Picture.SaveToFile(fileName + '.bmp');

    saveVectorFile(filename);
  end;
end;

procedure TForm1.MenuExitClick(Sender: TObject);
begin
  Form1.Close;
end;
 { menu }

 { BUTTONS }
procedure TForm1.ResistorSpBClick(Sender: TObject);
begin
  element := 1;
end;

procedure TForm1.PopupMenuResistorChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
    element := 11;
end;

procedure TForm1.DiodeSpBClick(Sender: TObject);
begin
  element := 2;
end;

procedure TForm1.DvUpClick(Sender: TObject);
begin
   element := 21;
end;

procedure TForm1.DhLeftClick(Sender: TObject);
begin
   element := 22;
end;

procedure TForm1.DvDownClick(Sender: TObject);
begin
   element := 23;
end;

procedure TForm1.CoilSpBClick(Sender: TObject);
begin
  element := 3;
end;

procedure TForm1.CvLClick(Sender: TObject);
begin
     element := 31;
end;

procedure TForm1.ChDClick(Sender: TObject);
begin
     element := 32;
end;

procedure TForm1.CvRClick(Sender: TObject);
begin
     element := 33;
end;

procedure TForm1.SplintSpBClick(Sender: TObject);
begin
     element := 4;
end;

procedure TForm1.DotSpBClick(Sender: TObject);
begin
     element := 5;
end;

procedure TForm1.TextSpBClick(Sender: TObject);
begin
     element := 6;
end;
     { buttons }

     { ELEMENTS }
function Resistor (sX, sY, X, Y : integer) : integer;
begin
     Form1.Image1.Canvas.Rectangle(X - 25, Y - 10, X + 25, Y + 10);
     Form1.Image1.Canvas.MoveTo(X - 25, Y);
     Form1.Image1.Canvas.LineTo(X - 45, Y); //left line
     Form1.Image1.Canvas.MoveTo(X + 25, Y);
     Form1.Image1.Canvas.LineTo(X + 45, Y); //right line
end;

 function VertResistor (sX, sY, X, Y : integer) : integer;
 var A : integer;
begin
     Form1.Image1.Canvas.Rectangle(X - 10, Y - 25, X + 10, Y + 25);
     Form1.Image1.Canvas.MoveTo(X, Y - 25);
     Form1.Image1.Canvas.LineTo(X, Y - 45); //up line
     Form1.Image1.Canvas.MoveTo(X, Y + 25);
     Form1.Image1.Canvas.LineTo(X, Y + 45); //down line
end;

 function Diode (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Polygon([Point(X, Y - 15), Point(X, Y + 15), Point(X + 26, Y)]);
     Form1.Image1.Canvas.MoveTo(X + 26, Y - 15);
     Form1.Image1.Canvas.LineTo(X + 26, Y + 15); //vertical line
     Form1.Image1.Canvas.MoveTo(X, Y);
     Form1.Image1.Canvas.LineTo(X - 20, Y); //left line
     Form1.Image1.Canvas.MoveTo(X + 26, Y);
     Form1.Image1.Canvas.LineTo(X + 50, Y); //right line
 end;

 function DiodeUp (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Polygon([Point(X - 15, Y), Point(X + 15, Y), Point(X, Y - 26)]);
     Form1.Image1.Canvas.MoveTo(X - 15, Y - 26);
     Form1.Image1.Canvas.LineTo(X + 15, Y - 26); //horizontal line
     Form1.Image1.Canvas.MoveTo(X, Y);
     Form1.Image1.Canvas.LineTo(X, Y + 20); //down line
     Form1.Image1.Canvas.MoveTo(X, Y - 26);
     Form1.Image1.Canvas.LineTo(X, Y - 46); //up line
 end;

 function DiodeLeft (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Polygon([Point(X, Y + 15), Point(X, Y - 15), Point(X - 26, Y)]);
     Form1.Image1.Canvas.MoveTo(X - 26, Y - 15);
     Form1.Image1.Canvas.LineTo(X - 26, Y + 15); //vertical line
     Form1.Image1.Canvas.MoveTo(X, Y);
     Form1.Image1.Canvas.LineTo(X + 20, Y); //right line
     Form1.Image1.Canvas.MoveTo(X - 26, Y);
     Form1.Image1.Canvas.LineTo(X - 46, Y); //left line
 end;

 function DiodeDown (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Polygon([Point(X + 15, Y), Point(X - 15, Y), Point(X, Y + 26)]);
     Form1.Image1.Canvas.MoveTo(X - 15, Y + 26);
     Form1.Image1.Canvas.LineTo(X + 15, Y + 26); //horizontal line
     Form1.Image1.Canvas.MoveTo(X, Y);
     Form1.Image1.Canvas.LineTo(X, Y - 20); //up line
     Form1.Image1.Canvas.MoveTo(X, Y + 26);
     Form1.Image1.Canvas.LineTo(X, Y + 46); //down line
 end;

 function Coil (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Arc(X - 30, Y - 10, X - 10, Y + 10, X + 40, Y, X - 40, Y); //first arc
     Form1.Image1.Canvas.Arc(X - 10, Y - 10, X + 10, Y + 10, X + 40, Y, X - 40, Y); //second arc
     Form1.Image1.Canvas.Arc(X + 10, Y - 10, X + 30, Y + 10, X + 40, Y, X - 40, Y); //third arc
     Form1.Image1.Canvas.MoveTo(X - 30, Y);
     Form1.Image1.Canvas.LineTo(X - 50, Y); //left line
     Form1.Image1.Canvas.MoveTo(X + 30, Y);
     Form1.Image1.Canvas.LineTo(X + 50, Y); //right line
 end;

 function CoilLeft (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Arc(X - 10, Y + 10, X + 10, Y + 30, X, Y - 40, X, Y + 40); //down arc
     Form1.Image1.Canvas.Arc(X - 10, Y - 10, X + 10, Y + 10, X, Y - 40, X, Y + 40); //middle arc
     Form1.Image1.Canvas.Arc(X - 10, Y - 30, X + 10, Y - 10, X, Y - 40, X, Y + 40); //up arc
     Form1.Image1.Canvas.MoveTo(X, Y+ 30);
     Form1.Image1.Canvas.LineTo(X, Y+ 50); //down line
     Form1.Image1.Canvas.MoveTo(X, Y - 30);
     Form1.Image1.Canvas.LineTo(X, Y - 50); //up line
 end;

 function CoilDown (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Arc(X - 30, Y - 10, X - 10, Y + 10, X - 40, Y, X + 40, Y); //first arc
     Form1.Image1.Canvas.Arc(X - 10, Y - 10, X + 10, Y + 10, X - 40, Y, X + 40, Y); //second arc
     Form1.Image1.Canvas.Arc(X + 10, Y - 10, X + 30, Y + 10, X - 40, Y, X + 40, Y); //third arc
     Form1.Image1.Canvas.MoveTo(X - 30, Y);
     Form1.Image1.Canvas.LineTo(X - 50, Y); //left line
     Form1.Image1.Canvas.MoveTo(X + 30, Y);
     Form1.Image1.Canvas.LineTo(X + 50, Y); //right line
 end;

 function CoilRight (sX, sY, X, Y : integer) : integer;
 begin
     Form1.Image1.Canvas.Arc(X - 10, Y + 10, X + 10, Y + 30, X, Y + 40, X, Y - 40); //down arc
     Form1.Image1.Canvas.Arc(X - 10, Y - 10, X + 10, Y + 10, X, Y + 40, X, Y - 40); //middle arc
     Form1.Image1.Canvas.Arc(X - 10, Y - 30, X + 10, Y - 10, X, Y + 40, X, Y - 40); //up arc
     Form1.Image1.Canvas.MoveTo(X, Y - 30);
     Form1.Image1.Canvas.LineTo(X, Y - 50); //up line
     Form1.Image1.Canvas.MoveTo(X, Y + 30);
     Form1.Image1.Canvas.LineTo(X, Y + 50); //down line
 end;
     { elements }

     { SET ELEMENTS }
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     sX := X;
     sY := Y;
     textBuffer := '';
     mbPressed := true;
     Image1.Canvas.MoveTo(X, Y);
     {if element = 7 then begin
        Image1.Canvas.Brush.Color := clWhite;
        Image1.Canvas.Rectangle(X - 5, Y - 5, X + 5, Y +5);
    end;}
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if element = 1 then begin   //resistor
     Resistor (sX, sY, X, Y);
     addElement('Resistor', sX, sY, X, Y);
  end
  else if element = 11 then begin   //vertical resistor
     VertResistor (sX, sY, X, Y);
     addElement('Vertical Resistor', sX, sY, X, Y);
  end
  else if element = 2 then begin  //diode
       Diode (sX, sY, X, Y);
       addElement('Diode', sX, sY, X, Y);
  end
  else if element = 21 then begin  //diode + 90
       DiodeUp (sX, sY, X, Y);
       addElement('DiodeUp', sX, sY, X, Y);
  end
  else if element = 22 then begin  //diode + 180
       DiodeLeft (sX, sY, X, Y);
       addElement('DiodeLeft', sX, sY, X, Y);
  end
  else if element = 23 then begin  //diode  - 90
       DiodeDown (sX, sY, X, Y);
       addElement('DiodeDown', sX, sY, X, Y);
  end
  else if element = 3 then begin  //coil
       Coil (sX, sY, X, Y);
       addElement('Coil', sX, sY, X, Y);
  end
  else if element = 31 then begin  //coil + 90
       CoilLeft (sX, sY, X, Y);
       addElement('CoilLeft', sX, sY, X, Y);
  end
  else if element = 32 then begin  //coil + 180
       CoilDown (sX, sY, X, Y);
       addElement('CoilDown', sX, sY, X, Y);
  end
  else if element = 33 then begin  //coil - 90
       CoilRight (sX, sY, X, Y);
       addElement('CoilRight', sX, sY, X, Y);
  end
  else if element = 4 then begin  //connection
       Image1.Canvas.MoveTo(sX, sY);
       Image1.Canvas.LineTo(X, sY);
       Image1.Canvas.LineTo(X, Y);
       {if Abs(X - sX) > Abs(Y - sY) then
       Image1.Canvas.LineTo(X, sY)
       else
       Image1.Canvas.LineTo(sX, Y);}
       addElement('Connection', sX, sY, X, Y);
  end
  else if element = 5 then begin  //dot
       Image1.Canvas.Brush.Color := clBlack;
       Image1.Canvas.Ellipse(X - 2, Y - 2, X + 3, Y + 3);
       Image1.Canvas.Brush.Color := clWhite;
       addElement('Dot', sX, sY, X, Y);
  end
  else if element = 6 then begin  //text
  end;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if element = 6 then begin           //text
        textBuffer := textBuffer + Key;
        Image1.Canvas.TextOut(sX, sY, textBuffer);
       // addElement('text', sX, sY, textBuffer );
     end;
end;

procedure TForm1.ColorPanelClick(Sender: TObject);
begin
   if ColorDialog1.Execute = true then begin
       ColorPanel.Color := ColorDialog1.Color;
       Image1.Canvas.Pen.Color := ColorDialog1.Color;
   end;
end;
    { set elements }
end.
