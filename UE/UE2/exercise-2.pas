(* Title:                                                 Author, 2026-10-28 *)
(* ------                                                                    *)
(* Description                                                               *)
(* ========================================================================= *)
PROGRAM ProgramName;
  TYPE
    IntArray = ARRAY OF INTEGER;
  VAR
    i: INTEGER;
    entries: IntArray;
    revenue, expenses, input: INTEGER;
BEGIN (* ProgramName *)
  revenue := 0;
  expenses := 0;
  setlength(entries, 0);

  REPEAT
    Read(input);
    setlength(entries,length(entries)+1);
    entries[length(entries) - 1] := input;
  UNTIL (input = 0); (* REPEAT *)

  FOR i := 0 TO length(entries) - 1 DO BEGIN
    IF (entries[i] > 0) THEN BEGIN
      revenue := revenue + entries[i]
    END ELSE BEGIN
      expenses := expenses + entries[i]
    END; (* IF *)
  END; (* FOR *)

  WriteLn('Revenue: ', revenue);
  WriteLn('Expenses: ', expenses);
  WriteLn('Winnings: ', revenue + expenses);

END. (* ProgramName *)
