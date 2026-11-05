PROGRAM OrdinalDataTypes;
  TYPE
    WeekDay = (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
    Month = 1..12;

  VAR
    num: INTEGER;
    chr: CHAR;
    day: WeekDay; 

BEGIN (* OrdinalDataTypes *)
  num := 10;
  WriteLn('num       = ', num);
  WriteLn('Pred(num) = ', Pred(num));
  WriteLn('Succ(num) = ', Succ(num));
  WriteLn('High(num) = ', High(num));
  WriteLn('Low(num)  = ', Low(num));
  WriteLn('Ord(num)  = ', Ord(num));
  WriteLn;

  chr := 'c';
  WriteLn('chr       = ', chr);
  WriteLn('Pred(chr) = ', Pred(chr));
  WriteLn('Succ(chr) = ', Succ(chr));
  WriteLn('High(chr) = ', High(chr));
  WriteLn('Low(chr)  = ', Low(chr));
  WriteLn('Ord(chr)  = ', Ord(chr));
  WriteLn;

  day := Wednesday;
  WriteLn('day       = ', day);
  WriteLn('Pred(day) = ', Pred(day));
  WriteLn('Succ(day) = ', Succ(day));
  WriteLn('High(day) = ', High(day));
  WriteLn('Low(day)  = ', Low(day));
  WriteLn('Ord(day)  = ', Ord(chr));
  WriteLn;

END. (* OrdinalDataTypes *)