let _ = Js.export_all
  (object%js
    method hello = Guest.hello ()
  end)
