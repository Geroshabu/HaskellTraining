fib3 n = case n of
  0 -> 0
  1 -> 1
  _ | n > 1 -> (fib3 (n - 1)) + (fib3 (n - 2))
  
