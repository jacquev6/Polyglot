#include <stdio.h>

#include "wrapper.h"

int main() {
    char greeting[100];
    wrapper(greeting, "C");
    printf("Guest said: %s\n", greeting);
}
