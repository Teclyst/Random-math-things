type t = F of (t -> t);;

let delta = F (fun (F x) -> x (F x));;

let app (F f) g = f g;;

app delta delta;;