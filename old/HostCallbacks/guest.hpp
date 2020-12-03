#include <string>

#include <boost/function.hpp>

std::string greet(const std::string&, boost::function1<std::string, std::string>);
