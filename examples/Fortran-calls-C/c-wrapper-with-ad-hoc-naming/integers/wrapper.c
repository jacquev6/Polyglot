#include "guest.h"

int wrapper_(int* pa, int* pb) {
    return guest(*pa, *pb);
}
