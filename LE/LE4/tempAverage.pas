PROGRAM TempAverage;
  TYPE
    Day = (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
  VAR
    temperatures: ARRAY [Day] OF REAL;
    i: Day;
    sum: Real;
BEGIN (* TempAverage *)

  temperatures[Monday] := 12;
  temperatures[Tuesday] := 15;
  temperatures[Wednesday] := 14;
  temperatures[Thursday] := 17;
  temperatures[Friday] := 19;
  temperatures[Saturday] := 16;
  temperatures[Sunday] := 13;

  sum := 0;
  FOR i := Monday TO High(i) DO BEGIN
    WriteLn(temperatures[i]);
    sum := sum + temperatures[i];
  END; (* FOR *)

  WriteLn('Sum of temperatures: ', sum/length(temperatures):5:3);
  WriteLn('Arr Low: ', Low(temperatures));
  // WriteLn('Sum of temperatures: ', High(temperatures));

END. (* TempAverage *)