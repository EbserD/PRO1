PROGRAM ExerciseOne;
  CONST
    dataArrLength = 5;
  TYPE
    IntArray = ARRAY [0..dataArrLength] OF INTEGER;

  PROCEDURE Invert(VAR arr: IntArray; length: INTEGER);
    VAR
      i: INTEGER;
  BEGIN (* Invert *)
    FOR i := 0 TO (length div 2) - 1 DO BEGIN
      arr[i] := arr[i] + arr[length-i-1];
      arr[length-i-1] := arr[i] - arr[length-i-1];
      arr[i] := arr[i] - arr[length-i-1];
    END; (* FOR *)
  END; (* Invert *)

  VAR
    i: INTEGER;
    dataArr: IntArray;
BEGIN (* ExerciseOne *)
  
  FOR i := 0 TO dataArrLength - 1 DO BEGIN
    Write('Enter value ', i + 1, ': ');
    Read(dataArr[i]);
  END; (* FOR *)

  Invert(dataArr, dataArrLength);

  FOR i := 0 TO dataArrLength - 1 DO BEGIN
    WriteLn('New value ', i + 1, ': ', dataArr[i]);
  END; (* FOR *)
END. (* ExerciseOne *)