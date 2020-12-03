#include <stdio.h>

#include "wrapper.h"

int main() {
    char greeting[100];
    greet(greeting, "C");
    printf("%s\n", greeting);
}
