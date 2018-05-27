#include "wrapper.hpp"

#include "../guest.h"

std::string greet(const std::string& guest) {
    char greeting[100] = {};
    greet(greeting, guest.c_str());
    return greeting;
}
