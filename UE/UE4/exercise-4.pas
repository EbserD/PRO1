PROGRAM ExerciseFour;
  CONST
    max = 4;
  TYPE
    IntArray = ARRAY[0..max-1] OF INTEGER;

  FUNCTION MissingElement(a: IntArray; n: INTEGER): INTEGER;
    VAR
      sum, i: INTEGER;
  BEGIN (* MissingElement *)
  sum := 0;
  FOR i := 0 TO n - 1 DO BEGIN
    sum := sum + a[i];
  END; (* FOR *)  
  MissingElement := (((n+1)*(n+2)) div 2) - sum;
  END; (* MissingElement *)

  VAR
    exampleArray: IntArray;

BEGIN (* ExerciseFour *)
  exampleArray[0] := 3;
  exampleArray[1] := 2;
  exampleArray[2] := 4;
  exampleArray[3] := 5;

  WriteLn('Missing Element: ', MissingElement(exampleArray, max));

END. (* ExerciseFour *)