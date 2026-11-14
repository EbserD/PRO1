PROGRAM ExerciseThree;
  USES
    Crt;

  FUNCTION AmountOfChar(text: STRING; queryChar: CHAR): INTEGER;
    VAR
      count, i: INTEGER;
  BEGIN (* Min *)
    count := 0;
    FOR i := 1 TO Length(text) DO BEGIN
      IF (text[i] = queryChar) THEN BEGIN
        count := count + 1;
      END; (* IF *)
    END; (* FOR *)
    AmountOfChar := count;
  END; (* Min *)

  VAR
    queryChar: CHAR;
    inputString: STRING;

BEGIN (* ExerciseThree *)
  Write('Enter some string text: ');
  ReadLn(inputString);

  Write('Enter letter you would like to count: ');
  ReadLn(queryChar);

  TextColor(Green);
  WriteLn('String "', queryChar, '" was found ', AmountOfChar(inputString, queryChar), ' times!');

END. (* ExerciseThree *)