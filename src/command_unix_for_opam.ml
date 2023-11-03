open! Base

let run cmd =
  let open Build_info.V1 in
  let version =
    match version () with
    | Some version -> Version.to_string version
    | None -> "None_during_development"
  in
  let build_info =
    let statically_linked_libraries =
      Statically_linked_libraries.to_list ()
      |> List.map ~f:(fun lib ->
        [%sexp
          { name = (Statically_linked_library.name lib : string)
          ; version =
              (Statically_linked_library.version lib |> Option.map ~f:Version.to_string
               : string option)
          }])
    in
    [%sexp { statically_linked_libraries : Sexp.t list }]
  in
  Command_unix.run ~version ~build_info:(Sexp.to_string_mach build_info) cmd
;;
