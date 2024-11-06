fun foldl f acc [] = acc
 | foldl f acc (x::xs) = foldl f (f (x, acc)) xs;

val sum = foldl (fn (x, acc) => x + acc) 0 [1, 2, 3, 4];

fun foldr f acc [] = acc
| foldr f acc (x::xs) = f (x, foldr f acc xs);

val difference = foldr (fn (x, acc) => x - acc) 0 [25, 3, 4, 5];

fun evalPoly([], _) = 0
 | evalPoly(head::tail, x) = head + x * evalPoly(tail, x);

val y = evalPoly([1, 2, 3, 4], 2);

