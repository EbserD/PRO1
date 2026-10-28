(* Title: Exercise 1 - TriangleCalculation                Author, 2026-10-27 *)
(* ------                                                                    *)
(* Description                                                               *)
(* ========================================================================= *)
PROGRAM TriangleCalculation;
VAR
  a,b,c: INTEGER;
  res: BOOLEAN;
BEGIN (* TriangleCalculation *)
  WriteLn('Input:');
  Write('a = ');
  Read(a);
  Write('b = ');
  Read(b);
  Write('c = ');
  Read(c);

  IF (a > b + c ) OR (b > a + c) OR (c > a + b) THEN BEGIN
    res := false;
  END ELSE BEGIN
    res := true;
  END; (* IF *)

  WriteLn('Result: ', res)
END. (* TriangleCalculation *)


PROGRAM ProgramName;
BEGIN (* ProgramName *)
  
END. (* ProgramName *)