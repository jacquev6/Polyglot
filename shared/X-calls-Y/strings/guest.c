#include "guest.h"

#include <stdio.h>

int guest(char* buffer, const char* guest) {
    return sprintf(buffer, "Hello %s, I'm C!", guest);
}
