-- via foldr and foldl

mapFoldr f = foldr (\x acc -> (f x):acc) []
mapFoldl f = foldl (\acc x -> acc ++ [f x]) []
