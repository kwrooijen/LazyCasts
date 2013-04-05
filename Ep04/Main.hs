--      (x:_)  x
head :: [a] -> a
head (x:_) = x
head _ = error "head"

headInt :: [Int] -> Int
headInt (x:_) = x
headInt _ = error "headInt"

callFunction :: Int
callFunction = headInt [1]

max' :: (Ord a) => a -> a -> a
max' a b = if a > b then a else b