(* Title:                                                 Author, 2026-10-28 *)
(* ------                                                                    *)
(* Simple implementation for the binomial coefficient b according to         *)
(* its mathematical definition. (n choose k) = n! / (k! + (n-k)!             *)
(* ========================================================================= *)

PROGRAM SimpleBinomial;
  VAR
    i, n, k: INTEGER;
    nf, kf, nkf: REAL;
    b: LONGINT;
BEGIN (* BetterBinomial *)

  WriteLn('Size of INTEGER ', SizeOf(INTEGER));
  WriteLn('Size of INTEGER ', SizeOf(REAL));

  Write('n := '); ReadLn(n);
  Write('k := '); ReadLn(k);

  IF (n <= 0) OR (k <= 0) OR (k > n) THEN BEGIN
    WriteLn('Error: n and/or k do not have correct values!')
  END ELSE BEGIN 
    (* n factorial *)
    nf := 1;
    FOR i := 2 TO n DO BEGIN
      nf := nf * i;
    END; (* FOR *)

    (* k factorial *)
    kf := 1;
    FOR i := 2 TO k DO BEGIN
      kf := kf * i;
    END; (* FOR *)

    (* k factorial *)
    nkf := 1;
    FOR i := 2 TO (n-k) DO BEGIN
      nkf := nkf * i;
    END; (* FOR *)

    (* binomial coefficient *)
    b := Round(nf / (kf * nkf));

    WriteLn(n, ' choose ', k, ' is ', b);

  END; (* IF *)
END. (* BetterBinomial *)