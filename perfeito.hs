somaElementos :: [Int] -> Int
somaElementos [] = 0
somaElementos (a:x) = somaElementos x + a

perfeito :: Int -> Bool
perfeito 0 = False
perfeito n
    | ((somaElementos (fatores n)) == n) = True
    | otherwise = False
    where
        fatores n = [ x | x <- [1 .. n - 1], ((n `mod` x) == 0)]
        -- lista de compreensão: x, tal que x é cada elemento de 1 até n-1, 
        -- onde o resto da divisão de n por x é igual a 0
