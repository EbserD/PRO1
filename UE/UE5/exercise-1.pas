PROGRAM ExerciseOne;
  USES
    Crt;
  
  CONST
    MAX_ARRAY_LENGTH = 10;

  TYPE
    IntArray = ARRAY [0..MAX_ARRAY_LENGTH-1] OF INTEGER;

  FUNCTION Max(arr: IntArray; arrLength: INTEGER): INTEGER;
    VAR
      maxValue, i: INTEGER;
  BEGIN (* Max *)
    maxValue := arr[0];
    FOR i := 0 TO arrLength - 1  DO BEGIN
      IF (arr[i] > maxValue) THEN BEGIN
        maxValue := arr[i];
      END; (* IF *)
    END; (* FOR *)
    Max := maxValue;
  END; (* Max *)

  FUNCTION Min(arr: IntArray; arrLength: INTEGER): INTEGER;
    VAR
      minValue, i: INTEGER;
  BEGIN (* Min *)
    minValue := arr[0];
    FOR i := 0 TO arrLength - 1  DO BEGIN
      IF (arr[i] < minValue) THEN BEGIN
        minValue := arr[i];
      END; (* IF *)
    END; (* FOR *)
    Min := minValue;
  END; (* Min *)

  // This is bad practice ... according to Robert C. Martin functions should have a maximum of 3 params
  PROCEDURE MinMax(arr: IntArray; arrLength: INTEGER; VAR minValue, maxValue: INTEGER); 
  BEGIN (* MinMax *)
    minValue := Min(arr, arrLength);
    maxValue := Max(arr, arrLength);
  END; (* MinMax *)

  VAR
    arr: IntArray;
    dataCount, i, minValue, maxValue: INTEGER;

BEGIN (* ExerciseOne *)
  dataCount := 0;

  REPEAT
    IF (dataCount > MAX_ARRAY_LENGTH) THEN BEGIN
      WriteLn('Amount of Datasets can not be greater than ', MAX_ARRAY_LENGTH)
    END; (* IF *)

    Write('Enter the amount of Datasets: ');
    Read(dataCount);
  UNTIL ((dataCount < MAX_ARRAY_LENGTH) AND (dataCount > 0)); (* REPEAT *)

  FOR i := 0 TO dataCount - 1 DO BEGIN
    Write('Enter Value - ', i + 1, ': ');
    Read(arr[i]);
  END; (* FOR *)

  MinMax(arr, dataCount, minValue, maxValue);

  TextColor(Green);
  WriteLn('Smallest value: ', minValue);
  WriteLn('Greatest value: ', maxValue);

END. (* ExerciseOne *)