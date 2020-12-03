let _ = Js.export_all
  (object%js
    method greet guest = Js.string (Guest.greet (Js.to_string guest))
  end)
