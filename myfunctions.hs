
doubleMe x = x + x

doubleSmallerNumber x = if x > 100
then x
else x*2

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _          = []
zipWith' _ _ []          = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys


chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
   | even n = n : chain (n `div` 2)
   | odd n = n : chain (n*3 + 1)


doSomething x = if x > 0
                 then Nothing
                 else Just 10

data Point = Point Int Int

addPoint :: Point -> Point -> Point
(Point a b) `addPoint` (Point x y) = Point (a+b) (x+y)

demo = a `addPoint` b
   where
      a = Point 1 2
      b = Point 2 3
