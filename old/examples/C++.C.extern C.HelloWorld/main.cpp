#include <iostream>

extern "C" {
#include "../../guests/C/hello.h"
}

int main() {
    std::cout << "Host (C++) says 'Hello Guest!'" << std::endl;
    hello();
}
