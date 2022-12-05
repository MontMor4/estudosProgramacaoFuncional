inverteArray :: [Int] -> [Int]  
inverteArray [] = []  
inverteArray (a:x) = inverteArray x ++ [a]

palindromo :: [Int] -> Bool 
palindromo [] = True
palindromo (a:x) 
    | ((a:x) == inverteArray (a:x)) = True
    | otherwise = False