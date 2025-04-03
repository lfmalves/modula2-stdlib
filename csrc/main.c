// csrc/main.c

#include <stdio.h>

extern void ArgParser_SetNumArgs(int argc);
extern void ArgParser_SetArg(int index, char* arg);
extern void TestArgParser_TestArgParser_Main(int argc, void* argv);

int main(int argc, char** argv) {
    ArgParser_SetNumArgs(argc);
    for (int i = 0; i < argc; i++) {
        ArgParser_SetArg(i, argv[i]);
    }

    TestArgParser_TestArgParser_Main(argc, NULL);
    return 0;
}
