(* Title: MathUtils                                        Ebser, 2026-10-29 *)
(* ------                                                                    *)
(* Utility functions for mathematical operations                             *)
(* ========================================================================= *)

UNIT MathUtils;
INTERFACE
  USES
    IntegerUtils, Math;

  FUNCTION Binomial(x, y: INTEGER): LONGINT;
  FUNCTION Factorial(x: INTEGER): REAL;
  FUNCTION isArmstrongNumber(x: INTEGER): BOOLEAN;
  FUNCTION Max(arr: ARRAY OF INTEGER): INTEGER OVERLOAD;
  FUNCTION Max(arr: ARRAY OF REAL): REAL OVERLOAD;
  FUNCTION Median(arr: Array OF INTEGER): INTEGER OVERLOAD;
  FUNCTION Median(arr: Array OF REAL): REAL OVERLOAD;
  FUNCTION Min(arr: ARRAY OF INTEGER): INTEGER OVERLOAD;
  FUNCTION Min(arr: ARRAY OF REAL): REAL OVERLOAD;

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

  FUNCTION isArmstrongNumber(x: INTEGER): BOOLEAN;
    VAR
      i: INTEGER;
      digits: ARRAY OF INTEGER;
      calculatedValue: EXTENDED;
  BEGIN (* isArmstrongNumber *)
      digits := IntToDigits(x);

      calculatedValue := 0;
      FOR i := 0 TO length(digits) - 1 DO BEGIN
        calculatedValue := calculatedValue + Power(digits[i], length(digits))
      END; (* FOR *)      
      
      isArmstrongNumber := x = calculatedValue;
  END; (* isArmstrongNumber *)

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

  FUNCTION Median(arr: ARRAY OF INTEGER): INTEGER;
    VAR
      res: INTEGER;
  BEGIN (* Median *)
    IF (length(arr) MOD 2 = 0) THEN BEGIN
      res := (arr[(length(arr) div 2) - 1] + arr[length(arr) div 2]) div 2
    END ELSE BEGIN
      res := arr[(length(arr) - 1) div 2];
    END; (* IF *)
    Median := res;
  END; (* Median *)

  FUNCTION Median(arr: ARRAY OF REAL): REAL;
    VAR
      res: REAL;
  BEGIN (* Median *)
    IF (length(arr) MOD 2 = 0) THEN BEGIN
      res := (arr[(length(arr) div 2) - 1] + arr[length(arr) div 2]) / 2
    END ELSE BEGIN
      res := arr[(length(arr) - 1) div 2];
    END; (* IF *)
    Median := res;
  END; (* Median *)

  FUNCTION Min(arr: ARRAY OF INTEGER): INTEGER;
    VAR
      minValue, i: INTEGER;
  BEGIN (* Min *)
    minValue := arr[0];
    FOR i := 1 TO length(arr) - 1 DO BEGIN
      IF (arr[i] < minValue) THEN BEGIN
        minValue := arr[i];
      END; (* IF *)
    END; (* FOR *)
    Min := minValue;
  END; (* Min *)

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

BEGIN (* MathUtils *)
  
END. (* MathUtils *)