#include "guest.h"

#include <stdio.h>

int guest(char* buffer, const char* host) {
    return sprintf(buffer, "Hello %s, I'm C!", host);
}
