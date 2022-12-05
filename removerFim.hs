apagaUltimo :: [Int] -> [Int]
apagaUltimo [n] = []
apagaUltimo (a:x) = [a] ++ apagaUltimo x

removerFim :: Int -> [Int] -> [Int]
removerFim 0 (a:x) = (a:x)
removerFim _ [] = []
removerFim n (a:x) = removerFim (n - 1) (apagaUltimo (a:x))