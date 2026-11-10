PROGRAM Wrapper;

  FUNCTION CountDigits(value, d: INTEGER): INTEGER;
    VAR
      res: INTEGER;
  BEGIN (* CountDigits *)
    res := 0;
    REPEAT
      IF (value MOD 10 = d) THEN BEGIN
        res := res + 1;
      END; (* IF *)
      value := value DIV 10;
    UNTIL (value <= 0); (* REPEAT *)
    CountDigits := res;
  END; (* CountDigits *)

  VAR
    value, digit: INTEGER;

BEGIN (* Wrapper *)
  Write('Enter value: ');
  Read(value);
  Write('What digit should be counted: ');
  Read(digit);
  
  WriteLn();
  WriteLn(value, ' has ', CountDigits(value, digit), ' times digit ', digit);
  WriteLn();
END. (* Wrapper *)