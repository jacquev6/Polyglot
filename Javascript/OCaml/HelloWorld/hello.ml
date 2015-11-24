let hello () = print_string("GUEST (OCaml) says 'Hello World!'\n")

let () = Js.Unsafe.global##hello <- Js.wrap_callback hello
