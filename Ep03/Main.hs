getCommand "greet"  = "Greetings!"
getCommand "depart" = "Farewell!"
getCommand _        = "Please speak English!"

trd (_,_,a) = a

dropWhile' _ [] = []
dropWhile' bool xxs@(x:xs) =
  if bool x then dropWhile' bool xs else xxs

-- f 1 : f 2 : f 3 : f 4 : f 5 : f 6 : f 7 : f 8 : f 9 : f 10 : []
map' _ [] = []
map' f (x:xs) = f x : map' f xs

last5 [] = []
last5 xxs@(_:xs)
  | length xxs <= 5 = xxs
  | otherwise       = last5 xs