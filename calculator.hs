module Calculator where
	import Data.Char
	
	data Operator = Plus | Minus | Times | Div
			deriving(Show, Eq)

	data Token = TokOp Operator
								| TokIdent String
								| TokeNum Int
			deriving(Show,Eq)

	data Expression

	operator :: Char -> Operator
	operator c	| c == '+' = Plus  
							| c == '-' = Minus
							| c == '*' = Times
							| c == '/' = Div

	showContent :: Token -> String
	showContent (TokOp op) = opToStr op
	showContent (TokIdent str)  = str
	showContent(TokeNum i) = show i

	tokenize :: String -> [Token]
	tokenize [] = []
	tokenize (x:xs) | elem x "+-*/" = TokOp (operator x) : tokenize xs
									| isDigit x  = TokeNum (digitToInt x) : tokenize xs
									| isAlpha x = TokIdent [x] : tokenize xs
									| isSpace x = tokenize xs
									| otherwise = error $ "Can not tokenize given string" ++[x]




	parse :: [Token] -> Expression
	parse = undefined

	evaluate :: Expression -> Double
	evaluate = undefined

	opToStr :: Operator -> String
	opToStr Plus = "+"
	opToStr Minus = "-"
	opToStr Times = "*"
	opToStr Div = "/"

	token :: Token
	token = TokIdent "x"

	main = print $ tokenize " 1 + 4 / x"