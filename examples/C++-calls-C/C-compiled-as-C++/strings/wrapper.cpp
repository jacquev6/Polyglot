#include "wrapper.hpp"

#include "guest.h"

std::string wrapper(const std::string& guest_name) {
    char greeting[100] = {};
    guest(greeting, guest_name.c_str());
    return greeting;
}
