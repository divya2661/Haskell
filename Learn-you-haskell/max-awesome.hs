maximum' :: (Ord a) => [a] -> a
maximum' [] = error "List is empty"
maximum' [x] = x
maximum' (x:xs)
	| x > maxTail = x
	| otherwise  = maxTail
	where maxTail = maximum' xs

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
	| n <= 0  = []
	| otherwise = x:replicate' (n-1) x

take' :: (Num i, Ord i) => i -> [a] ->[a]
take' n _ | n<=0 = []
take' _ [] = []
take' n (x:xs) = x:take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
