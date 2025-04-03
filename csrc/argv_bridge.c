// csrc/argv_bridge.c

#include <string.h>

void argvToString(char *src, char *dest, int max) {
    strncpy(dest, src, max - 1);
    dest[max - 1] = '\0';
}
