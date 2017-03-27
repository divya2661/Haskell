module Test where
	
	myGreeting = "Hello " ++ " World"
	hello = "Hello"
	world = "World"

	main :: IO ()
	main = do
		putStrLn myGreeting
		putStrLn secondGreeting
		where secondGreeting = concat [hello , "  ", world]