module Fizzbuzz.Main
    ( run
    ) where

import Control.Monad (mapM_)



run :: IO ()
run = fizzbuzz 100


fizzbuzz :: Int -> IO ()
fizzbuzz max = do
    mapM_ (putStrLn . guard) [1..max]


guard :: Int -> String
guard num =
  case (num `mod` 3, num `mod` 5) of
      (0, 0) ->
          "FizzBuzz"
      (0, _) ->
          "Fizz"
      (_, 0) ->
          "Buzz"
      _ ->
          show num
