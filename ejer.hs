todoMenor :: (Float, Float) -> (Float, Float) -> Bool
todoMenor (a,b) (c,d) | a < c && b < d = True
                      | otherwise = False

{-
    fst: es para llamar al primero de la tupla(first)
    snd: es para llamar al segundo de la tupla(second)
-}

todoMenor2 :: (Float, Float) -> (Float, Float) -> Bool
todoMenor2 x y | (fst x < fst y) && (snd x < snd y) = True
               | otherwise = False



primerPar :: (Integer, Integer, Integer) -> Integer
primerPar (x,y,z) | mod x 2 == 0 = 0
                  | mod y 2 == 0 = 1
                  | mod z 2 == 0 = 2
                  | otherwise = 4



fibo :: Integer -> Integer
fibo n | n == 0 = 0
       | n == 1 = 1
       | n >=2 = (fibo(n-1) + fibo(n-2))




parteEntera :: Float -> Integer
parteEntera x | x < 1 && x >= 0 = 0
              | x > -1 && x <= 0 = -1
              | x >= 1 = 1 + parteEntera (x-1)
              | otherwise = (-1) + parteEntera(x+1)




{-
    mod 819 10 = 9
    mod 313 10 = 3

    div 800 = 80
    div 322 = 32
-}
todosIguales :: Integer -> Bool
todosIguales n | n < 10 = True
               |otherwise = (ultimoDigito n == ultimoDigito(sacarUltimo n))
                && todosIguales(sacarUltimo n)

ultimoDigito :: Integer -> Integer
ultimoDigito n = mod n 10

sacarUltimo :: Integer -> Integer
ultimoDigito n = div n 10


cantDigitos :: Integer -> Integer
cantDigitos n | n < 10 = 1
              | otherwise = 1 + cantDigitos(sacarUltimo n)
              where sacarUltimo n = div n 10

iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i | i == cantDigitos n = ultimoDigito n
                 | otherwise = iesimoDigito (sacarUltimo n) i
                 where sacarUltimo n = div n 10
                        ultimoDigito n = mod n 10

                          -- Guia 4 ejer 13 --

{- f(n,m) sumatoria de i=1 a n, sumatoria de j=1 a n con i**j -}

{-
sumaInterna :: Integer -> Integer -> Integer
sumaInterna 

ejer13 :: Integer -> Integer -> Integer
ejer13 n m | n == 0 = 0 
           | otherwise = ejer13(n-1, m) + 
-}




menorDivisor :: Integer -> Integer
menorDivisor x | x == 1 = 1
               | otherwise = divisor x 2

divisor :: Integer -> Integer -> Integer
divisor x y | x == y = x
            | mod x y == 0 = y
            | otherwise = divisor x (y+1)



{-
esSumadePrimos :: Integer -> Bool
esSumadePrimos n = restaPrimos n 2

restaPrimos:: Integer -> Integer -> Bool
restaPrimos n i | n == 0 = True
                | n <= 0 = False
                | otherwise = restaPrimos (n - primos i) (i + 1)

primos :: Integer -> Integer
primos n | menorDivisor n /= n = 0
         | otherwise n 

-}

{-

                LISTAS

head: saca el primer elemento
tail: lista sin el primer elemento
(x:xs): se divide entre el head == x y el tail == xs
0:[1,2,3]: concatena -> [0,1,2,3]
[1,2,3]++[0]: concatena -> [1,2,3,0]
(x:y:z:xs): se puede hacer pero puede dar indefinido

-}

longitud :: [t] -> Integer
longitud [] = 0
longitud (_:tail) = 1 + longitud tail


{-
Eq(t): familia de tipos las cuales pueden tener una igualdad
-}

comparar :: t -> [s] -> Bool
comparar - [] = False
comparar n (x:xs) | n == s = True
                  | otherwise = comparar n xs

hayRepetidos :: (Eq t) -> [t] -> Bool
hayRepetidos [] = False
hayRepetidos (x:xs) = comparar x xs || hayRepetidos xs
{-hayRepetidos s | s == [] = False
               | comparar (head s, tail s) || hayRepetidos (tail s)-}



maximo :: [Integer] -> Integer
maximo []
maximo [x] = x
maximo (x:y:s) | x >= y = maximo(x:s)
               | x < y = maximo(y:s)

                        
