UNIT mathUtils;

INTERFACE
  
  FUNCTION Factorial(x: INTEGER): REAL;
  FUNCTION Binomial(x, y: INTEGER): LONGINT;

IMPLEMENTATION

  FUNCTION Factorial(x: INTEGER): REAL;
    VAR
      i: INTEGER;
      res: REAL;
  BEGIN (* Factorial *)
    res := 1;
    FOR i := 2 TO x DO BEGIN
      res := res * i;
    END; (* FOR *)
    Factorial := res;
  END; (* Factorial *)

  FUNCTION Binomial(x, y: INTEGER): LONGINT;
  BEGIN (* Binomial *)
    Binomial := Round(Factorial(x) / (Factorial(y) * Factorial(x-y)));
  END; (* Binomial *)
  

BEGIN (* mathUtils *)
  
END. (* mathUtils *)