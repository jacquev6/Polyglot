#include "guest.hpp"

#include <sstream>

std::string guest(const std::string& guest, boost::function1<std::string, std::string> f) {
    std::ostringstream oss;
    oss << f("Hello") << " " << guest << ", I'm C++!";
    return oss.str();
}
