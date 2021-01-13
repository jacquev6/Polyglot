#include <stdio.h>

#include "wrapper.h"

int main() {
    char greeting[100];
    for(int i = 0; i != 100; ++i) {
        greeting[i] = 'a';
    }
    greeting[99] = 0;
    wrapper(greeting, "C");
    printf("Guest said: <<%s>>\n", greeting);
    for(int i = 0; i != 100; ++i) {
        greeting[i] = 'a';
    }
    greeting[99] = 0;
    wrapper(greeting, "C again");
    printf("Guest said: <<%s>>\n", greeting);
}
