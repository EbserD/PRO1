PROGRAM ExerciseFour;
  USES
    Crt;
  
  CONST
    MAX_ARRAY_LENGTH = 100;
    WEEKDAYS = 7;

  TYPE
    Weekday = (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
    RealArray = ARRAY [0..MAX_ARRAY_LENGTH-1] OF REAL;
    WeekdayValues = ARRAY [0..WEEKDAYS-1] OF REAL;

  PROCEDURE AveragePerWeekday(measuredValues: RealArray; measuredValuesCount: INTEGER; VAR avg: WeekdayValues);
  VAR
    sumValues: WeekdayValues;
    countValues: WeekdayValues;
    i: INTEGER;
  BEGIN (* AveragePerWeekday *)
    FOR i := 0 TO WEEKDAYS - 1 DO BEGIN
      sumValues[i] := 0;
      countValues[i] := 0;
    END; (* FOR *)

    FOR i := 0 TO measuredValuesCount - 1 DO BEGIN
      sumValues[i mod 7] := sumValues[i mod 7] + measuredValues[i];
      countValues[i mod 7] := countValues[i mod 7] + 1;
      avg[i MOD 7] := sumValues[i MOD 7] / countValues[i mod 7]; 
    END; (* FOR *)  
  END; (* AveragePerWeekday *)

  VAR
    dataArr: RealArray;
    dataArrLength, i: INTEGER;
    averageValues: WeekdayValues;

BEGIN (* ExerciseFour *)
  dataArrLength := 0;
  FOR i := 0 TO WEEKDAYS - 1 DO BEGIN
    averageValues[i] := 0;
  END; (* FOR *)

  REPEAT
    IF (dataArrLength > MAX_ARRAY_LENGTH) THEN BEGIN
      WriteLn('Amount of Datasets can not be greater than ', MAX_ARRAY_LENGTH)
    END; (* IF *)

    Write('Enter the amount of Datasets: ');
    ReadLn(dataArrLength);
  UNTIL (dataArrLength < MAX_ARRAY_LENGTH); (* REPEAT *)

  FOR i := 0 TO dataArrLength - 1 DO BEGIN
    Write('Enter Value - ', i + 1, ': ');
    ReadLn(dataArr[i]);
  END; (* FOR *)

  AveragePerWeekday(dataArr, dataArrLength, averageValues);

  TextColor(Green);
  FOR i := 0 TO WEEKDAYS - 1 DO BEGIN
    WriteLn('Average for ', Weekday(i), ' : ', averageValues[i]:5:2);
  END; (* FOR *)
  
END. (* ExerciseFour *)