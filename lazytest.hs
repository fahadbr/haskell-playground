import Debug.Trace

main :: IO ()
main = do
  print lazyf
  print lazyf


lazyf = trace "adding" (1 + 1)
