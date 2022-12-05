moveParaFinal :: Int -> [Int] -> [Int]
moveParaFinal _ [] = []
moveParaFinal a x = x ++ [a]

shift :: Int -> [Int] -> [Int]
shift 0 (a:x) = (a:x)
shift _ [] = []
shift n (a:x) = shift (n - 1) (moveParaFinal a x)