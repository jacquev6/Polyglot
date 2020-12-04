#include "wrapper.hpp"

#include "guest.h"

std::string wrapper(const std::string& host) {
    char greeting[100] = {};
    guest(greeting, host.c_str());
    return greeting;
}
