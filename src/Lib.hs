module Lib
  ( someFunc,
  )
where

import Data.Char

someFunc :: String -> IO ()
someFunc name = putStrLn ("hello" ++ " " ++ name)

newHead :: [t] -> t
newHead [] = error "empty list"
newHead (x : xs) = x

newTail :: [t] -> [t]
newTail [] = error "empty list"
newTail (x : xs) = xs

simpleReduce :: Num b => [b] -> b
-- foldr combines each list item with the accumulator in this case 0
simpleReduce [a, b, c] = foldr (+) 0 [a, b, c]

buildReducer [a, b, c] accumulator = foldr (+) accumulator [a, b, c]

encode x = ord x

-- simplified to encode = ord

decode x = chr x

-- simplified to decode = chr

decodeModified :: Char -> Int -> Char
decodeModified letter number = decode (encode letter + number)

interpolate :: [Char] -> [Char] -> [Char]
interpolate str1 str2 = str1 ++ " " ++ str2

to_string :: Show a => a -> String
to_string num = show num

-- must pass type of read ::Int ::Double
to_integer str = read str