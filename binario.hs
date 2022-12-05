binario :: Int -> [Int]
binario n
    | (n < 2)  = [n]
    | otherwise = binario (n `div` 2) ++ [n `mod` 2]