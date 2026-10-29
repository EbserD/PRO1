(* Title:                                                 Author, 2026-10-28 *)
(* ------                                                                    *)
(* Simple implementation for the binomial coefficient b by introducing       *)
(* a function for calculating the factorial of n. Calculation according to   *)
(* its mathematical definition. (n choose k) = n! / (k! + (n-k)!             *)
(* ========================================================================= *)

PROGRAM BetterBinomial;
  USES
    mathUtils;
  VAR
    n, k: INTEGER;
BEGIN (* BetterBinomial *)

  WriteLn('Size of INTEGER ', SizeOf(INTEGER));
  WriteLn('Size of INTEGER ', SizeOf(REAL));

  Write('n := '); ReadLn(n);
  Write('k := '); ReadLn(k);

  IF (n <= 0) OR (k <= 0) OR (k > n) THEN BEGIN
    WriteLn('Error: n and/or k do not have correct values!')
  END ELSE BEGIN
      
    WriteLn(n, ' choose ', k, ' is ', Binomial(n, k));

  END; (* IF *)
END. (* BetterBinomial *)