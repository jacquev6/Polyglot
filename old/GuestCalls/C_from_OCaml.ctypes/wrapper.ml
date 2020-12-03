let foreign_greet = Foreign.foreign "greet" Ctypes.(ocaml_bytes @-> string @-> returning int)

let greet guest =
    let ret = Bytes.create 100 in
    ignore (foreign_greet (Ctypes.ocaml_bytes_start ret) guest);
    Bytes.to_string ret
