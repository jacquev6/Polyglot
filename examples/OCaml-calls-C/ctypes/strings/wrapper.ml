let guest = Foreign.foreign "guest" Ctypes.(ocaml_bytes @-> string @-> returning int)

let wrapper guest_name =
    let ret = Bytes.create 100 in
    ignore (guest (Ctypes.ocaml_bytes_start ret) guest_name);
    Bytes.to_string ret
