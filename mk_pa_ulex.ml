let s = float_of_string (String.sub (Sys.ocaml_version) 0 4) in
if (s <= 3.09) then (
  print_endline "Old camlp4 (loc)";
  Sys.command "sed s/_loc/loc/ < pa_ulex.ml.src > pa_ulex.ml"
)
else  (
  print_endline "New camlp4 (_loc)";
  Sys.command "cp pa_ulex.ml.src pa_ulex.ml"
)
