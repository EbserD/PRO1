(* Title: Exercise 3                                       Ebser, 2026-11-03 *)
(* ------                                                                    *)
(* Binary conversion                                                         *)
(* ========================================================================= *)

PROGRAM ExerciseThree;
  USES
    Crt, IntegerUtils;
  VAR
    i, input: INTEGER;
    binaryDigits: ARRAY OF INTEGER;
BEGIN (* ExerciseThree *)
  Write ('Enter integer greater than 0: ');
  Read(input);

  TextColor(Green);
  Write(input, ' converted to binary: ');
  
  binaryDigits := IntToBinary(input);
  FOR i := 0 TO length(binaryDigits) - 1 DO BEGIN
    Write(binaryDigits[i])
  END; (* FOR *)
  WriteLn();
END. (* ExerciseThree *)