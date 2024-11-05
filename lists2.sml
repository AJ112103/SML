fun listAdd ([], []) = []
 | listAdd(x::xs, []) = (x + 0) :: listAdd(xs, [])
 | listAdd ([], y::ys) = (0 + y) :: listAdd([], ys)
 | listAdd(x::xs, y::ys) = (x + y) :: listAdd(xs, ys);


 
