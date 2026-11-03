(* Title: Exercise 1                                 Ebser/Koidl, 2026-10-29 *)
(* ------                                                                    *)
(* Max Calculation                                                           *)
(* ========================================================================= *)

PROGRAM ExerciseOne;
  USES
    Crt, MathUtils;
  VAR
    countOfValues, i: INTEGER;
    values: ARRAY OF REAL;
BEGIN (* ExerciseOne *)
  Write('Enter number of Values to compare: ');
  Read(countOfValues);
  setlength(values, countOfValues);

  FOR i := 0 TO countOfValues - 1 DO BEGIN
    Write('Value - ', i + 1, ': ');
    Read(values[i]);
  END; (* FOR *)

  TextColor(Green);
  WriteLn('Maximum Value is: ', Max(values))
END. (* ExerciseOne *)