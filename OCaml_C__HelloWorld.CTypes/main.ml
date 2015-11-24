open Ctypes
open Foreign

let hello = foreign "hello" (void @-> returning void)

let () = begin
    print_string "HOST (OCaml) says 'Hello Guest!'\n";
    Core.Std.Out_channel.flush Core.Std.Out_channel.stdout;
    hello ();
end
