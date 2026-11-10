PROGRAM PrimeNumbers;
  
  FUNCTION IsPrime(x: INTEGER): BOOLEAN;
    VAR
      i: INTEGER;
      res: BOOLEAN;
  BEGIN (* IsPrime *)
    res := TRUE;
    FOR i := 2 TO x - 1 DO BEGIN
      IF (x MOD i = 0) THEN BEGIN
        res := FALSE;
        BREAK;
      END; (* IF *)
    END; (* FOR *)
    IsPrime := res;
  END; (* IsPrime *)

  PROCEDURE PrintPrimeNumbers(lowerBound: INTEGER; upperBound: INTEGER);
  BEGIN (* PrintPrimeNumbers *)
    FOR lowerBound := lowerBound TO upperBound DO BEGIN
      IF (IsPrime(lowerBound)) THEN BEGIN
        Write(lowerBound, ' '); 
      END; (* IF *)
    END; (* FOR *)
  END; (* PrintPrimeNumbers *)

BEGIN (* PrimeNumbers *)
  PrintPrimeNumbers(1, 100);

END. (* PrimeNumbers *)