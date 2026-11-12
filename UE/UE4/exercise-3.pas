PROGRAM ExerciseThree;
  CONST
    maxArrLength = 100;
  TYPE
    IntArray = ARRAY [0..maxArrLength] OF INTEGER;

  FUNCTION FindIndex(arr: IntArray; length: INTEGER; value: INTEGER): INTEGER;
    VAR
      i, res: INTEGER;
  BEGIN (* FindIndex *)
    res := -1;
    FOR i := 0 TO length - 1 DO BEGIN
      IF (value = arr[i]) THEN BEGIN
        res := i;
        break;
      END; (* IF *)
    END; (* FOR *)
    FindIndex := res;
  END; (* FindIndex *)

  FUNCTION MissingElement(arr: IntArray; length: INTEGER): INTEGER;
    VAR
      i, res: INTEGER;
  BEGIN (* MissingElement *)
    FOR i := 0 TO length - 1 DO BEGIN
      IF (FindIndex(arr, length, i + 1) < 0) THEN BEGIN
        res := i + 1;
        break;
      END; (* IF *)
    END; (* FOR *)
    MissingElement := res;
  END; (* MissingElement *)

  VAR
    exampleArrLength: INTEGER;
    exampleArr: IntArray;

BEGIN (* ExerciseThree *)
  exampleArrLength := 4;

  exampleArr[0] := 1;
  exampleArr[1] := 2;
  exampleArr[2] := 4;
  exampleArr[3] := 5;


  WriteLn('Missing Element: ', MissingElement(exampleArr, exampleArrLength));

END. (* ExerciseThree *)