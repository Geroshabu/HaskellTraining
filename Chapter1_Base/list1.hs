sum' [] = 0
sum' (x:xs) = x + (sum' xs)

product' [] = 1
product' (x:xs) = x * (product' xs)

take' n xs | n < 1 = []
take' n [] = []
take' n (x:xs) = x : (take' (n-1) xs)

drop' n xs | n < 1 = xs
drop' n [] = []
drop' n (x:xs) = drop' (n-1) xs

reverse' [] = []
reverse' (x:xs) = (reverse' xs) ++ [x]
