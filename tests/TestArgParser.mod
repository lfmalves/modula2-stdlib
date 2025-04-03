(*		tests/TestArgParser.mod		*)

IMPLEMENTATION MODULE TestArgParser;

FROM SYSTEM IMPORT ADDRESS;
FROM InOut IMPORT WriteString, WriteLn;
FROM ArgParser IMPORT HasFlag, GetValue;

PROCEDURE TestArgParser_Main(argc: INTEGER; argv: ADDRESS);
VAR
  value: ARRAY [0..255] OF CHAR;
BEGIN
  IF HasFlag("--help") THEN
    WriteString("Usage: ./test_argparser [--name John] [--help]"); WriteLn;
  END;

  IF GetValue("--name", value) THEN
    WriteString("Hello, "); WriteString(value); WriteLn;
  END;
END TestArgParser_Main;

END TestArgParser.
