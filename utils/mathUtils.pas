UNIT mathUtils;

INTERFACE
  
  FUNCTION Binomial(x, y: INTEGER): LONGINT;
  FUNCTION Factorial(x: INTEGER): REAL;
  FUNCTION Max(arr: ARRAY OF REAL): REAL;
  FUNCTION Min(arr: ARRAY OF REAL): REAL;

IMPLEMENTATION

  FUNCTION Binomial(x, y: INTEGER): LONGINT;
  BEGIN (* Binomial *)
    Binomial := Round(Factorial(x) / (Factorial(y) * Factorial(x-y)));
  END; (* Binomial *)

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

  FUNCTION Max(arr: ARRAY OF REAL): REAL;
    VAR
      i: INTEGER;
      maxValue: REAL;
  BEGIN (* Max *)
    maxValue := arr[0];
    FOR i := 1 TO length(arr) - 1 DO BEGIN
      IF (arr[i] > maxValue) THEN BEGIN
        maxValue := arr[i];
      END; (* IF *)
    END; (* FOR *)
    Max := maxValue;
  END; (* Max *)

  FUNCTION Min(arr: ARRAY OF REAL): REAL;
    VAR
      i: INTEGER;
      minValue: REAL;
  BEGIN (* Min *)
    minValue := arr[0];
    FOR i := 1 TO length(arr) - 1 DO BEGIN
      IF (arr[i] < minValue) THEN BEGIN
        minValue := arr[i];
      END; (* IF *)
    END; (* FOR *)
    Min := minValue;
  END; (* Min *)

BEGIN (* mathUtils *)
  
END. (* mathUtils *)