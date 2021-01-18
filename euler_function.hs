-- from definition
eulerFunction n = length [x | x <- [1..n], gcd x n == 1]

-- Gauss sum of the Euler totient function
-- -> Divisor sum property: divisorsSum N is equal to N

divisors n = [x | x <- [1..n], mod n x == 0]

divisorSum n = sum [eulerFunction x | x <- divisors n]
