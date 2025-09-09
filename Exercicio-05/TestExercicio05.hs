module Main where

import Test.HUnit
import Test.HUnit.Approx ( assertApproxEqual )
import Exercicio05 (norma)

testNorma :: Test
testNorma = TestList [
    "teste 1: vetor com 4 elementos" ~: assertApproxEqual "Verifica o vetor de exemplo" 0.000001 0.547722557505 (norma [0.1, 0.2, 0.3, 0.4]),
    "teste 2: vetor de um elemento" ~: assertApproxEqual "Verifica um vetor unitario" 0.000001 0.5 (norma [0.5]),
    "teste 3: vetor com valores zero" ~: assertApproxEqual "Verifica o vetor de zeros" 0.000001 0.0 (norma [0.0, 0.0, 0.0]),
    "teste 4: vetor com um unico valor nao zero" ~: assertApproxEqual "Verifica um vetor com um so valor" 0.000001 0.8 (norma [0.0, 0.8, 0.0]),
    "teste 5: vetor vazio" ~: assertApproxEqual "Verifica o vetor vazio" 0.000001 0.0 (norma [])
    ]   

main :: IO ()
main = runTestTT testNorma >>= print
