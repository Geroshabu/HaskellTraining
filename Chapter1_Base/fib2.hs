fib2 n
	| n == 0 = 0
	| n == 1 = 1
	| n > 1  = (fib2 (n - 1)) + (fib2 (n - 2))
