
PROGRAM Switch;

VAR 
  a, b: INTEGER;
BEGIN
  Write('a > ');
  Read(a);
  Write('b > ');
  Read(b);
  a := a + b;
  b := a - b;
  a := a - b;
  WriteLn('a: ', a, ', b: ', b);
  WriteLn;
END.
