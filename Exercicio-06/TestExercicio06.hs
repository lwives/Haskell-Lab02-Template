module Main where

import Test.HUnit
import Test.HUnit.Approx ( assertApproxEqual )
import Exercicio06 (produtoInterno)

testProdutoInterno :: Test
testProdutoInterno = TestList [
    -- O primeiro argumento de 'assertApproxEqual' e a mensagem do teste
    -- O segundo e a tolerancia (um numero pequeno)
    -- O terceiro e o valor esperado
    -- O quarto e o valor obtido da sua funcao
    "teste 1: vetor do exemplo" ~: assertApproxEqual "" 0.000001 0.63 (produtoInterno [0.1, 0.4, 0.9] [0.2, 0.4, 0.5]),
    "teste 2: vetores de tamanhos diferentes" ~: assertApproxEqual "" 0.000001 0.1 (produtoInterno [0.5, 0.5] [0.1, 0.1, 0.1]),
    "teste 3: vetores com 1 elemento" ~: assertApproxEqual "" 0.000001 0.2 (produtoInterno [0.5] [0.4]),
    "teste 4: vetores vazios" ~: assertApproxEqual "" 0.000001 0.0 (produtoInterno [] []),
    "teste 5: vetor vazio e nao vazio" ~: assertApproxEqual "" 0.000001 0.0 (produtoInterno [1, 2] [])
    ]

main :: IO ()
main = runTestTT testProdutoInterno >>= print
