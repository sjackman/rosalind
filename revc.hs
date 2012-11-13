complement :: Char -> Char
complement x = case x of
	'A' -> 'T'
	'C' -> 'G'
	'G' -> 'C'
	'T' -> 'A'

reverseComplement :: String -> String
reverseComplement = reverse . map complement

main :: IO ()
main = do
	s <- getLine
	putStrLn . reverseComplement $ s
