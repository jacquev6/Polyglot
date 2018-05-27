#include <stdio.h>

int greet(char* buffer, const char* guest) {
    return sprintf(buffer, "Hello %s, I'm C!", guest);
}
