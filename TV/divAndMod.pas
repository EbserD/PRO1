PROGRAM DivAndMod;

  PROCEDURE DivMod(x, y: INTEGER; VAR q: INTEGER; VAR r: INTEGER);
  BEGIN (* DivMod *)
    q := x div y;
    r := x mod y;
  END; (* DivMod *)

  VAR
    q, r: INTEGER;
BEGIN
  DivMod(17, 5, q, r);
  WriteLn(q, ' Rest ', r);   { expect: 3 Rest 2 }
END.