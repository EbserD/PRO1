PROGRAM ArrayExt;

  CONST
    MAX_ARRAY_LENGTH = 25;
  
  TYPE
    IntArray = ARRAY [0..MAX_ARRAY_LENGTH - 1] OF INTEGER;

  PROCEDURE Insert(VAR arr: IntArray; VAR arrLength: INTEGER; value: INTEGER);
    VAR
      i: INTEGER;
  BEGIN (* Insert *)
    
    IF (arrLength >= MAX_ARRAY_LENGTH) THEN BEGIN
      WriteLn('ERROR: Max array length reached! Can not insert new element!');
      EXIT;
    END; (* IF *)

    {$B+}; (* Turn on full evaluation of boolean expression *)
    {$B-}; (* Turn off full evaluation of boolean expression *)

    i := arrLength - 1;
    WHILE ((i >= 0) AND (arr[i] >= value)) DO BEGIN
      arr[i + 1] := arr[i];
      i := i - 1;
    END; (* WHILE *)

    arr[i+1] := value;
    arrLength := arrLength + 1;
  
  END; (* Insert *)

  PROCEDURE PrintArray(arr: IntArray; arrLength: INTEGER);
    VAR
      i: INTEGER;
  BEGIN (* PrintArray *)
    FOR i := 0 TO arrLength - 1 DO BEGIN
      Write(arr[i]:5);
    END; (* FOR *)
    WriteLn;    
  END; (* PrintArray *)

  VAR
    exampleArr: IntArray;
    exampleArrLength, i: INTEGER;

BEGIN (* ArrayExt *)
  exampleArrLength := 6;
  FOR i := 0 TO exampleArrLength - 1 DO BEGIN
    exampleArr[i] := i * 2;
  END; (* FOR *)


  PrintArray(exampleArr, exampleArrLength);
  Insert(exampleArr, exampleArrLength, 0);
  PrintArray(exampleArr, exampleArrLength);

  // Ln(2);

END. (* ArrayExt *)