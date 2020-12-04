#include "wrapper.h"

int guest_(int*, int*);

int wrapper(int a, int b) {
    return guest_(&a, &b);
}
