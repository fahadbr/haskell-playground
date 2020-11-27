module Main (main) where

main = do interact processByLine
          where processByLine = unlines . map reverseWords . lines
                reverseWords = unwords . map reverse . words

