#include "wrapper.hpp"

extern "C" {
#include "guest.h"
}

std::string greet(const std::string& guest) {
    char greeting[100] = {};
    greet(greeting, guest.c_str());
    return greeting;
}
