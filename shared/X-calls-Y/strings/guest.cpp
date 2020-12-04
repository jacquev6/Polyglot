#include <sstream>

#include "guest.hpp"

std::string guest(const std::string& host) {
    std::ostringstream oss;
    oss << "Hello " << host << ", I'm C++!";
    return oss.str();
}
