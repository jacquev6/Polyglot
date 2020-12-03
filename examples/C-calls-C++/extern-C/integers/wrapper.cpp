#include "guest.hpp"

extern "C" int wrapper(int a, int b) {
    return guest(a, b);
}
