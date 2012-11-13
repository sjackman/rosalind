import qualified Data.ByteString as B

main :: IO ()
main = do
	t <- B.getLine
	q <- B.getLine
	putStrLn . unwords . map (show . (1+)) . B.findSubstrings q $ t