#include <iostream>

extern "C" {
#include "hello.h"
}

int main() {
    std::cout << "HOST (C++) says 'Hello Guest!'" << std::endl;
    hello();
}
