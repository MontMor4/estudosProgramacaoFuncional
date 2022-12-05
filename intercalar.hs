intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar n [] = n
intercalar [] n = n
intercalar (a:x) (b:y)
    | (a < b) = [a] ++ (intercalar x (b:y))
    | otherwise = [b] ++ (intercalar y (a:x))