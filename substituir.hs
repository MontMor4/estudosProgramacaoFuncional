substituir :: Int -> Int -> [Int] -> [Int]
substituir a b [] = []
substituir a b (n:x)
    | (a /= n)  = [n] ++ substituir a b x
    | otherwise = [b] ++ substituir a b x