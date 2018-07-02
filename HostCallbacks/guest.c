#include "guest.h"

#include <stdio.h>

int greet(char* buffer, const char* guest, f_type f) {
    char hello[100];
    f(hello, "Hello");
    return sprintf(buffer, "%s %s, I'm C!", hello, guest);
}
