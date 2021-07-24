import Data.Char

-- NOTE anonymous function using a lambda expression.
applyTwice fn = fn . fn

-- NOTE this is how a lambda would be used applyTwice (\x -> x * 2) 8
curryISC fn = \i s -> fn (i, s)

double x = 2 * x

applyUntil cond fn value
  | cond value == True = value
  | otherwise = applyUntil cond fn (fn value)

greatestOddDivisor = applyUntil (\number -> mod number 2 == 1) (\number -> div number 2)

smallestNatThat number = applyUntil number (\num -> num + 1) 1

smallestNumberThatIsChar = smallestNatThat (\num -> isLetter (chr num))

f = \n -> n ^ 2

_map = (\x -> x + 3)

putc = map (\xs -> 'c' : xs) ["apples", "oranges", "mangos"]