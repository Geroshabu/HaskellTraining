-- xs と ys をマージする
-- xs と ys は既にソート済みとする
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
	| x > y     = x : (merge xs (y:ys))
	| otherwise = y : (merge (x:xs) ys)

mergeSort [] = []
mergeSort [n] = [n]
mergeSort ns = merge (mergeSort left) (mergeSort right)
	where
		left = take (div (length ns) 2) ns
		right = drop (div (length ns) 2) ns
