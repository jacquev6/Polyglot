#include <sstream>

#include "guest.hpp"

std::string guest(const std::string& guest) {
    std::ostringstream oss;
    oss << "Hello " << guest << ", I'm C++!";
    return oss.str();
}
