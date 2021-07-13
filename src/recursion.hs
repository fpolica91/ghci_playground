square 0 = 1
square n = 2 * square (n -1)

-- square 3 = 2 * square(3 -1)
-- square 3 =  2 * square(2)
-- square 3 = 2 *  2 * square(2 -1)
-- square 3 = 2 * 2 square(1)
-- square 3 = 2 * 2 * 2 (1)

-- NOTE identify the base case

factorial 1 = 1
factorial n = n * factorial (n -1)

sumNumbers a b
  | a == b = a
  | otherwise = a + sumNumbers (a + 1) b

sayAgain word 0 = ""
sayAgain word times = word ++ sayAgain word (times -1)