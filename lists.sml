fun sum_list(xs : int list) =
	if null xs
	then 0
	else hd xs + sum_list(tl xs)

fun length(xs : 'a list) = 
	if null xs
	then 0
	else 1 + length(tl xs)

fun countdown(x : int) = 
	if x = 0
	then []
	else 
	x :: countdown(x-1)

fun append(xs : int list, ys : int list) = 
	if null xs
	then ys
	else hd xs :: append(tl xs, ys)

fun map(f, []) = []
  | map (f, head :: tail) = f(head) :: map(f, tail);

val l = [1, 2, 3, 4, 5, 6, 7];
fun f x = x + 1;

(* Using map to apply function f to each element in list l *)
map(f, l);

(* Generating a list of boolean values indicating whether each element is even *)
val oddEven = map(fn x => if x mod 2 = 0 then true else false, l);

(* Custom filter function to select elements based on a predicate *)
fun filter(pred, []) = []
  | filter(pred, head :: tail) =
      if pred(head) then
          head :: filter(pred, tail)
      else
          filter(pred, tail);

(* Predicate function to check if a number is even *)
val even = fn x => x mod 2 = 0;

(* Applying the filter function to get only even numbers from list l *)
filter(even, l);

(* Insert function to insert an element x into a sorted list *)
fun insert(x, []) = [x]
  | insert(x, head :: tail) =
      if x < head then x :: head :: tail
      else head :: insert(x, tail);

