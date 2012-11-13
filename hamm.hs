hammChar :: Char -> Char -> Int
hammChar a b = if a == b then 0 else 1

hamm :: String -> String -> Int
hamm a b = sum . map (uncurry hammChar) $ zip a b

main :: IO ()
main = do
	a <- getLine
	b <- getLine
	print $ hamm a b
