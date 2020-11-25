module Main (main) where

main :: IO ()
main = do
       putStrLn "write something.."
       name <- getLine
       putStrLn ("this is what you wrote '" ++ name ++ "'")
