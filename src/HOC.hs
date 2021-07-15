applyTwice :: (Int -> Int) -> Int -> Int
applyTwice fn number = fn (fn number)

double number = number * 2

next x = x + 1

quadruple = applyTwice double

timesSixteen = applyTwice quadruple

-- NOTE  composition operator ., which combines two functions @compose
compose = double . next

composedQuad = double . double

curryISC fn i s = fn (i, s)

uncurryISC fn (i, s) = fn i s

-- NOTE takes a function taking integer and string arguments
-- returns a function taking string and integer arguments.
flipISC fn s i = fn i s
