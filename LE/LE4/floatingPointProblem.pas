PROGRAM FloatingPointProblem;
  USES
    Crt;
  
  VAR
    x: REAL;
BEGIN (* FloatingPointProblem *)
  x := 0.1 + 0.2;

  IF (x = 0.3) THEN BEGIN
    TextColor(Green);
    WriteLn('x is 0.3');
  END ELSE BEGIN
    TextColor(Red);
    WriteLn('x is not 0.3');
  END; (* IF *)
END. (* FloatingPointProblem *)