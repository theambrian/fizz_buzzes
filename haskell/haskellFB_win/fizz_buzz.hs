--runs through a set of numbers
--and prints Fizz if divisible by 3
--Buzz if divible by 5 and FizzBuzz when divisble by both
--run in command line

fbAppendValue :: Int -> String
fbAppendValue x
    | (x `mod` 3 == 0) && (x `mod` 5 == 0) = "FizzBuzz"
    | x `mod` 3 == 0 = "Fizz"
    | x `mod` 5 == 0 =  "Buzz"
    |otherwise = show x

fizzBuzz :: String -> [String]
fizzBuzz x = map(fbAppendValue) inputList
    where inputList = [1..(read(x) :: Int)]

main :: IO ()
main = do
    putStrLn "Hello. Please input the max number for your fizzbuzz"
    numberToFB <- getLine
    mapM_ print (fizzBuzz numberToFB)
