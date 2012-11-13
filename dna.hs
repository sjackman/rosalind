count :: (Eq a) => a -> [a] -> Int
count x = length . filter (== x)

main :: IO ()
main = do
	s <- getContents
	putStr $ show $ count 'A' s
	putChar ' '
	putStr $ show $ count 'C' s
	putChar ' '
	putStr $ show $ count 'G' s
	putChar ' '
	putStr $ show $ count 'T' s
	putChar '\n'
