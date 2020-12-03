#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>

#include "guest.h"

value wrapper_stub(value guest_name) {
    CAMLparam1(guest_name);
    char buffer[100];
    guest(buffer, String_val(guest_name));
    CAMLlocal1(r);
    r = caml_copy_string(buffer);
    CAMLreturn(r);
}
