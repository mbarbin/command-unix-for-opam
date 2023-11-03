(** This util library is meant to improve compatibility of core commands with the
    opam distribution process.

    The current usage is to replace [Command_unix.run] by
    [Command_unix_for_opam.run] if the binary is meant to be distributed with
    opam, so as to improve certain aspects of the command.

    As of now, this libraries takes care of improving [version], but maybe this
    could grow in the future. *)

(** [run cmd] is the same as [Command_unix.run cmd] but adds extra parameters so
    that invocations of the command with [-version] outputs the package
    version. *)
val run : Command.t -> unit
