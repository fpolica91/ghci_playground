applyTwice :: (Int -> Int) -> Int -> Int
applyTwice fn number = fn (fn number)

double number = number * 2

quadruple = applyTwice double

timesSixteen = applyTwice quadruple