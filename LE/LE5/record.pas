PROGRAM RecordPlayground;
  TYPE
    Point = RECORD
      x, y: INTEGER;
    END; (* Point *)  

  VAR
    point1, point2: Point;

BEGIN (* RecordPlayground *)
  
  point1.x := 1;
  point1.y := 1;

  point2.x := 2;
  point2.y := 2;

END. (* RecordPlayground *)