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
