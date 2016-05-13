import Data.Char

keepAlphabet ci maxCi
	| ci > maxCi = ci - 26
	| otherwise = ci

rotIntN ci n
	| ci >= (ord 'A') && ci <= (ord 'Z') = keepAlphabet (ci + n) (ord 'Z')
	| ci >= (ord 'a') && ci <= (ord 'z') = keepAlphabet (ci + n) (ord 'z')
	| otherwise = ci

rotCharN c n = chr (rotIntN (ord c) n)

rotN [] _ = []
rotN (c:cs) n = (rotCharN c n) : (rotN cs n)

rot13 cs = rotN cs 13
