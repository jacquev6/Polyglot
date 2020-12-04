let guest = Foreign.foreign "guest" Ctypes.(ocaml_bytes @-> string @-> returning int)

let wrapper host =
    let ret = Bytes.create 100 in
    ignore (guest (Ctypes.ocaml_bytes_start ret) host);
    Bytes.to_string ret
