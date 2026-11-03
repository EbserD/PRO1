(* Title:                                                  Ebser, 2026-11-03 *)
(* ------                                                                    *)
(* Utility functions for integer stuff                                       *)
(* ========================================================================= *)

UNIT IntegerUtils;

INTERFACE
  USES
    Math;
  
  TYPE
    IntArray = ARRAY OF INTEGER;

  FUNCTION IntToDigits(x: INTEGER): INTARRAY;
  FUNCTION IntToBinary(x: INTEGER): INTARRAY;

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

  FUNCTION IntToBinary(x: INTEGER): INTARRAY;
    VAR
      i, max: INTEGER;
      values: ARRAY OF INTEGER;
  BEGIN (* IntToBinary *)
    max := IfThen(x > 0, Trunc(Log2(x)) + 1, 1);
    setlength(values, max);

    FOR i := max - 1 DOWNTO 0 DO BEGIN
      values[i] := x mod 2;
      x := x div 2;
    END; (* FOR *)

    IntToBinary := values;
  END; (* IntToBinary *)

BEGIN (* IntegerUtils *)
  
END. (* IntegerUtils *)