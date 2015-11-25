#include "../../guests/C++/hello.hpp"

extern "C" void hello_c() {
    hello();
}