module Hello where
	type Point = (Double, Double)
	incircle :: [Point] -> [Point]
	incircle = filter(\(x,y) -> sqrt(x*x + y*y)<=2.0)

	main = print $ incircle [(0, 0), (2, -2), (1, -1), (1.9, 0.1), (10, 1)]
