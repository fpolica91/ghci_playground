-- function_name :: argument_type -> return_type
sayTwice :: [a] -> [a]
sayTwice s = s ++ s

percentage num d = round (num * d)

double :: Num a => a -> a
double x = x + x

showBool True = "Correct"
showBool False = "Wrong"

sign n
  | n > 0 = 1
  | n < 0 = -1
  | n == 0 = 0

isZero n
  | n == 0 = True
  | n /= 0 = False

isPalindrome :: Eq a => [a] -> Bool
isPalindrome s
  | reverse s == s = True
  | otherwise = False

fizzbuzz i
  | i `mod` 15 == 0 = "fizzbuzz"
  | i `mod` 3 == 0 = "fizz"
  | i `mod` 5 == 0 = "buzz"
  | otherwise = show i
