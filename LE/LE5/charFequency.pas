PROGRAM CharFrequency;
  TYPE
    CharMap = ARRAY [CHAR] OF INTEGER;

  VAR
    charCounters: CharMap;
    inputString: STRING;
    i: INTEGER;
    c: CHAR;

  PROCEDURE Init;
  BEGIN (* Init *)
    FOR c := Low(CHAR) TO High(CHAR) DO BEGIN
      charCounters[c] := 0;
    END; (* FOR *)    
  END; (* Init *)


BEGIN (* CharFrequency *)
  Init(charCounters);

  Write('Enter some string: ');
  ReadLn(inputString);

  FOR i := 1 TO Length(inputString) DO BEGIN
    charCounters[inputString[i]] := charCounters[inputString[i]] + 1
  END; (* FOR *)

  FOR c := Low(CHAR) TO High(CHAR) DO BEGIN
    IF (charCounters[c] > 0) THEN BEGIN
      WriteLn('Letter "', c, '": ', charCounters[c]);      
    END; (* IF *)
  END; (* FOR *)

END. (* CharFrequency *)