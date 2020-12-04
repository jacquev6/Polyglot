#include <string.h>

#include "guest.hpp"

extern "C" void wrapper(char* buffer, const char* host) {
    strcpy(buffer, guest(host).c_str());
}
