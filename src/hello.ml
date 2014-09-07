open Js
open Dom
(* module Window = Dom_html *)
module Window = Dom_html

let _ = Js.Unsafe.eval_string "
  console.log('hello js of ocaml!');
"
let console = Js.Unsafe.variable "console"

(* let onload _ = myConsole##log (Js.string "hello world") *)

(* let _ = Html.addEventListener Window.document "load" *)
  (* (Window.handler (fun _ -> myConsole##log (Js.string "hello world"))) *)

(* let google = Unsafe.variable "google";; *)

(* let f x y = x + y *)

(* type v = *)
   (* | Int of int *)
   (* | Float of float *)

(* print_string "print string" *)

(* print_int (f 3 5) *)

(* let start _ = *)
  (* Js._false *)


(* let _ = addEventListener "load" square *)

(* let square x = x * x *)
(* let () = (Js.Unsafe.coerce Window.window)##square <- Js.wrap_callback Square.square *)

(* Window.console.log "ffff";; *)
(* Window.console.log "ffff";; *)

(* let _ = Dom_html.window##onload <- Dom_html.handler start;; *)

(* class type g = object *)
  (* method load : js_string t -> js_string t -> 'a t -> unit meth *)
  (* method setOnLoadCallback : (unit -> unit) -> unit meth *)
(* end;; *)

let () =
  ignore
    begin
      Window.addEventListener
        Window.window
        Window.Event.load
        (Window.handler
          (fun ev ->
            (* Firebug.console##log (Js.string "hello world addEventListener"); *)
            console##log (Js.string "hello world addEventListener");
            Js._true))
        Js._true
    end
