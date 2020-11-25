
doubleMe x = x + x

doubleSmallerNumber x = if x > 100
then x
else x*2

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys


chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
   | even n = n : chain (n `div` 2)
   | odd n = n : chain (n*3 + 1)
