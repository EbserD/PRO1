UNIT mathUtils;

INTERFACE
  
  FUNCTION Factorial(x: INTEGER): REAL;
  FUNCTION Binomial(x, y: INTEGER): LONGINT;
  FUNCTION Max(arr: ARRAY OF INTEGER): INTEGER;

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
  
  FUNCTION Max(arr: ARRAY OF INTEGER): INTEGER;
  VAR
    maxValue, i: INTEGER;
  BEGIN (* Max *)
    maxValue := arr[0];
    FOR i := 1 TO length(arr) - 1 DO BEGIN
      IF (arr[i] > maxValue) THEN BEGIN
        maxValue := arr[i];
      END; (* IF *)
    END; (* FOR *)
    Max := maxValue;
  END; (* Max *)

BEGIN (* mathUtils *)
  
END. (* mathUtils *)