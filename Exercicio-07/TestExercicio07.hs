module Main where

import Test.HUnit
import Test.HUnit.Approx ( assertApproxEqual )
import Exercicio07 (similaridade)

testSimilaridade :: Test
testSimilaridade = TestList [
    -- O primeiro argumento de 'assertApproxEqual' eh a mensagem do teste
    -- O segundo eh a tolerancia (um numero pequeno)
    -- O terceiro eh o valor esperado
    -- O quarto eh o valor obtido da sua funcao
    "teste 1: vetores de exemplo" ~: assertApproxEqual "" 0.000001 (0.63 / (0.9899494936611666 * 0.6708203932499369)) (similaridade [0.1, 0.4, 0.9] [0.2, 0.4, 0.5]),
    "teste 2: vetores identicos" ~: assertApproxEqual "" 0.000001 1.0 (similaridade [1.0, 1.0, 1.0] [1.0, 1.0, 1.0]),
    "teste 3: vetores ortogonais (produto interno 0)" ~: assertApproxEqual "" 0.000001 0.0 (similaridade [1.0, 0.0] [0.0, 1.0]),
    "teste 4: um vetor vazio" ~: assertApproxEqual "" 0.000001 0.0 (similaridade [1.0, 2.0] []),
    "teste 5: ambos os vetores vazios" ~: assertApproxEqual "" 0.000001 0.0 (similaridade [] [])
    ]

main :: IO ()
main = runTestTT testSimilaridade >>= print
