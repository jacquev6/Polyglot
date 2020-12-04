#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>

#include "guest.h"

value wrapper_stub(value host) {
    CAMLparam1(host);
    char buffer[100];
    guest(buffer, String_val(host));
    CAMLlocal1(r);
    r = caml_copy_string(buffer);
    CAMLreturn(r);
}
