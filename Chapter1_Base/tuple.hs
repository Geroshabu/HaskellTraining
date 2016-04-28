perpPoint a b c (p, q) = ((a*c + b*d)/bunbo, (b*c - a*d)/bunbo)
  where
    d = b*p - a*q
    bunbo = a*a + b*b
