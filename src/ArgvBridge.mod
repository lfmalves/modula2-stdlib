(*    src/ArgvBridge.mod    *)

IMPLEMENTATION MODULE ArgvBridge;

FROM SYSTEM IMPORT ADDRESS;
FROM Storage IMPORT ALLOCATE, DEALLOCATE;

PROCEDURE argvToString(src: ADDRESS; VAR dest: CStr; max: INTEGER);
VAR
  csrc: POINTER TO ARRAY [0..MaxLen] OF CHAR;
  i: INTEGER;
BEGIN
  csrc := src;
  i := 0;
  WHILE (i < max - 1) AND (csrc^[i] # 0C) DO
    dest[i] := csrc^[i];
    INC(i);
  END;
  dest[i] := 0C;
END argvToString;

END ArgvBridge.
