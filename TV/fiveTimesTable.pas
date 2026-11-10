PROGRAM FiveTimesTable;

  PROCEDURE MultiplesOfFive(lowerBound: INTEGER; upperBound: INTEGER);
  BEGIN (* MultiplesOfFive *)
    FOR lowerBound := lowerBound TO upperBound DO BEGIN
      IF (lowerBound mod 5 = 0) THEN BEGIN
        Write(lowerBound, ' ');
      END; (* IF *)
    END; (* FOR *)    
  END; (* MultiplesOfFive *)

  VAR
    lowerBound, upperBound: INTEGER;
BEGIN (* FiveTimesTable *)
  Write('Enter lower bound: ');
  Read(lowerBound);
  Write('Enter upper bound: ');
  Read(upperBound);
  
  MultiplesOfFive(lowerBound, upperBound);

  WriteLn();

END. (* FiveTimesTable *)