#include <string.h>

#include "guest.hpp"

extern "C" void wrapper(char* buffer, const char* guest_name) {
    strcpy(buffer, guest(guest_name).c_str());
}
