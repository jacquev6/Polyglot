extern "C" {
    #include "guest.h"
}

int wrapper(int a, int b) {
    return guest(a, b);
}
