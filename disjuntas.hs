comparaElemento :: Int -> [Int] -> Bool
comparaElemento _ [] = False
comparaElemento n (a:x)
    | (a == n) = True
    | otherwise = comparaElemento n x 

disjuntas:: [Int] -> [Int] -> Bool
disjuntas [] [] = False
disjuntas n [] = True
disjuntas [] n = True
disjuntas (a:x) n
  | ((comparaElemento a n) == True)  = False
  | otherwise               = disjuntas x n