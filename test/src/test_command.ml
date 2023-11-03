open! Base

let main = Command.basic ~summary:"test command" (Command.Param.return (fun () -> ()))
