comparaElemento :: Int -> [Int] -> Bool
comparaElemento _ [] = False
comparaElemento n (a:x)
    | (a == n)  = True
    | otherwise = comparaElemento n x 

distintos :: [Int] -> Bool
distintos [] = True
distintos (a:x)
    | ((comparaElemento a x) == True)   = False
    | otherwise                         = distintos x
