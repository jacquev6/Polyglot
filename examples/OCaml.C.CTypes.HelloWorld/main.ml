open Ctypes
open Foreign

let hello = foreign "hello" (void @-> returning void)

let () = begin
    print_endline "Host (OCaml) says 'Hello Guest!'";
    hello ();
end
