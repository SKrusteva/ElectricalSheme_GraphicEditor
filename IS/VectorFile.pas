unit VectorFile;

interface
 
type
  Element = record
  name: string[20];
  parameters: array[1..4] of integer;
  end;

 { Text = record
  name: string[20];
  parameters: array[1..4] of integer;
  pt : string[20];
end;  }

var
  elements: array[1..100] of Element;
  elementsCount: byte;
  //textfile: array[1..100] of Text;
  fileHandler: file of Element;

  filename : string;
  i: byte;
  //pt: string;
  
  procedure addElement(name: string; p1,p2,p3,p4: integer); overload;
  procedure addElement(name: string; p: integer); overload;
  //procedure addText(name: string; p5, p6: integer; pt: string); overload;
  procedure saveVectorFile(filename: string);

implementation

procedure addElement(name: string; p1,p2,p3,p4: integer); overload;
begin
  Inc(elementsCount);
  elements[elementsCount].name := name;
  elements[elementsCount].parameters[1] := p1;
  elements[elementsCount].parameters[2] := p2;
  elements[elementsCount].parameters[3] := p3;
  elements[elementsCount].parameters[4] := p4;
end;

procedure addElement(name: string; p: integer); overload;
begin
  Inc(elementsCount);
  elements[elementsCount].name := name;
  elements[elementsCount].parameters[1] := p;
end;

{procedure addText(name: string; p5, p6: integer; pt: string); overload;
begin
  Inc(elementsCount);
  elements[elementsCount].name := name;
  elements[elementsCount].parameters[1] := p5;
  elements[elementsCount].parameters[2] := p6;
  elements[elementsCount].pt := pt;
end; }

procedure saveVectorFile(filename: string);
begin
  AssignFile(fileHandler, filename);
  Rewrite(fileHandler);
  for i := 1 to elementsCount do
    Write(fileHandler, elements[i]);
  Close(fileHandler);
end;



end.
