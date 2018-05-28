#include "guest.hpp"

#include <sstream>

std::string greet(const std::string& guest) {
    std::ostringstream oss;
    oss << "Hello " << guest << ", I'm C++!";
    return oss.str();
}
