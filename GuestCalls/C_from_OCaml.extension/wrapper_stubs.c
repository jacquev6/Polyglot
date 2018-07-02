#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>

#include "guest.h"

value greet_stub(value guest) {
    CAMLparam1(guest);
    char buffer[100];
    greet(buffer, String_val(guest));
    CAMLlocal1(r);
    r = caml_copy_string(buffer);
    CAMLreturn(r);
}
