--module Fibo where
--fib :: Integer -> Integer
--fib 0 = 0
--fib 1 = 1
--fib n = fib (n-1) + fib (n+2)
-- Esto va en otro archivo
import Test.HUnit
import Fibo

run = runTestTT tests
tests = test ("caso base 0"~: (fib 0)~?=0,
              "caso base 1"~: (fib 1)~?=1,
              "caso n=2"~: (fib 2)~?=1)
