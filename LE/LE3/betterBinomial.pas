(* Title:                                                 Author, 2026-10-28 *)
(* ------                                                                    *)
(* Better implementation for the binomial coefficient b by introducing       *)
(* a procedure for calculating the factorial of n. Calculation according to  *)
(* its mathematical definition. (n choose k) = n! / (k! + (n-k)!             *)
(* ========================================================================= *)

PROGRAM BetterBinomial;
  VAR
    n, k: INTEGER;
    nf, kf, nkf: REAL;
    b: LONGINT;

  PROCEDURE Factorial(x : INTEGER; VAR res : REAL);
    VAR
      i: INTEGER;
  BEGIN (* Factorial *)
    res := 1;
    FOR i := 2 TO x DO BEGIN
      res := res * i;
    END; (* FOR *)
  END; (* Factorial *)


BEGIN (* BetterBinomial *)

  WriteLn('Size of INTEGER ', SizeOf(INTEGER));
  WriteLn('Size of INTEGER ', SizeOf(REAL));

  Write('n := '); ReadLn(n);
  Write('k := '); ReadLn(k);

  IF (n <= 0) OR (k <= 0) OR (k > n) THEN BEGIN
    WriteLn('Error: n and/or k do not have correct values!')
  END ELSE BEGIN 
    Factorial(n, nf);
    Factorial(k, kf);
    Factorial(n-k, nkf);

    (* binomial coefficient *)
    b := Round(nf / (kf * nkf));

    WriteLn(n, ' choose ', k, ' is ', b);

  END; (* IF *)
END. (* BetterBinomial *)