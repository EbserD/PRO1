(* Title: ArrayUtils                                       Ebser, 2026-10-29 *)
(* ------                                                                    *)
(* Utility Functions for Arrays                                              *)
(* ========================================================================= *)

UNIT ArrayUtils;

INTERFACE

  PROCEDURE Sort(VAR arr: ARRAY OF INTEGER) OVERLOAD;
  PROCEDURE Sort(VAR arr: ARRAY OF REAL) OVERLOAD;

IMPLEMENTATION

  PROCEDURE Sort(VAR arr: ARRAY OF INTEGER);
    VAR
      i: INTEGER;
      swapped: BOOLEAN;
  BEGIN (* Sort *)
    swapped := false;
    FOR i := 0 TO length(arr) - 2 DO BEGIN
      IF (arr[i] > arr[i + 1]) THEN BEGIN
        arr[i] := arr[i] + arr[i + 1];
        arr[i + 1] := arr[i] - arr[i + 1];
        arr[i] := arr[i] - arr[i + 1];
        swapped := true;
      END; (* IF *)
    END; (* FOR *)

    IF (swapped) THEN BEGIN
      Sort(arr);  
    END; (* IF *)
  END; (* Sort *)

  PROCEDURE Sort(VAR arr: ARRAY OF REAL);
    VAR
      i: INTEGER;
      swapped: BOOLEAN;
  BEGIN (* Sort *)
    swapped := false;
    FOR i := 0 TO length(arr) - 2 DO BEGIN
      IF (arr[i] > arr[i + 1]) THEN BEGIN
        arr[i] := arr[i] + arr[i + 1];
        arr[i + 1] := arr[i] - arr[i + 1];
        arr[i] := arr[i] - arr[i + 1];
        swapped := true;
      END; (* IF *)
    END; (* FOR *)

    IF (swapped) THEN BEGIN
      Sort(arr);  
    END; (* IF *)
  END; (* Sort *)

BEGIN (* ArrayUtils *)
  
END. (* ArrayUtils *)
