replace :: (Eq a) => a -> a -> a -> a
replace a b x = if x == a then b else x

main :: IO ()
main = do
	s <- getContents
	putStr . map (replace 'T' 'U') $ s
