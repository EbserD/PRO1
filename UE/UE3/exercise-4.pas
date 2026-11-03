(* Title: Exercise 4                                       Ebser, 2026-11-03 *)
(* ------                                                                    *)
(* Armstrong number calculation                                              *)
(* ========================================================================= *)

PROGRAM ExerciseFour;
  USES
    Crt, MathUtils;
  
  VAR
    i, input: INTEGER;
    digits: ARRAY OF INTEGER;
BEGIN (* ExerciseFour *)
  Write ('Enter value: ');
  Read(input);

  TextColor(Green);
  WriteLn('Is armstrong number: ', isArmstrongNumber(input));
END. (* ExerciseFour *)
