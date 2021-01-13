#include <iostream>

#include "wrapper.hpp"

int main() {
    std::cout << "Guest said: <<" << wrapper("C++") << ">>" << std::endl;
    std::cout << "Guest said: <<" << wrapper("C++ again") << ">>" << std::endl;
}
