module Main where

import Test.HUnit
import Test.HUnit.Approx ( assertApproxEqual )
import Exercicio08 (distanciaManhattan)

testDistanciaManhattan :: Test
testDistanciaManhattan = TestList [
    -- O primeiro argumento de 'assertApproxEqual' eh a mensagem do teste
    -- O segundo eh a tolerancia (um numero pequeno)
    -- O terceiro eh o valor esperado
    -- O quarto eh o valor obtido da sua funcao
    "teste 1: vetores de exemplo" ~: assertApproxEqual "" 0.000001 3.0 (distanciaManhattan [1.0, 2.0] [3.0, 1.0]),
    "teste 2: vetores de tamanhos diferentes" ~: assertApproxEqual "" 0.000001 0.0 (distanciaManhattan [1.0, 2.0, 3.0] [1.0, 2.0]),
    "teste 3: vetores com 1 elemento" ~: assertApproxEqual "" 0.000001 3.0 (distanciaManhattan [5.0] [2.0]),
    "teste 4: vetores vazios" ~: assertApproxEqual "" 0.000001 0.0 (distanciaManhattan [] []),
    "teste 5: valores negativos" ~: assertApproxEqual "" 0.000001 3.0 (distanciaManhattan [(-1.0), 5.0] [(-2.0), 3.0])
    ]

main :: IO ()
main = runTestTT testDistanciaManhattan >>= print
