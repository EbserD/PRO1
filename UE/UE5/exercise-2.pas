PROGRAM ExerciseTwo;
  USES
    Crt;
  
  CONST
    MAX_ARRAY_LENGTH = 10;

  TYPE
    CharArray = ARRAY [0..MAX_ARRAY_LENGTH-1] OF CHAR;

  FUNCTION AmountOfChar(arr: CharArray; arrLength: INTEGER; queryChar: CHAR): INTEGER;
    VAR
      count, i: INTEGER;
  BEGIN (* Min *)
    count := 0;
    FOR i := 0 TO arrLength - 1  DO BEGIN
      IF (arr[i] = queryChar) THEN BEGIN
        count := count + 1;
      END; (* IF *)
    END; (* FOR *)
    AmountOfChar := count;
  END; (* Min *)

  VAR
    data: CharArray;
    dataCount, i: INTEGER;
    queryChar: CHAR;

BEGIN (* ExerciseTwo *)
  dataCount := 0;

  REPEAT
    IF (dataCount > MAX_ARRAY_LENGTH) THEN BEGIN
      WriteLn('Amount of Datasets can not be greater than ', MAX_ARRAY_LENGTH)
    END; (* IF *)

    Write('Enter the amount of Datasets: ');
    ReadLn(dataCount);
  UNTIL (dataCount < MAX_ARRAY_LENGTH); (* REPEAT *)

  FOR i := 0 TO dataCount - 1 DO BEGIN
    Write('Enter Value - ', i + 1, ': ');
    ReadLn(data[i]);
  END; (* FOR *)

  Write('Enter letter you would like to count: ');
  Read(queryChar);

  TextColor(Green);
  WriteLn('Letter "', queryChar, '" was found ', AmountOfChar(data, dataCount, queryChar), ' times!');

END. (* ExerciseTwo *)