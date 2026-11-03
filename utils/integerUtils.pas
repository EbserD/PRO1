(* Title:                                                  Ebser, 2026-11-03 *)
(* ------                                                                    *)
(* Utility functions for integer stuff                                       *)
(* ========================================================================= *)

UNIT IntegerUtils;

INTERFACE
  TYPE
    IntArray = ARRAY OF INTEGER;

  FUNCTION IntToDigits(x: INTEGER): INTARRAY;

IMPLEMENTATION

  FUNCTION IntToDigits(x: INTEGER): INTARRAY;
    VAR
      i: INTEGER;
      res: ARRAY OF INTEGER;
  BEGIN (* IntToDigits *)
    i := 0;
    REPEAT
      setlength(res, i + 1);
      res[i] := x MOD 10;
      x := x div 10;
      i := i + 1;
    UNTIL (x <= 0); (* REPEAT *)
    IntToDigits := res;
  END; (* IntToDigits *)
  

BEGIN (* IntegerUtils *)
  
END. (* IntegerUtils *)