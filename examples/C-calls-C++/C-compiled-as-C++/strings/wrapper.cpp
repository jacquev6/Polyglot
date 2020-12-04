#include <string.h>

#include "guest.hpp"

void wrapper(char* buffer, const char* host) {
    strcpy(buffer, guest(host).c_str());
}
