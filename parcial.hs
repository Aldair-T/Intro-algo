module Fibo where

hayRepetidos :: [(String, String)] -> Bool
hayRepetidos [] = False
hayRepetidos [x] = False
hayRepetidos (x:y:s) | fst x == snd x = True 
                     | (fst x == fst y) || (fst x == snd y) && (snd x == fst y) || (snd x == snd y) = True
                     | otherwise = hayRepetidos(x:s)

relacionesValidas :: [(String, String)]-> Bool
relacionesValidas [] = True
relacionesValidas x | hayRepetidos x == True = False
                    | otherwise = relacionesValidas (tail x)

<--
import Test.HUnit
import Fibo

run = runTestTT tests
tests = test ("caso base 0"~: (relacionesValidas [("al","va"),("va","al"),("re","to")])~?=False)
-->
