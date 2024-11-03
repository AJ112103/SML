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

