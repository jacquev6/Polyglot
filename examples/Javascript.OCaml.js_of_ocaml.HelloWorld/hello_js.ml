let () = Js.Unsafe.global##hello <- Js.wrap_callback Hello.hello
