import Data.List

-- recursive with accumulator

eratostheneSieve n = f [2..n] [] where
  f (x:xs) acc
    | xs == []  = (acc++[x])
    | otherwise = f (xs \\ [x+x, x+x+x..n]) (acc++[x])
