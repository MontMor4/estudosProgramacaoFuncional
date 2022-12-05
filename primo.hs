primo :: Int -> Bool
primo n
    | (n <= 1)  = False
    | (todosDivisores n == []) = True
    | otherwise = False
    where
        todosDivisores n = [x | x <- [2 .. n - 1], n `mod` x == 0]
        -- lista de compreensão: x, tal que x é cada elemento de 2 até n-1, 
        -- onde o resto da divisão de n por x é igual a 0
