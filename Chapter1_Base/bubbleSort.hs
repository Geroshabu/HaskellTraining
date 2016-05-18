-- 先頭から末尾に向かって順に比較処理
-- 末尾に最小値が移動する
bubble1 [s] = [s]
bubble1 (s1:s2:ss)
	| s1 < s2 = s2 : (bubble1 (s1:ss))
	| otherwise = s1 : (bubble1 (s2:ss))

-- 降順にソート
bubbleSort [] = []
bubbleSort ns = (bubbleSort remain) ++ [min]
	where
		sortedList = bubble1 ns
		len = length sortedList
		min = sortedList !! (len-1)
		remain = take (len-1) sortedList
