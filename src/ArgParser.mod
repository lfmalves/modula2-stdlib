(*    src/ArgParser.mod    *)

IMPLEMENTATION MODULE ArgParser;

FROM Strings IMPORT CompareStr, Copy;

CONST
  MAX_ARGS = 64;
  
VAR
  args: ARRAY [0..MAX_ARGS - 1] OF String;
  numArgs: INTEGER;

PROCEDURE SetNumArgs(n: INTEGER);
BEGIN
  numArgs := n;
END SetNumArgs;

PROCEDURE SetArg(index: INTEGER; arg: String);
BEGIN
  IF index < MAX_ARGS THEN
    Copy(arg, 0, 255, args[index]);
  END;
END SetArg;

PROCEDURE HasFlag(flag: String): BOOLEAN;
VAR i: INTEGER;
BEGIN
  FOR i := 0 TO numArgs - 1 DO
    IF CompareStr(args[i], flag) = 0 THEN
      RETURN TRUE;
    END;
  END;
  RETURN FALSE;
END HasFlag;

PROCEDURE GetValue(key: String; VAR value: String): BOOLEAN;
VAR i: INTEGER;
BEGIN
  FOR i := 0 TO numArgs - 2 DO
    IF CompareStr(args[i], key) = 0 THEN
      Copy(args[i+1], 0, 255, value);
      RETURN TRUE;
    END;
  END;
  RETURN FALSE;
END GetValue;

END ArgParser.
