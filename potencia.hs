potencia :: Int -> Int -> Int   --declaração da função potencia(tipo das entradas e saídas)
potencia x n                    --definição da função(variaveis de entrada)
 | n < 0    = error "Expoente menor que 0."
 | n == 0   = 1
 | n == 1   = x
 | n > 0    = x * potencia x (n - 1)