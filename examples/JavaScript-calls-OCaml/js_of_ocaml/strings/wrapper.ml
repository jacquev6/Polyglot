open Js_of_ocaml

let _ = Js.export_all
  (object%js
    method wrapper host = Js.string (Guest.guest (Js.to_string host))
  end)
