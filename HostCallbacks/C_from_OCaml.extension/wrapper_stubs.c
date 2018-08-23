#include <stdio.h>

#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/callback.h>

#include "guest.h"

int wrapped_f(char* buffer, const char* s, void* closure) {
    const value* f = (value*) closure;
    return sprintf(buffer, "%s", String_val(caml_callback(*f, caml_copy_string(s))));
}

value greet_stub(value guest, value f) {
    CAMLparam2(guest, f);
    char buffer[100];
    greet(buffer, String_val(guest), wrapped_f, &f);
    CAMLlocal1(r);
    r = caml_copy_string(buffer);
    CAMLreturn(r);
}
