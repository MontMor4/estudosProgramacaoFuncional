somaElementos :: [Int] -> Int
somaElementos [] = 0
somaElementos (a:x) = somaElementos x + a

apagaUltimo :: [Int] -> [Int]
apagaUltimo [n] = []
apagaUltimo (a:x) = [a] ++ apagaUltimo x

somaParciais :: [Int] -> [Int]
somaParciais [] = []
somaParciais n = somaParciais (apagaUltimo n) ++ [somaElementos n]