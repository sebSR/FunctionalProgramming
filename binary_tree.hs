-- A BINARY TREE STRUCTURE

data Tree a = Leaf a | Node (Tree a) a (Tree a)

-------------------------------------------------------------------------------------

-- Tree as an instance of the class Foldable: foldr
-- example of use
-- foldr (+) 0 (Node (Leaf 2) 1 (Leaf (-3)))

instance Foldable Tree where
    foldr f z (Leaf x) = f x z
    foldr f z (Node left root right) = foldr f (f root (foldr f z right)) left

-------------------------------------------------------------------------------------


-- whether a given x is an element of a tree
-- example of use
-- ifContain 5 (Node (Leaf 3) 4 (Leaf 4))

ifContain x (Leaf a)               = if (x == a) then True else False
ifContain x (Node left root right) = (x == root) || (ifContain x left) || (ifContain x right)
