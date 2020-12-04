#include "guest.h"

#include <stdio.h>

int guest(char* buffer, const char* guest, function_t f, closure_t closure) {
    char hello[100];
    f(hello, "Hello", closure);
    return sprintf(buffer, "%s %s, I'm C!", hello, guest);
}
