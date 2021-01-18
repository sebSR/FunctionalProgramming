
-- fibonacci - linear time (tail recursion)
fibonacciTail n = f n 0 1 where
  f n penult latest
    | n == 0 = penult
    | n == 1 = latest
    | otherwise = f (n-1) (latest) (penult+latest)
