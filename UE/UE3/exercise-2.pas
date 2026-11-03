(* Title: Exercise 2                                       Ebser, 2026-10-29 *)
(* ------                                                                    *)
(* Median Calculation                                                        *)
(* ========================================================================= *)

PROGRAM ExerciseTwo;
  USES
    ArrayUtils, Crt, MathUtils;
  VAR
    countOfValues, i: INTEGER;
    values: ARRAY OF INTEGER;
BEGIN (* ExerciseTwo *)
  Write('Enter length of Dataset: ');
  Read(countOfValues);
  setlength(values, countOfValues);

  FOR i := 0 TO countOfValues - 1 DO BEGIN
    Write('Value - ', i+1, ': ');
    Read(values[i]);
  END; (* FOR *)

  Sort(values);

  TextColor(Green);
  WriteLn('Median: ', Median(values))
END. (* ExerciseTwo *)