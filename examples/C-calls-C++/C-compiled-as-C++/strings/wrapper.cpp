#include <string.h>

#include "guest.hpp"

void wrapper(char* buffer, const char* guest_name) {
    strcpy(buffer, guest(guest_name).c_str());
}
