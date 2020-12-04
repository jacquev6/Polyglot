#include <string>

#include <boost/function.hpp>

std::string guest(const std::string&, boost::function1<std::string, std::string>);
