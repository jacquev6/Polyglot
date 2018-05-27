#include <string.h>

#include "../guest.hpp"

void greet(char* buffer, const char* guest) {
    std::string greeting = greet(guest);
    strcpy(buffer, greeting.c_str());
}
