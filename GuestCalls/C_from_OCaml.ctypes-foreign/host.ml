let hello = Foreign.foreign "hello" Ctypes.(void @-> returning void)

let () = hello ()
